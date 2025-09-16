import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { IconCheck, IconUserOff } from "@tabler/icons-react";

// const users = [
//   {
//     name: "Harry Green",
//     job: "QA Engineer",
//     isAvailable: false,
//   },
//   {
//     name: "Trudy Torres",
//     job: "Project Manager",
//     isAvailable: true,
//   },
//   {
//     name: "Alice Ling",
//     job: "Software Engineer",
//     isAvailable: false,
//   },
// ];

export default async function UserList({ params }) {

  const supabase = getSupabaseCookiesUtilClient()
  const { data: users, error } = await supabase.rpc("get_tenant_userlist", {
    tenant_id: params.tenant
  })

  return (
    <table>
      <thead>
        <tr>
          <th>Name</th>
          <th>Job</th>
        </tr>
      </thead>
      <tbody>
        {users?.map((user) => (
          <tr key={user.name}>
            <td style={{ color: !user.isavailable ? "red" : undefined }}>
              {user.isavailable ? <IconCheck /> : <IconUserOff />} {user.full_name}
            </td>
            <td>{user.job_title}</td>
          </tr>
        ))}
      </tbody>
    </table>
  );
}
