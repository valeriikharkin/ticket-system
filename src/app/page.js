import { Login } from "./components/Login";

export default async function LoginPage({ searchParams }) {
  const wantsMagicLink = searchParams.magicLink === "yes";
  return <Login isPasswordLogin={!wantsMagicLink} />
}