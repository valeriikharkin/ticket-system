import { NextResponse } from "next/server";
import { getSupabaseReqResClient } from "./supabase-utils/reqResClient";
import { buildUrl } from "./utils/url-helpers";

// import { TENANT_MAP } from "./tenant-map";
import { getSupabaseAdminClient } from "./supabase-utils/adminClient";
import { getHostnameAndPort } from "./utils/url-helpers";

export async function middleware(req) {
  const { supabase, response } = getSupabaseReqResClient({ request: req });
  const session = await supabase.auth.getSession();

  const [hostname] = getHostnameAndPort(req)

  const supabaseAdmin = getSupabaseAdminClient()
  const {data: tenantData, error: tenantError} = await supabaseAdmin
        .from("tenants")
        .select("*")
        .eq("domain", hostname)
        .single()

  if (tenantError) {
    return NextResponse.rewrite(new URL("/not-found", req.url))
  }

  // if (hostname in TENANT_MAP === false) {
  //   return NextResponse.rewrite(new URL("/not-found", req.url))
  // } 

  const requestedPath = req.nextUrl.pathname;
  const sessionUser = session.data?.session?.user;

  const tenant = tenantData.id
  const applicationPath = requestedPath;

  if (!/[a-z0-9-_]+/.test(tenant)) {
    return NextResponse.rewrite(new URL("/not-found", req.url));
  }

  if (applicationPath.startsWith("/tickets")) {
    if (!sessionUser) {
      return NextResponse.redirect(buildUrl('/', tenant, req));
    }
    else if (!sessionUser.app_metadata?.tenants.includes(tenant)) {
      return NextResponse.rewrite(new URL("/not-found", req.url))
    }
  } else if (applicationPath === "/") {
    if (sessionUser) {
      return NextResponse.redirect(buildUrl("/tickets", tenant, req));
    }
  }

  const rewrittenResponse = NextResponse.rewrite(
    new URL(`/${tenant}${applicationPath}${req.nextUrl.search}`, req.url)
  );

  const cookiesToSet = response.value.cookies.getAll();
  cookiesToSet.forEach(({ name, value, options }) => {
    rewrittenResponse.cookies.set(name, value, options);
  });
  
  return rewrittenResponse;
}

export const config = {
  matcher: ["/((?!.*\\.).*)"],
};

