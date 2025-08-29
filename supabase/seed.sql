SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', '627797bf-8ab3-47fd-ba0b-859e76ca4c57', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"provider":"email","user_email":"brafifaabraka@gmail.com","user_id":"abccdcb7-037a-48b4-b8f3-814bf097ca56","user_phone":""}}', '2025-08-28 13:33:04.324372+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bd113a14-0470-4d4c-a684-81ae6c5f31bb', '{"action":"login","actor_id":"abccdcb7-037a-48b4-b8f3-814bf097ca56","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-08-28 13:33:15.103208+00', ''),
	('00000000-0000-0000-0000-000000000000', '854850ac-ffbf-49b3-a886-8a1da2cb4cf3', '{"action":"logout","actor_id":"abccdcb7-037a-48b4-b8f3-814bf097ca56","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-28 13:33:19.9407+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd38a31f4-3180-47c1-b0ef-f59be0b92508', '{"action":"user_recovery_requested","actor_id":"abccdcb7-037a-48b4-b8f3-814bf097ca56","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-08-28 13:33:29.299086+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bf7e0e7f-d9eb-4c93-b7c5-85e5b2d34476', '{"action":"login","actor_id":"abccdcb7-037a-48b4-b8f3-814bf097ca56","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-28 13:33:37.617512+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e48f3c2f-771c-4cdc-af6b-1ecfa6599931', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"brafifaabraka@gmail.com","user_id":"abccdcb7-037a-48b4-b8f3-814bf097ca56","user_phone":""}}', '2025-08-28 13:34:16.007641+00', ''),
	('00000000-0000-0000-0000-000000000000', '9050b334-d49f-4153-a2b1-73a4727d3b01', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"provider":"email","user_email":"brafifaabraka@gmail.com","user_id":"3071e1bf-7c91-4452-a1e4-4c9e9a97134b","user_phone":""}}', '2025-08-28 13:54:35.82581+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e8bb944f-f8db-4b6d-80c6-b67b688a800d', '{"action":"user_recovery_requested","actor_id":"3071e1bf-7c91-4452-a1e4-4c9e9a97134b","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-08-28 15:23:32.706789+00', ''),
	('00000000-0000-0000-0000-000000000000', '7be624fb-bb53-4a4f-a253-3af3f44e2009', '{"action":"login","actor_id":"3071e1bf-7c91-4452-a1e4-4c9e9a97134b","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-28 15:24:43.755609+00', ''),
	('00000000-0000-0000-0000-000000000000', '56f3192b-92c5-4dbf-b54a-1ab39407c137', '{"action":"logout","actor_id":"3071e1bf-7c91-4452-a1e4-4c9e9a97134b","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-28 15:25:11.781088+00', ''),
	('00000000-0000-0000-0000-000000000000', 'da250a0c-409b-4996-8146-5effb6a2b3a8', '{"action":"user_recovery_requested","actor_id":"3071e1bf-7c91-4452-a1e4-4c9e9a97134b","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-08-28 15:25:21.51922+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cd60d46e-3635-4ccf-a72a-6e1e2553c635', '{"action":"login","actor_id":"3071e1bf-7c91-4452-a1e4-4c9e9a97134b","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-28 15:25:27.63722+00', ''),
	('00000000-0000-0000-0000-000000000000', '2f5e3dde-fa84-4c2a-aa54-0675e6f049ca', '{"action":"logout","actor_id":"3071e1bf-7c91-4452-a1e4-4c9e9a97134b","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-28 15:25:32.486122+00', ''),
	('00000000-0000-0000-0000-000000000000', '58652844-e2fe-4694-b31e-561723a89e42', '{"action":"login","actor_id":"3071e1bf-7c91-4452-a1e4-4c9e9a97134b","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-08-28 15:40:15.247126+00', ''),
	('00000000-0000-0000-0000-000000000000', '124bd9df-b264-43ab-9664-4b9b0faadda9', '{"action":"logout","actor_id":"3071e1bf-7c91-4452-a1e4-4c9e9a97134b","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-28 15:40:29.011079+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b90ad4b7-7d2e-4218-8fcd-e8e70d35e5fe', '{"action":"login","actor_id":"3071e1bf-7c91-4452-a1e4-4c9e9a97134b","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-08-28 17:27:06.776939+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cea6f87b-733d-43c8-a54a-45b2eae8d914', '{"action":"logout","actor_id":"3071e1bf-7c91-4452-a1e4-4c9e9a97134b","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-28 17:27:08.776741+00', ''),
	('00000000-0000-0000-0000-000000000000', '149cf92d-b1cf-487f-a9ed-104d320fe44a', '{"action":"login","actor_id":"3071e1bf-7c91-4452-a1e4-4c9e9a97134b","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-08-28 17:36:43.622165+00', ''),
	('00000000-0000-0000-0000-000000000000', '58fc5d91-35b8-4b73-b380-66d597a104e2', '{"action":"logout","actor_id":"3071e1bf-7c91-4452-a1e4-4c9e9a97134b","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-28 17:40:27.128129+00', ''),
	('00000000-0000-0000-0000-000000000000', '96f3860d-f934-4780-aed8-d7d235f90340', '{"action":"user_recovery_requested","actor_id":"3071e1bf-7c91-4452-a1e4-4c9e9a97134b","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-08-28 17:42:34.317667+00', ''),
	('00000000-0000-0000-0000-000000000000', '577971c7-67f9-46c3-89e4-33417e42c536', '{"action":"login","actor_id":"3071e1bf-7c91-4452-a1e4-4c9e9a97134b","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-28 17:42:41.48197+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c6530175-0854-4dd3-8e31-44496b0b769d', '{"action":"user_updated_password","actor_id":"3071e1bf-7c91-4452-a1e4-4c9e9a97134b","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-08-28 17:43:55.134236+00', ''),
	('00000000-0000-0000-0000-000000000000', '62ff6cff-9365-46e3-91fd-25ca4619cc3d', '{"action":"user_modified","actor_id":"3071e1bf-7c91-4452-a1e4-4c9e9a97134b","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-08-28 17:43:55.135073+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c1a8d7c0-f646-4c3b-bc94-4b3321d857c8', '{"action":"logout","actor_id":"3071e1bf-7c91-4452-a1e4-4c9e9a97134b","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-28 17:43:58.343169+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a17fda32-708a-4263-bc66-f33d8ec33ee7', '{"action":"login","actor_id":"3071e1bf-7c91-4452-a1e4-4c9e9a97134b","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-08-28 17:44:07.445541+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a05df72d-a9a2-4ac4-81e6-a95d46509e40', '{"action":"logout","actor_id":"3071e1bf-7c91-4452-a1e4-4c9e9a97134b","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-28 17:44:12.1303+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ddae2ef0-fb1f-4f41-aec1-e51fcc42af7b', '{"action":"user_recovery_requested","actor_id":"3071e1bf-7c91-4452-a1e4-4c9e9a97134b","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-08-28 17:45:21.590172+00', ''),
	('00000000-0000-0000-0000-000000000000', '117e3c35-ce06-42e9-adb6-a0123f18eda5', '{"action":"login","actor_id":"3071e1bf-7c91-4452-a1e4-4c9e9a97134b","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-28 17:45:30.758079+00', ''),
	('00000000-0000-0000-0000-000000000000', 'be85fdad-55b1-4d5c-8566-f1ad10df0184', '{"action":"logout","actor_id":"3071e1bf-7c91-4452-a1e4-4c9e9a97134b","actor_username":"brafifaabraka@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-28 17:45:47.986293+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") VALUES
	('9067e064-d118-436f-9a1d-d34d028d5b92', 'abccdcb7-037a-48b4-b8f3-814bf097ca56', 'ea3ded04-bb1e-4e24-906e-ca79857ce0a4', 's256', 'fx4QHW_M5imiUHvQCcCj4xWtziAapd2fm4X0C_4cjZg', 'magiclink', '', '', '2025-08-28 13:33:29.296397+00', '2025-08-28 13:33:37.621497+00', 'magiclink', '2025-08-28 13:33:37.621478+00');


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '3071e1bf-7c91-4452-a1e4-4c9e9a97134b', 'authenticated', 'authenticated', 'brafifaabraka@gmail.com', '$2a$10$Um64LtdsDINhdmo0zbPNvun/SsppXk2IpnDkZVvIw8OHe/6LqjDOa', '2025-08-28 13:54:35.826578+00', NULL, '', NULL, '', '2025-08-28 17:45:21.589991+00', '', '', NULL, '2025-08-28 17:45:30.759116+00', '{"provider": "email", "providers": ["email"]}', '{"email_verified": true}', NULL, '2025-08-28 13:54:35.824034+00', '2025-08-28 17:45:30.760229+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('3071e1bf-7c91-4452-a1e4-4c9e9a97134b', '3071e1bf-7c91-4452-a1e4-4c9e9a97134b', '{"sub": "3071e1bf-7c91-4452-a1e4-4c9e9a97134b", "email": "brafifaabraka@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2025-08-28 13:54:35.825239+00', '2025-08-28 13:54:35.825269+00', '2025-08-28 13:54:35.825269+00', 'ed4eecc7-f559-4c54-976a-0b195667d031');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: service_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."service_users" ("id", "created_at", "full_name", "supabase_user") VALUES
	(1, '2025-08-29 00:12:28.179382+00', 'Valerii Kharkin', '3071e1bf-7c91-4452-a1e4-4c9e9a97134b');


--
-- Data for Name: tenants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenants" ("id", "created_at", "name", "domain") VALUES
	('packt', '2025-08-28 23:55:44.839913+00', 'Packt Publishing', 'packt.local'),
	('activenode', '2025-08-28 23:56:20.336943+00', 'activenode Education', 'activenode.learn'),
	('oddmonkey', '2025-08-28 23:56:42.038786+00', 'OddMonkey Inc', 'oddmonkey.inc');


--
-- Data for Name: tenant_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenant_permissions" ("id", "created_at", "service_user", "tenant") VALUES
	(1, '2025-08-29 01:30:55.284423+00', 1, 'packt'),
	(2, '2025-08-29 01:31:15.119426+00', 1, 'oddmonkey');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: iceberg_namespaces; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: iceberg_tables; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: prefixes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 9, true);


--
-- Name: service_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."service_users_id_seq"', 33, true);


--
-- Name: tenant_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."tenant_permissions_id_seq"', 2, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
