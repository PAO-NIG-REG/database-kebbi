--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = opentenure, pg_catalog;

--
-- Data for Name: attachment; Type: TABLE DATA; Schema: opentenure; Owner: postgres
--

SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE attachment DISABLE TRIGGER ALL;



ALTER TABLE attachment ENABLE TRIGGER ALL;

--
-- Data for Name: attachment_chunk; Type: TABLE DATA; Schema: opentenure; Owner: postgres
--

ALTER TABLE attachment_chunk DISABLE TRIGGER ALL;



ALTER TABLE attachment_chunk ENABLE TRIGGER ALL;

--
-- Data for Name: party; Type: TABLE DATA; Schema: opentenure; Owner: postgres
--

ALTER TABLE party DISABLE TRIGGER ALL;



ALTER TABLE party ENABLE TRIGGER ALL;

--
-- Data for Name: claim; Type: TABLE DATA; Schema: opentenure; Owner: postgres
--

ALTER TABLE claim DISABLE TRIGGER ALL;



ALTER TABLE claim ENABLE TRIGGER ALL;

--
-- Data for Name: claim_comment; Type: TABLE DATA; Schema: opentenure; Owner: postgres
--

ALTER TABLE claim_comment DISABLE TRIGGER ALL;



ALTER TABLE claim_comment ENABLE TRIGGER ALL;

--
-- Data for Name: claim_location; Type: TABLE DATA; Schema: opentenure; Owner: postgres
--

ALTER TABLE claim_location DISABLE TRIGGER ALL;



ALTER TABLE claim_location ENABLE TRIGGER ALL;

--
-- Data for Name: claim_share; Type: TABLE DATA; Schema: opentenure; Owner: postgres
--

ALTER TABLE claim_share DISABLE TRIGGER ALL;



ALTER TABLE claim_share ENABLE TRIGGER ALL;

--
-- Data for Name: claim_uses_attachment; Type: TABLE DATA; Schema: opentenure; Owner: postgres
--

ALTER TABLE claim_uses_attachment DISABLE TRIGGER ALL;



ALTER TABLE claim_uses_attachment ENABLE TRIGGER ALL;

--
-- Data for Name: form_template; Type: TABLE DATA; Schema: opentenure; Owner: postgres
--

ALTER TABLE form_template DISABLE TRIGGER ALL;



ALTER TABLE form_template ENABLE TRIGGER ALL;

--
-- Data for Name: section_template; Type: TABLE DATA; Schema: opentenure; Owner: postgres
--

ALTER TABLE section_template DISABLE TRIGGER ALL;



ALTER TABLE section_template ENABLE TRIGGER ALL;

--
-- Data for Name: field_template; Type: TABLE DATA; Schema: opentenure; Owner: postgres
--

ALTER TABLE field_template DISABLE TRIGGER ALL;



ALTER TABLE field_template ENABLE TRIGGER ALL;

--
-- Data for Name: field_constraint; Type: TABLE DATA; Schema: opentenure; Owner: postgres
--

ALTER TABLE field_constraint DISABLE TRIGGER ALL;



ALTER TABLE field_constraint ENABLE TRIGGER ALL;

--
-- Data for Name: field_constraint_option; Type: TABLE DATA; Schema: opentenure; Owner: postgres
--

ALTER TABLE field_constraint_option DISABLE TRIGGER ALL;



ALTER TABLE field_constraint_option ENABLE TRIGGER ALL;

--
-- Data for Name: form_payload; Type: TABLE DATA; Schema: opentenure; Owner: postgres
--

ALTER TABLE form_payload DISABLE TRIGGER ALL;



ALTER TABLE form_payload ENABLE TRIGGER ALL;

--
-- Data for Name: section_payload; Type: TABLE DATA; Schema: opentenure; Owner: postgres
--

ALTER TABLE section_payload DISABLE TRIGGER ALL;



ALTER TABLE section_payload ENABLE TRIGGER ALL;

--
-- Data for Name: section_element_payload; Type: TABLE DATA; Schema: opentenure; Owner: postgres
--

ALTER TABLE section_element_payload DISABLE TRIGGER ALL;



ALTER TABLE section_element_payload ENABLE TRIGGER ALL;

--
-- Data for Name: field_payload; Type: TABLE DATA; Schema: opentenure; Owner: postgres
--

ALTER TABLE field_payload DISABLE TRIGGER ALL;



ALTER TABLE field_payload ENABLE TRIGGER ALL;

--
-- Data for Name: party_for_claim_share; Type: TABLE DATA; Schema: opentenure; Owner: postgres
--

ALTER TABLE party_for_claim_share DISABLE TRIGGER ALL;



ALTER TABLE party_for_claim_share ENABLE TRIGGER ALL;

--
-- PostgreSQL database dump complete
--

