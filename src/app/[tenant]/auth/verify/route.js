import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { NextResponse } from "next/server";
import { buildUrl } from "@/utils/url-helpers";

export async function GET(request, { params }) {
  const { searchParams } = new URL(request.url);
  const hashed_token = searchParams.get("hashed_token");
  const isRecovery = searchParams.get("type") === "recovery";

  const supabase = getSupabaseCookiesUtilClient();

  let verifyType = "magiclink";
  if (isRecovery) verifyType = "recovery";

  const { error } = await supabase.auth.verifyOtp({
    type: verifyType,
    token_hash: hashed_token,
  });

  if (error) {
    return NextResponse.redirect(
      // new URL("/error?type=invalid_magiclink", request.url),
      buildUrl("/error?type=invalid_magiclink", params.tenant, request)
    );
    
  } else {
    if (isRecovery) {
      return NextResponse.redirect(
        // new URL("/tickets/change-password", request.url),
        buildUrl("/tickets/change-password", params.tenant, request)
      );
    } else {
      return NextResponse.redirect(
        // new URL("/tickets", request.url)
        buildUrl("/tickets", params.tenant, request)
      );
    }
  }
}