--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = transaction, pg_catalog;

--
-- Data for Name: transaction; Type: TABLE DATA; Schema: transaction; Owner: postgres
--

SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE transaction DISABLE TRIGGER ALL;

INSERT INTO transaction (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('cadastre-transaction', NULL, 'approved', '2014-02-20 16:19:14.246', false, false, 'c626e508-99dd-11e3-955e-930e64e81b4c', 1, 'i', 'test-id', '2014-02-20 16:19:14.246');
INSERT INTO transaction (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('adm-transaction', NULL, 'approved', '2014-02-20 16:21:15.323', false, false, '0e534b14-99de-11e3-9128-bb84496c4d4d', 1, 'i', 'test', '2014-02-20 16:21:15.323');
INSERT INTO transaction (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('LandOnlineNZ', NULL, 'approved', '2014-02-20 16:22:44.401', false, false, '436a9dca-99de-11e3-ba39-875ddfcab004', 1, 'i', 'jvb', '2014-02-20 16:22:44.401');
INSERT INTO transaction (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('d516930b-e4d3-4c10-8199-8e95f2e0703c', '9e4b6c5e-a857-4cbd-836e-9b4d0dad8be7', 'completed', NULL, false, false, 'e3781971-0f6e-44c2-b011-e137cdcd6a34', 6, 'u', 'test', '2015-04-07 15:51:07.319');


ALTER TABLE transaction ENABLE TRIGGER ALL;

--
-- Data for Name: transaction_source; Type: TABLE DATA; Schema: transaction; Owner: postgres
--

ALTER TABLE transaction_source DISABLE TRIGGER ALL;



ALTER TABLE transaction_source ENABLE TRIGGER ALL;

--
-- PostgreSQL database dump complete
--

