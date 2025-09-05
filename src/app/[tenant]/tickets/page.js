import { Suspense } from "react";
import { TicketList } from "./TicketList";

export default function TicketListPage({ params, searchParams }) {

  return (
    <>
      <h2>Ticket List</h2>
      <Suspense
        fallback={<div aria-busy="true">Loading tickets...</div>}
        key={JSON.stringify(searchParams)}
      >
        <TicketList tenant={params.tenant} searchParams={searchParams} />
      </Suspense>
    </>
  )
}