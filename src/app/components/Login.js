"use client";

import { getSupabaseBrowserClient } from "../../supabase-utils/browserClient";
import Link from "next/link";
import { useRef } from "react";
import { useRouter } from "next/navigation";

export const Login = ({ isPasswordLogin }) => {

  const emailInputRef = useRef(null)
  const passwordInputRef = useRef(null)

  const supabase = getSupabaseBrowserClient()

  const router = useRouter()

  return (
    <form
      onSubmit={(event) => {
        event.preventDefault()
        if (isPasswordLogin) {
          supabase.auth.signInWithPassword(
            {
              email: emailInputRef.current.value,
              password: passwordInputRef.current.value
            }
          )
          .then((result) => {
            if (result.data?.user) {
              router.push("/tickets")
            } else {
              alert("Could not sign in")
            }
          })


        } else {
          alert("user wants to login with magic link")
        }
      }}
    >
      <article style={{ maxWidth: "420px", margin: "auto" }}>
        <header>Login</header>

        <fieldset>
          <label htmlFor="email">Email</label>
          <input 
            type="email"
            id="email"
            name="email"
            ref={emailInputRef}
            required
          />
        </fieldset>

        {
          isPasswordLogin && (
            <label htmlFor="password">
              Password{"  "}
            <input
              type="password"
              id="password"
              name="password"
              ref={passwordInputRef}
            />
            </label>
          )
        }

        <p>
          {
            isPasswordLogin ? (
              <Link
                href={{pathname: "/", query: { magicLink: "yes" } }}
              >
                Go to Magic Link Login
              </Link>
            ) : (
              <Link
                href={{pathname: "/", query: { magicLink: "no" } }}
              >
                Go to Password Login
              </Link>
            )
          }
        </p>

        <button type="submit">
          Sign in with
          {isPasswordLogin ? " Password" : " Magic Link"}
        </button>

      </article>
    </form>
  )
}