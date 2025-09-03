// export function urlPath(applicationPath, tenant) {
//   return `${tenant}${applicationPath}`
// }

// export function buildUrl(applicationPath, tenant, request) {
//   return new URL(urlPath(applicationPath, tenant), request.url)
// }

export function urlPath(applicationPath, tenant) {
  // Ensure the path always starts with a slash
  const path = applicationPath.startsWith('/') ? applicationPath : `/${applicationPath}`;
  // return `${tenant}${path}`;
  return applicationPath;
}

export function buildUrl(applicationPath, tenant, request) {
  // Get the origin (e.g., http://localhost:3000) from the request URL
  // const origin = new URL(request.url).origin;
  // Construct the new path, ensuring it's relative to the origin
  // const path = `/${tenant}${applicationPath}`;
  // Use the origin as the base URL to construct the new URL
  // return new URL(path, origin);
  const [hostname, port] = getHostnameAndPort(request)

  const portSuffix = port && port != "443" ? `:${port}` : "";
  const { protocol } = request.nextUrl
  const tenantUrl = `${protocol}//${hostname}${portSuffix}`

  return new URL(urlPath(applicationPath, tenant), tenantUrl)
}

export function getHostnameAndPort(request) {
  const hostnameWithPort = request.headers.get('host')
  const [realHostname, port] = hostnameWithPort.split(":")

  let hostname
  if (process.env.OVERRIDE_TENANT_DOMAIN) {
    hostname = process.env.OVERRIDE_TENANT_DOMAIN
  } else {
    hostname = realHostname
  }

  return [realHostname, port]
  // return [hostname, port]
}