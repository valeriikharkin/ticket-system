import { NextResponse } from "next/server";
import { getSupabaseReqResClient } from "./supabase-utils/reqResClient";

export async function middleware(req) {
  
  const res = NextResponse.next()

  const { supabase, response } = getSupabaseReqResClient({ request: req })
  const session  = await supabase.auth.getSession()

  const requestedPath = req.nextUrl.pathname
  const sessionUser =  session.data?.session?.user

  let [tenant, ...restOfPath] = requestedPath.substr(1).split("/")
  const applicationPath = "/" + restOfPath.join("/")
  tenant = "packt"

  console.log('///', "requestedPath: " + requestedPath,"tenant: " + typeof tenant, applicationPath)

  // 1. Handle the root URL "/"
  if (requestedPath === "/") {
    if (sessionUser) {
      return NextResponse.redirect(new URL("/", req.url));
    }
    return response.value;
  }

  if ( !/[a-z0-9-_]+/.test(tenant) && tenant !== "" ) {
    return NextResponse.rewrite(new URL("/not-found", req.url));
  }

  if (applicationPath.startsWith("/tickets")) {
    if (!sessionUser) {
      return NextResponse.redirect(new URL(`/${tenant}/`, req.url))
    } else if (applicationPath === "/") {
      if (sessionUser) {
        return NextResponse.redirect(new URL(`/${tenant}/tickets`, req.url))
      }
    }
  }

  if (requestedPath === "/") {
    return NextResponse.redirect(new URL("/", req.url))
  }

  return response.value
}

export const config = {
  matcher: ["/((?!.*\\.).*)"],
};