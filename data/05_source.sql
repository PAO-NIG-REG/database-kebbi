--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = source, pg_catalog;

--
-- Data for Name: archive; Type: TABLE DATA; Schema: source; Owner: postgres
--

SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE archive DISABLE TRIGGER ALL;

INSERT INTO archive (id, name, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('archive-id', 'Land Information New Zealand Landonline', '0e20efb6-99de-11e3-860a-437de73932f9', 1, 'i', 'test', '2014-02-20 16:21:15.006');


ALTER TABLE archive ENABLE TRIGGER ALL;

--
-- Data for Name: source; Type: TABLE DATA; Schema: source; Owner: postgres
--

ALTER TABLE source DISABLE TRIGGER ALL;

INSERT INTO source (id, maintype, la_nr, reference_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, classification_code, redact_code) VALUES ('0e2339b0-99de-11e3-b14f-8f843c971634', 'mapDigital', 'Landonline', NULL, 'archive-id', NULL, NULL, '2011-06-29', NULL, NULL, 'available', 'cadastralMap', 'Land Information New Zealand Landonline', NULL, NULL, NULL, NULL, NULL, NULL, '0e2360c0-99de-11e3-aeb5-2f4cc95d3b6b', 1, 'i', 'test', '2014-02-20 16:21:15.014', NULL, NULL);
INSERT INTO source (id, maintype, la_nr, reference_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, classification_code, redact_code) VALUES ('76b2f8ae-db3d-4033-8c9e-0961e4dd1574', NULL, '140220-000000001', NULL, NULL, NULL, '2014-02-20', '2014-02-20', NULL, 'd3ac733d-3679-4351-89ef-35151f2745a5', 'available', 'agreement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '62fda8d0-48f4-40d8-8e28-8601d331da37', 1, 'i', 'test', '2014-02-20 16:38:56.443', NULL, NULL);
INSERT INTO source (id, maintype, la_nr, reference_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, classification_code, redact_code) VALUES ('543134c2-65d5-4a01-9e4c-10f4c78f96e1', NULL, '150407-000000001', NULL, NULL, NULL, '2015-04-01', '2015-04-07', NULL, 'b6f24c42-1c88-4d5b-bffd-7a94487ae6a1', 'available', 'title', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ce1576f2-312a-49d8-9b65-d1a8fc200b6f', 1, 'i', 'test', '2015-04-07 14:19:37.208', NULL, NULL);


ALTER TABLE source ENABLE TRIGGER ALL;

SET search_path = administrative, pg_catalog;

--
-- Data for Name: source_describes_ba_unit; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE source_describes_ba_unit DISABLE TRIGGER ALL;



ALTER TABLE source_describes_ba_unit ENABLE TRIGGER ALL;

--
-- Data for Name: source_describes_rrr; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE source_describes_rrr DISABLE TRIGGER ALL;

INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('c9c56785-ff3e-445d-adec-56c2f6bf56ba', '543134c2-65d5-4a01-9e4c-10f4c78f96e1', 'e914781c-aca3-4e2c-bf97-738b2f6827b5', 1, 'i', 'test', '2015-04-07 15:49:06.694');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('78501daf-ddd2-4081-9abd-09de82718e9d', '543134c2-65d5-4a01-9e4c-10f4c78f96e1', '2a44a27d-ab8e-4eac-8e19-6e064e43751e', 1, 'i', 'test', '2015-04-07 15:50:50.524');


ALTER TABLE source_describes_rrr ENABLE TRIGGER ALL;

SET search_path = application, pg_catalog;

--
-- Data for Name: application_uses_source; Type: TABLE DATA; Schema: application; Owner: postgres
--

ALTER TABLE application_uses_source DISABLE TRIGGER ALL;

INSERT INTO application_uses_source (application_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('3040', '76b2f8ae-db3d-4033-8c9e-0961e4dd1574', '1585773e-c47a-4070-9744-563507de39e3', 1, 'i', 'test', '2014-02-20 16:38:56.443');
INSERT INTO application_uses_source (application_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('032b2083-23cd-4ab2-802a-f2296140eb21', '543134c2-65d5-4a01-9e4c-10f4c78f96e1', 'b100d914-0195-4396-bfde-3bffb53bfc04', 1, 'i', 'test', '2015-04-07 14:19:37.208');


ALTER TABLE application_uses_source ENABLE TRIGGER ALL;

SET search_path = source, pg_catalog;

--
-- Data for Name: power_of_attorney; Type: TABLE DATA; Schema: source; Owner: postgres
--

ALTER TABLE power_of_attorney DISABLE TRIGGER ALL;



ALTER TABLE power_of_attorney ENABLE TRIGGER ALL;

--
-- Data for Name: spatial_source; Type: TABLE DATA; Schema: source; Owner: postgres
--

ALTER TABLE spatial_source DISABLE TRIGGER ALL;



ALTER TABLE spatial_source ENABLE TRIGGER ALL;

--
-- Data for Name: spatial_source_measurement; Type: TABLE DATA; Schema: source; Owner: postgres
--

ALTER TABLE spatial_source_measurement DISABLE TRIGGER ALL;



ALTER TABLE spatial_source_measurement ENABLE TRIGGER ALL;

--
-- PostgreSQL database dump complete
--

