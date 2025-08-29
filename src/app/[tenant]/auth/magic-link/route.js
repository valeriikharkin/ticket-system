import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";
import nodemailer from "nodemailer";
import { NextResponse } from "next/server";
import { buildUrl } from "@/utils/url-helpers";

export async function POST(request, { params }) {
  const formData = await request.formData();
  const email = formData.get("email");
  const supabaseAdmin = getSupabaseAdminClient();
  const type = formData.get("type") === "recovery" ? "recovery" : "magiclink";

  const { data: linkData, error } = await supabaseAdmin.auth.admin.generateLink(
    {
      email,
      type,
    },
  );

  // if (error) {
  //   return NextResponse.redirect(
  //     new URL(`/error?type=${type}`, request.url),
  //     302,
  //   );
  // }

  if (error) {
    return NextResponse.redirect(
      buildUrl(`/error?type=${type}`, params.tenant, request),
      302,
    );
  }

  const { hashed_token } = linkData.properties;

  // const constructedLink = new URL(
  //   `/auth/verify?hashed_token=${hashed_token}&type=${type}`,
  //   request.url,
  // );
  const constructedLink = buildUrl(`/auth/verify?hashed_token=${hashed_token}&type=${type}`, params.tenant, request)

  const transporter = nodemailer.createTransport({
    host: "localhost",
    port: 54325,
  });

  const initialSentence =
    type === "recovery"
      ? "Hi there, you requested a password change!"
      : "Hi there, this is a custom magic link email!";
  const secondSentenceEnding = type === "recovery" ? "change it" : "log in";

  await transporter.sendMail({
    from: "Your Company <your@mail.whatever>",
    to: email,
    subject: "Magic Link",
    html: `
    <h1>${initialSentence}</h1>
    <p>Click <a href="${constructedLink.toString()}">here</a> to ${secondSentenceEnding}.</p>
    `,
  });

  // const thanksUrl = new URL(`/magic-thanks?type=${type}`, request.url); 
  const thanksUrl = buildUrl(`/magic-thanks?type=${type}`, params.tenant, request)
  return NextResponse.redirect(thanksUrl, 302);
}