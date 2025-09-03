import { urlPath } from "@/utils/url-helpers"
import Link from "next/link"

export default function ErrorPage({ searchParams, params }) {
  const { type } = searchParams
  const knownErrors = ["login-failed", "magiclink", "register_mail_mismatch", "register_mail_exists", "register_unknown"]

  return (
    <div style={{ textAlign: "center" }}>
      <h1>Ooops!</h1>
      {type === "login-failed" && (
        <strong>Login was not successfull, sorry.</strong>
      )}
      {type === "magiclink" && (
        <strong>Could not send a magic link. Maybe you had a typo in your E-mail?</strong>
      )}
      {type === "invalid_magiclink" && (
        <strong>The magic link was invalid. Maybe it expired? Please request
        a new one.</strong>
      )}
      {type === "register_mail_mismatch" && (
        <strong>You are not legitmated to register an account with &nbsp;
          <u>{searchParams.email}</u>.</strong>
      )}
      {type === "register_mail_exists" && (
        <strong>There is already an account registered with &nbsp;
          <u>{searchParams.email}</u>.</strong>
      )}
      {type === "register_unknown" && (
        <strong>Sorry but an unknown error occurred when trying to create an account.</strong>
      )}


      {!knownErrors.includes(type) && (
        <strong>
          Something went wrong. Please try again or contact support.
        </strong>
      )}
      
      <br /><br />

      <Link role="button" href={urlPath('/', params.tenant)}>Go back.</Link>
    </div>
  )
}