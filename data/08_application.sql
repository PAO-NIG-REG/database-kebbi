--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = application, pg_catalog;

--
-- Data for Name: application; Type: TABLE DATA; Schema: application; Owner: postgres
--

SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE application DISABLE TRIGGER ALL;



ALTER TABLE application ENABLE TRIGGER ALL;

--
-- Data for Name: application_property; Type: TABLE DATA; Schema: application; Owner: postgres
--

ALTER TABLE application_property DISABLE TRIGGER ALL;



ALTER TABLE application_property ENABLE TRIGGER ALL;

--
-- Data for Name: application_spatial_unit; Type: TABLE DATA; Schema: application; Owner: postgres
--

ALTER TABLE application_spatial_unit DISABLE TRIGGER ALL;



ALTER TABLE application_spatial_unit ENABLE TRIGGER ALL;

--
-- Data for Name: service; Type: TABLE DATA; Schema: application; Owner: postgres
--

ALTER TABLE service DISABLE TRIGGER ALL;



ALTER TABLE service ENABLE TRIGGER ALL;

--
-- PostgreSQL database dump complete
--

