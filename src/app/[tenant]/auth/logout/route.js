import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { NextResponse } from "next/server";
import { buildUrl } from "@/utils/url-helpers";

export async function GET(request, { params }) {
  const supabase = getSupabaseCookiesUtilClient()
  await supabase.auth.signOut()
  return NextResponse.redirect(
    buildUrl("/", params.tenant, request)
  )
}