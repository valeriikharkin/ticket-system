import Link from "next/link";
import { urlPath } from "@/utils/url-helpers";
import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { TICKET_STATUS } from "@/utils/constants";

export async function TicketList({ tenant, searchParams }) {

  let page = 1
  if (
    Number.isInteger(Number(searchParams.page)) &&
    Number(searchParams.page) > 0
  ) {
    page = Number(searchParams.page)
  }
  const startingPoint = (page - 1) * 6
  
  const supabase = getSupabaseCookiesUtilClient()
  const { data: tickets, error } = await supabase
    .from("tickets")
    .select()
    .eq("tenant", tenant)
    .order("status", { ascending: true })
    .order("created_at", { ascending: false })
    .range(startingPoint, startingPoint + 5)
  
  const { count } = await supabase
    .from("tickets")
    .select("*", { count: "exact", head: true })
    .eq("tenant", tenant)

  const moreRows = count - page * 6 > 0

  return (
    <>
      <table>
        <thead>
          <tr>
            <th>No</th>
            <th>ID</th>
            <th></th>
            <th>Status</th>
          </tr>
        </thead>
        <tbody>
          {
            tickets.map((ticket, index) => (
              <tr key={ticket.id}>
                <td>{(page-1)*6 + index + 1}</td>
                <td>{ticket.id}</td>
                <td><Link href={urlPath(`/tickets/details/${ticket.id}`, tenant)}>{ticket.title}</Link></td>
                <td>{TICKET_STATUS[ticket.status]}</td>
              </tr>
            ))
          }
        </tbody>
      </table>

      <div style={{ display: "flex" }}>
        {page > 1 && (
          <Link role="button" href={{ query: { page: page - 1, r: Math.random() } }} style={{ marginRight: "10px" }}>Previous page</Link>
        )}
        {moreRows && (
          <Link role="button" href={{ query: { page: page + 1, r: Math.random() } }}>Next page</Link>
        )}
      </div>
    </>
  )
}