/** @type {import('next').NextConfig} */

const nextConfig = {
  redirects: async () => [
    {
      source: "/logout",
      destination: "/auth/logout",
      permanent: true
    }
  ]
  // reactStrictMode: true,
  // redirects: async () => [
  //   {
  //     source: "/:tenant/logout",
  //     destination: "/:tenant/auth/logout",
  //     permanent: true
  //   }
  // ]
};

export default nextConfig;
