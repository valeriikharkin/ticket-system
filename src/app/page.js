import { Login } from "./components/Login";

export default async function LoginPage({ searchParams }) {
  const { magicLink } = searchParams; // Destructure on a separate line
  const wantsMagicLink = magicLink === "yes";
  return <Login isPasswordLogin={!wantsMagicLink} />
}