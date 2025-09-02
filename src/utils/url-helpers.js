// export function urlPath(applicationPath, tenant) {
//   return `${tenant}${applicationPath}`
// }

// export function buildUrl(applicationPath, tenant, request) {
//   return new URL(urlPath(applicationPath, tenant), request.url)
// }

export function urlPath(applicationPath, tenant) {
  // Ensure the path always starts with a slash
  const path = applicationPath.startsWith('/') ? applicationPath : `/${applicationPath}`;
  return `${tenant}${path}`;
}

export function buildUrl(applicationPath, tenant, request) {
  // Get the origin (e.g., http://localhost:3000) from the request URL
  const origin = new URL(request.url).origin;
  
  // Construct the new path, ensuring it's relative to the origin
  const path = `/${tenant}${applicationPath}`;

  // Use the origin as the base URL to construct the new URL
  return new URL(path, origin);
}

