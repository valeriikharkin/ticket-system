import TenantName from "./TenantName";
import Nav from "./Nav";

export default function TicketLayout(pageProps) {
  return (
    <>
      <section style={{ borderBottom: "1px solid gray" }}>

        {/* tenant name component goes here */}
        <TenantName tenantName={pageProps.params.tenant} />

        {/* navigation component goes here */}
        <Nav tenant={pageProps.params.tenant} />

      </section>
      
      <section>{pageProps.children}</section>
    </>
  )
}