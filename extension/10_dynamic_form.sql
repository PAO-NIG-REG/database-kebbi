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
-- Data for Name: form_template; Type: TABLE DATA; Schema: opentenure; Owner: postgres
--

SET SESSION AUTHORIZATION DEFAULT;

INSERT INTO form_template (name, display_name, is_default, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('KatsinaState', 'Katsina State::::::::::::::::::::::::::::::::', true, '6628b306-d534-4a9b-99bb-9c116301eeb1', 3, 'u', 'test', '2015-06-22 08:32:35.035831');

--
-- Data for Name: section_template; Type: TABLE DATA; Schema: opentenure; Owner: postgres
--

INSERT INTO section_template (id, name, display_name, error_msg, min_occurrences, max_occurrences, form_template_name, element_name, element_display_name, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('e44d7a46-ec08-458d-a9a0-72a3b5805c0a', 'cOfO', 'Certificate of Occupancy::::::::::::::::::::::::::::::::', 'Please complete all CofO from the Minute Bookds::::::::::::::::::::::::::::::::', 0, 1, 'KatsinaState', 'cOfOminuteBookCapture', 'CofO Minute Book::::::::::::::::::::::::::::::::', '9e46b564-bda4-4b3f-a643-b57d63fdf454', 4, 'u', 'test', '2015-07-08 13:24:19.424803', 1);
INSERT INTO section_template (id, name, display_name, error_msg, min_occurrences, max_occurrences, form_template_name, element_name, element_display_name, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('5c9e262d-6e90-42c9-9400-e5857e796a93', 'secGazettedReserves', 'Gazetted Reserves::::::::::::::::::::::::::::::::', 'Capture Gazetted details::::::::::::::::::::::::::::::::', 0, 1, 'KatsinaState', 'elGazettedReserves', 'Gazetted Reserves::::::::::::::::::::::::::::::::', 'ee22c9dc-e03d-48d1-b123-5e001152cfe0', 2, 'u', 'admin', '2015-08-01 09:50:38.608729', 3);

--
-- Data for Name: field_template; Type: TABLE DATA; Schema: opentenure; Owner: postgres
--

INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('b7ec66ca-e301-486c-b829-c6c1d2e2cb2f', 'dateSigned', 'Date Signed::::::::::::::::::::::::::::::::', 'Enter date CofO was signed', 'DATE', 'e44d7a46-ec08-458d-a9a0-72a3b5805c0a', '0f00add6-18b8-11e5-aa8a-02006fc20003', 5, 'u', 'admin', '2015-08-03 22:29:57.035838', 9);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('8f1e60cd-615e-42f6-9d01-852533e1df71', 'dateRegistered', 'Date Registered::::::::::::::::::::::::::::::::', 'Enter date of registration', 'DATE', 'e44d7a46-ec08-458d-a9a0-72a3b5805c0a', '0f00b06a-18b8-11e5-a6c9-02006fc20003', 5, 'u', 'admin', '2015-08-03 22:29:57.035838', 10);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('f7323bfc-2b87-49e2-99fc-74c1cadbf289', 'instrumentRegistrationNo', 'Instrument Number::::::::::::::::::::::::::::::::', 'Registration Instrument Number', 'TEXT', 'e44d7a46-ec08-458d-a9a0-72a3b5805c0a', 'd57c5a80-dd07-4710-9de1-a8b60f889a18', 1, 'i', 'admin', '2015-08-03 22:29:57.035838', 11);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('b5c9feb9-c956-48b2-996d-72e51ae041b4', 'volume', 'Volume::::::::::::::::::::::::::::::::', 'Volume Number', 'INTEGER', 'e44d7a46-ec08-458d-a9a0-72a3b5805c0a', '0f00b56a-18b8-11e5-9cf1-02006fc20003', 5, 'u', 'admin', '2015-08-03 22:29:57.035838', 12);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('72eeaebf-7e24-4844-9f20-e90eb8538c55', 'folio', 'Folio::::::::::::::::::::::::::::::::', 'Add folio number', 'INTEGER', 'e44d7a46-ec08-458d-a9a0-72a3b5805c0a', '0f00b7e0-18b8-11e5-8c09-02006fc20003', 5, 'u', 'admin', '2015-08-03 22:29:57.035838', 13);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('d3be5849-830f-498f-8c18-2561c58ea2cd', 'fieldGazetteReference', 'Gazette Reference::::::::::::::::::::::::::::::::', 'Reference for Gazetted', 'TEXT', '5c9e262d-6e90-42c9-9400-e5857e796a93', '5bf58000-b9f3-437c-ba7c-17613fc87eef', 1, 'i', 'admin', '2015-07-28 19:28:01.813265', 1);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('ba234877-4569-499b-a4b0-8f27350345fa', 'fieldGazPurpose', 'Purpose::::::::::::::::::::::::::::::::', 'Describe Gazette Purpose', 'TEXT', '5c9e262d-6e90-42c9-9400-e5857e796a93', '50ba3275-930c-4654-8e3c-181efda3b8de', 1, 'i', 'admin', '2015-07-28 19:34:48.545422', 3);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('3e0c25aa-5a60-40d8-9f86-14a695131ba3', 'fieldAuthority', 'Legislative Authority::::::::::::::::::::::::::::::::', 'Section and Ordinance for Gazette action', 'TEXT', '5c9e262d-6e90-42c9-9400-e5857e796a93', 'ed5b5611-3897-466d-ba7c-1dd7b49a6cb5', 1, 'i', 'admin', '2015-07-28 19:34:48.545422', 4);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('39d45c1e-ae88-4903-8f33-9837bc58185a', 'fieldCommenceDate', 'Date of Commencement::::::::::::::::::::::::::::::::', 'Date Gazette came into affect', 'DATE', '5c9e262d-6e90-42c9-9400-e5857e796a93', '4b51735e-654b-4aab-a6fa-575aae4d1984', 2, 'u', 'admin', '2015-08-01 09:55:30.163281', 2);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('5efd5b77-5fd2-492d-81e6-12ec346479f8', 'zone', 'Zone::::::::::::::::::::::::::::::::', 'Leave blank - do not complete', 'TEXT', 'e44d7a46-ec08-458d-a9a0-72a3b5805c0a', '0f00a070-18b8-11e5-99e4-02006fc20003', 4, 'u', 'admin', '2015-08-03 07:44:32.17982', 22);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('2d9c0f16-9b65-45d9-920d-0abe029acf3f', 'cOfOtype', 'Occupancy Right Purpose::::::::::::::::::::::::::::::::', 'Select value from list', 'TEXT', 'e44d7a46-ec08-458d-a9a0-72a3b5805c0a', '0f00a82c-18b8-11e5-a855-02006fc20003', 4, 'u', 'admin', '2015-08-03 22:29:57.035838', 1);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('10f533f5-2896-43ff-8685-ac6803ed8474', 'advancePayment', 'Advance Payment::::::::::::::::::::::::::::::::', 'Initial rent payment made in advance', 'INTEGER', 'e44d7a46-ec08-458d-a9a0-72a3b5805c0a', '7e1d1f2a-28d2-4fa4-a85f-ed1105dfdc4a', 1, 'i', 'admin', '2015-08-03 22:29:57.035838', 2);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('1b8507ee-950b-49a8-ad57-73ed37ba52a5', 'fieldAreaImperial2', 'Imperial Area - Acres::::::::::::::::::::::::::::::::', 'number of acres', 'INTEGER', '5c9e262d-6e90-42c9-9400-e5857e796a93', '1faa8d6f-eb8c-4e50-8eab-c00c97cdf447', 1, 'i', 'admin', '2015-07-28 19:58:44.850928', 6);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('c3b2dc3f-6f99-43ce-9e95-b6f83148125c', 'fieldImperialArea3', 'Imperial Area - Roods::::::::::::::::::::::::::::::::', 'number of roods', 'INTEGER', '5c9e262d-6e90-42c9-9400-e5857e796a93', '953ec46d-1f24-47e3-bc26-7444c8cfaa05', 1, 'i', 'admin', '2015-07-28 19:58:44.850928', 7);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('0f5250f6-94f8-4026-a1da-e54a50d10ac6', 'fieldImperialArea4', 'Imperial Area - Perches::::::::::::::::::::::::::::::::', 'number of perches & fraction', 'DECIMAL', '5c9e262d-6e90-42c9-9400-e5857e796a93', '265a847e-7226-49e5-846f-a620f023797b', 1, 'i', 'admin', '2015-07-28 19:58:44.850928', 8);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('1460d31d-6301-4c01-9efb-742a624ebf9a', 'fieldMetricAreaHa', 'Metric Area - Hectares::::::::::::::::::::::::::::::::', 'Area in hectares', 'DECIMAL', '5c9e262d-6e90-42c9-9400-e5857e796a93', '9a2dc656-6af4-469a-90aa-e424729bc859', 1, 'i', 'admin', '2015-07-28 19:58:44.850928', 9);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('929ed2a3-9e5a-4512-b17c-861101ccdf4e', 'fieldImperialArea1', 'Imperial Area - Square Miles::::::::::::::::::::::::::::::::', 'area in square miles', 'DECIMAL', '5c9e262d-6e90-42c9-9400-e5857e796a93', 'a4852b1c-3cbc-40de-bd5c-c02dc61cd02d', 2, 'u', 'admin', '2015-08-01 09:50:38.608729', 5);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('bf29957b-3703-4b9a-b345-67c56a409707', 'yearlyRent', 'Yearly Rent::::::::::::::::::::::::::::::::', 'Regular yearly rent (in Naira)', 'INTEGER', 'e44d7a46-ec08-458d-a9a0-72a3b5805c0a', 'e86501f3-3009-4f5f-ba59-14920549d61c', 1, 'i', 'admin', '2015-08-03 22:29:57.035838', 3);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('fb160159-90dc-46ff-816e-f98c55147fad', 'reviewPeriod', 'Review Period (in years)::::::::::::::::::::::::::::::::', 'Review period in years', 'INTEGER', 'e44d7a46-ec08-458d-a9a0-72a3b5805c0a', 'f83afa37-018c-4281-90e4-5905daf32ac1', 1, 'i', 'admin', '2015-08-03 22:29:57.035838', 7);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('394ae1c7-4497-4402-a0f3-cc99f957069f', 'estate', 'Estate::::::::::::::::::::::::::::::::', 'Select the Estate Type (G/P)', 'TEXT', 'e44d7a46-ec08-458d-a9a0-72a3b5805c0a', '0f00a2f0-18b8-11e5-86cb-02006fc20003', 5, 'u', 'admin', '2015-08-03 06:24:48.575793', 14);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('e535ae06-2cd8-4e27-8b23-0bc15e69750b', 'plotNum', 'Plot Number::::::::::::::::::::::::::::::::', 'Enter Plot Number', 'TEXT', 'e44d7a46-ec08-458d-a9a0-72a3b5805c0a', '0f00c5be-18b8-11e5-9c02-02006fc20003', 5, 'u', 'admin', '2015-08-03 22:29:57.035838', 17);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('6fecf6e6-bfc0-4e51-b34b-009f24aae34a', 'term', 'Term (in years)::::::::::::::::::::::::::::::::', 'In years', 'INTEGER', 'e44d7a46-ec08-458d-a9a0-72a3b5805c0a', '0e3c72de-0d93-4ca9-bcb5-6561d434a527', 4, 'u', 'admin', '2015-08-03 06:24:48.575793', 6);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('6888be58-c18c-4c4f-b16f-bc12c731335b', 'block', 'Block::::::::::::::::::::::::::::::::', 'Enter Block if applicable', 'TEXT', 'e44d7a46-ec08-458d-a9a0-72a3b5805c0a', 'f0cf2bdf-e1fb-4726-96f6-70f3dd350a52', 6, 'u', 'admin', '2015-08-03 06:24:48.575793', 18);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('a8830739-8b42-4a78-9453-e15f69b9a112', 'layoutPlan', 'Layout Plan::::::::::::::::::::::::::::::::', 'Enter Layout Plan if applicable', 'TEXT', 'e44d7a46-ec08-458d-a9a0-72a3b5805c0a', '0f00c8c0-18b8-11e5-a67a-02006fc20003', 4, 'u', 'admin', '2015-08-03 06:24:48.575793', 19);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('85dc0c6c-68e0-4847-978c-9ef0da521334', 'IntellMapSheet', 'Intelligence Map Sheet::::::::::::::::::::::::::::::::', 'Enter the map sheet reference if applicable', 'TEXT', 'e44d7a46-ec08-458d-a9a0-72a3b5805c0a', '0f00cb4a-18b8-11e5-aa6b-02006fc20003', 4, 'u', 'admin', '2015-08-03 06:24:48.575793', 20);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('a9857921-7eaf-4e63-a3b1-687ae30c9333', 'LGA', 'LGA::::::::::::::::::::::::::::::::', 'Select value from list', 'TEXT', 'e44d7a46-ec08-458d-a9a0-72a3b5805c0a', '217be5db-29a1-40ee-8edf-f1562adfee73', 4, 'u', 'admin', '2015-08-03 06:24:48.575793', 21);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('6728deac-e205-485d-8d7c-a06d1494a576', 'dateCommenced', 'Date Commenced::::::::::::::::::::::::::::::::', 'Date C of O commenced', 'DATE', 'e44d7a46-ec08-458d-a9a0-72a3b5805c0a', 'be8ff0e8-90e3-4a79-a40a-032f08992e47', 5, 'u', 'admin', '2015-08-03 22:29:57.035838', 8);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('c0001807-dfc6-4b6d-9ebe-cfa07b21df4d', 'areaCofOhectares', 'Area in Hectares::::::::::::::::::::::::::::::::', 'Enter area in hectares', 'DECIMAL', 'e44d7a46-ec08-458d-a9a0-72a3b5805c0a', '0f00ba4c-18b8-11e5-a8ee-02006fc20003', 5, 'u', 'admin', '2015-08-03 22:29:57.035838', 15);
INSERT INTO field_template (id, name, display_name, hint, field_type, section_template_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('af2a56d9-b572-470a-ab6f-c340db955304', 'location', 'Location::::::::::::::::::::::::::::::::', 'The location of the land described in the CofO (excluding plot number & LGA)', 'TEXT', 'e44d7a46-ec08-458d-a9a0-72a3b5805c0a', '7e6b7666-a8e9-4e18-8fc0-f9f17f7baa3f', 3, 'u', 'admin', '2015-08-03 22:29:57.035838', 16);

--
-- Data for Name: field_constraint; Type: TABLE DATA; Schema: opentenure; Owner: postgres
--

INSERT INTO field_constraint (id, name, display_name, error_msg, format, min_value, max_value, field_constraint_type, field_template_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('52fe15f9-2efe-4214-a133-d0af76208ce3', 'estateList', 'Estate List::::::::::::::::::::::::::::::::', 'Allowable limits are G or P::::::::::::::::::::::::::::::::', NULL, NULL, NULL, 'OPTION', '394ae1c7-4497-4402-a0f3-cc99f957069f', '9aed6758-18b8-11e5-9dc2-02006fc20003', 1, 'i', 'db:postgres', '2015-06-22 08:28:05.689728');
INSERT INTO field_constraint (id, name, display_name, error_msg, format, min_value, max_value, field_constraint_type, field_template_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('2f573234-4f03-4546-a90c-3d8939d4efd7', 'cOfOtypeList', 'Right Type List::::::::::::::::::::::::::::::::', 'Select value from right type list::::::::::::::::::::::::::::::::', NULL, NULL, NULL, 'OPTION', '2d9c0f16-9b65-45d9-920d-0abe029acf3f', '9aed6a50-18b8-11e5-a4a1-02006fc20003', 1, 'i', 'db:postgres', '2015-06-22 08:28:05.689728');
INSERT INTO field_constraint (id, name, display_name, error_msg, format, min_value, max_value, field_constraint_type, field_template_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('68c6c663-abaa-4924-be95-9ef57a18d739', 'LGAlist', 'LGA List::::::::::::::::::::::::::::::::', 'Select value from the list::::::::::::::::::::::::::::::::', NULL, NULL, NULL, 'OPTION', 'a9857921-7eaf-4e63-a3b1-687ae30c9333', '288b9d83-05d1-41a5-b453-7bff4df5b4f6', 1, 'i', 'test', '2015-06-24 09:13:42.822579');
INSERT INTO field_constraint (id, name, display_name, error_msg, format, min_value, max_value, field_constraint_type, field_template_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('b723e6a7-3606-4866-bc7e-87fe0fa44fd3', 'zoneList', 'Zone Office List::::::::::::::::::::::::::::::::', 'Leave value as None::::::::::::::::::::::::::::::::', NULL, NULL, NULL, 'OPTION', '5efd5b77-5fd2-492d-81e6-12ec346479f8', '9aed5024-18b8-11e5-8934-02006fc20003', 2, 'u', 'admin', '2015-08-03 07:44:32.17982');

--
-- Data for Name: field_constraint_option; Type: TABLE DATA; Schema: opentenure; Owner: postgres
--
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('3eaa2277-b224-414a-97b5-2cf14691cf56', 'Malumfashi', 'Malumfashi (ML)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', '35c12d63-3844-40df-a678-6cf9abd01615', 4, 'u', 'admin', '2015-07-09 10:07:00.050172', 25);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('45a7df10-29e5-4d51-a3ae-ab5d83976e9e', 'Mashi', 'Mashi (MA)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', 'a97c683b-e4f8-4295-9559-2d6546c39742', 4, 'u', 'admin', '2015-07-09 10:07:00.050172', 27);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('b93a0f6b-1b9d-4aec-8a3f-cfd973ca1857', 'Matazuu', 'Matazuu (KN)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', 'c7a86c04-35b8-4b19-b157-bcb55ef5a55a', 4, 'u', 'admin', '2015-07-09 10:07:00.050172', 28);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('c0cf3487-34bf-4bf2-af88-13c38226b12b', 'Musawa', 'Musawa (KN)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', 'f686ed60-73fe-4659-8b46-d03c8f5e90f8', 4, 'u', 'admin', '2015-07-09 10:07:00.050172', 29);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('65f2434d-10c3-47c5-99e6-1ebfbed2aecf', 'Sabuwa', 'Sabuwa (FU)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', '286d6c86-090d-4528-b4c0-088ba920f5fe', 3, 'u', 'admin', '2015-07-09 10:07:00.050172', 31);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('03aca437-d271-4ca4-b333-c3772868590c', 'Safana', 'Safana (DU)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', '195598ce-719d-4ec5-bec3-e434df7b7956', 3, 'u', 'admin', '2015-07-09 10:07:00.050172', 32);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('145ddd83-07fb-4d79-bfc1-f8b1aaa9bffd', 'Sandamu', 'Sandamu (DA)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', 'ddd37713-d3db-45dc-a4c2-10a6d3ffae4a', 3, 'u', 'admin', '2015-07-09 10:07:00.050172', 33);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('1a01f445-0151-4da7-a57c-a6d7e1c5fe09', 'Zango', 'Zango (DA)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', 'e6b7451f-5687-4965-8391-0bd46ea11ec6', 4, 'u', 'admin', '2015-07-09 10:07:00.050172', 34);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('5c6537c4-9159-4c76-a0f3-f696e3469e42', 'Batagarawa', 'Batagarawa (KA)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', 'bc21e1a9-7765-4564-b377-715c59dd55b4', 3, 'u', 'admin', '2015-07-09 10:07:00.050172', 2);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('93d63d6c-8d22-40e9-ab87-741c542caad2', 'Batsari', 'Batsari (DU)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', '3762adbb-436b-477d-ba95-072f012eb9d7', 3, 'u', 'admin', '2015-07-09 10:07:00.050172', 3);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('8a4799f5-8a08-4982-962f-45cd44668c66', 'Baure', 'Baure (DA)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', '6443bb27-0b56-4265-99c8-534498af0cde', 3, 'u', 'admin', '2015-07-09 10:07:00.050172', 4);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('b7ffb749-b315-42ef-a689-55dd08810102', 'DutsinMa', 'DutsinMa (DU)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', 'c2289d0a-6d55-4808-963b-4e84ccdbbbb9', 3, 'u', 'admin', '2015-07-09 10:07:00.050172', 12);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('dbe13bc0-a2fc-4e6d-a2cc-5a6b1173ebbf', 'Faskari', 'Faskari (FU)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', '880ead93-1c97-4140-92e8-ccb02fa9ba73', 3, 'u', 'admin', '2015-07-09 10:07:00.050172', 13);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('758987d3-79fd-42ec-95b1-7db19117d2de', 'Funtua', 'Funtua (FU)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', 'a4d15141-5d65-4f5c-b8d6-7303f5e77dee', 3, 'u', 'admin', '2015-07-09 10:07:00.050172', 14);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('c84d3e3a-2db3-405e-beeb-863979f36dd7', 'Jibia', 'Jibia (KA)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', '7f8b68b7-e783-4e06-b046-c4391f228c04', 3, 'u', 'admin', '2015-07-09 10:07:00.050172', 16);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('6b6cbcf3-3eb4-44d4-91c0-8606bd32b2c4', 'Kaita', 'Kaita (KA)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', '3030b4a6-36b3-4cca-8662-4e2df6faaf60', 3, 'u', 'admin', '2015-07-09 10:07:00.050172', 18);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('bc23bde4-085a-4eec-ad45-60bb377d3acf', 'Katsina', 'Katsina (KA)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', 'fcee3a5e-4688-443f-9f7f-e17931cf24fa', 3, 'u', 'admin', '2015-07-09 10:07:00.050172', 21);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('04474014-f5e5-42da-9a64-f85091fcc7b4', 'Kurfi', 'Kurfi (DU)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', '97740050-c215-436a-8dad-79e577893326', 3, 'u', 'admin', '2015-07-09 10:07:00.050172', 22);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('53f6c3c0-22b2-4f2a-94c1-2825eaa66d2e', 'Mai''Adua', 'Mai''Adua (DA)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', 'd6ab1c77-a55f-4ea1-aeb6-3ef3c1ddace1', 3, 'u', 'admin', '2015-07-09 10:07:00.050172', 24);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('333678f0-9c28-41bb-942d-6c71046b94f5', 'Rimi', 'Rimi (KA)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', 'a0955dbd-5953-4e82-9c04-c4bfa4779132', 3, 'u', 'admin', '2015-07-09 10:07:00.050172', 30);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('e7c25cfe-fda9-406a-a0c9-525c91a055c1', 'G', 'Government::::::::::::::::::::::::::::::::', '52fe15f9-2efe-4214-a133-d0af76208ce3', 'cc3a89bc-18b8-11e5-8258-02006fc20003', 2, 'u', 'db:postgres', '2015-07-08 13:24:19.424803', 1);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('ead10e1e-31c5-498b-959e-3b8339a49ef8', 'Agriculture', 'Agriculture::::::::::::::::::::::::::::::::', '2f573234-4f03-4546-a90c-3d8939d4efd7', 'cc3a90ec-18b8-11e5-a861-02006fc20003', 2, 'u', 'db:postgres', '2015-07-08 13:24:19.424803', 1);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('f1c5c74f-de96-4e2b-9f9e-8933d97b9a23', 'Daura', 'Daura::::::::::::::::::::::::::::::::', 'b723e6a7-3606-4866-bc7e-87fe0fa44fd3', '72360115-0e40-4d03-a25e-85375bbe8838', 2, 'u', 'test', '2015-07-08 13:24:19.424803', 1);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('c1effd7d-c5aa-4958-ad99-d6bdb8c29fa9', 'Bakori', 'Bakori (FU)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', '40f39774-28d2-4988-b1ba-8579cf0649da', 2, 'u', 'admin', '2015-07-08 13:24:19.424803', 1);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('71cea65e-bf92-4488-923f-9b477b3cccde', 'Dutsinma', 'Dutsinma::::::::::::::::::::::::::::::::', 'b723e6a7-3606-4866-bc7e-87fe0fa44fd3', 'b55243a3-326b-43f0-a917-ad8102dbaa07', 3, 'u', 'admin', '2015-07-09 10:39:43.346667', 2);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('59da5a44-6db0-413e-b3ef-adc87e79fd9e', 'Funtua', 'Funtua::::::::::::::::::::::::::::::::', 'b723e6a7-3606-4866-bc7e-87fe0fa44fd3', '4a0ee6c5-9869-4e2d-ab41-ae9a825cb4a8', 3, 'u', 'admin', '2015-07-09 10:39:43.346667', 3);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('e49eb28b-ad92-48ec-bef5-e6b48a80e0e2', 'Katsina', 'Katsina::::::::::::::::::::::::::::::::', 'b723e6a7-3606-4866-bc7e-87fe0fa44fd3', '171d1fbc-d0c1-4459-9d18-fb6475b2003b', 4, 'u', 'admin', '2015-07-09 10:39:43.346667', 5);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('82bb2c75-bc50-4998-addd-e9e4c2307528', 'BuidingSite', 'Building Site::::::::::::::::::::::::::::::::', '2f573234-4f03-4546-a90c-3d8939d4efd7', 'cc3a8e94-18b8-11e5-8afe-02006fc20003', 3, 'u', 'admin', '2015-07-09 10:39:43.346667', 2);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('0f9d3814-d133-49f9-bd2c-7e5747a3e586', 'commercial', 'Commercial::::::::::::::::::::Komerciale::::::::::::', '2f573234-4f03-4546-a90c-3d8939d4efd7', 'cc3a9a7e-18b8-11e5-8b11-02006fc20003', 3, 'u', 'admin', '2015-07-09 10:39:43.346667', 3);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('80370e9e-bfb4-43d3-bdab-d833e1a5490b', 'residence', 'Residence::::::::::::::::::::::::::::::::', '2f573234-4f03-4546-a90c-3d8939d4efd7', 'cc3a936c-18b8-11e5-b488-02006fc20003', 3, 'u', 'admin', '2015-07-09 10:39:43.346667', 4);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('11b82fc2-c3bf-4cb0-850f-926468dbe9c8', 'P', 'Private::::::::::::::::::::::::::::::::', '52fe15f9-2efe-4214-a133-d0af76208ce3', 'cc3a8c3c-18b8-11e5-bbb3-02006fc20003', 3, 'u', 'admin', '2015-07-09 10:39:43.346667', 2);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('19f7aadf-c431-40ef-a7d7-028dc5c8266b', 'Bindawa', 'Bindawa (MA)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', 'b478034a-6522-46c6-81e1-396b6a26e297', 4, 'u', 'admin', '2015-07-09 10:07:00.050172', 5);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('0033aaad-8a19-4a75-baa7-4fc4cf2f96dc', 'Charanchi', 'Charanchi (MA)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', '525bda44-9bfe-4efa-a2a7-f383fc06dfab', 4, 'u', 'admin', '2015-07-09 10:07:00.050172', 6);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('22bd7f82-df6f-4964-bb36-193a63e30923', 'Dandume', 'Dandume (FU)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', 'a1bf9f10-52b0-4a4d-82bb-b5de6b377587', 4, 'u', 'admin', '2015-07-09 10:07:00.050172', 7);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('a3b54eb4-381f-4135-9cb5-507004536616', 'Danja', 'Danja (FU)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', '8de1f999-e345-4a23-a81d-b5c74db9df45', 4, 'u', 'admin', '2015-07-09 10:07:00.050172', 8);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('6efaa9cd-4160-4955-9dfb-b39ab1ebdc89', 'DanMusa', 'DanMusa (DU)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', 'd3233168-d90f-4b15-a7d2-4d03e2440cea', 4, 'u', 'admin', '2015-07-09 10:07:00.050172', 9);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('978f64fd-c6a6-4c56-89e6-31216f5c6046', 'Daura', 'Daura (DA)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', '0012d550-18cd-48a5-af39-825b51842c3d', 4, 'u', 'admin', '2015-07-09 10:07:00.050172', 10);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('c473094f-1462-42ae-ba94-b2d6f9a561c7', 'Dutsi', 'Dutsi (MA)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', '8f1a3f51-fc87-4470-90db-00a5d647cf1c', 4, 'u', 'admin', '2015-07-09 10:07:00.050172', 11);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('d6429e27-4afc-472d-a0a4-ad6f7adf5109', 'Ingawa', 'Ingawa (KN)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', '3b684449-bcd1-4359-b8dc-5cfa3855918e', 4, 'u', 'admin', '2015-07-09 10:07:00.050172', 15);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('e1d8ef4b-c971-4b45-9a2d-89fd8289f41a', 'Kafur', 'Kafur (ML)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', 'cb7c5716-c90a-4481-9a0b-f62f2f17274d', 4, 'u', 'admin', '2015-07-09 10:07:00.050172', 17);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('f13927e5-89e8-4611-ab00-af8fd31389c5', 'Kankara', 'Kankara (ML)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', '52424cbb-e963-429b-a79c-c9f81b9de795', 4, 'u', 'admin', '2015-07-09 10:07:00.050172', 19);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('875cd44c-9281-4fa9-83cd-fc98d51cc32c', 'Kankia', 'Kankia (KN)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', '9874aaf9-fd02-4090-9f78-5675c332532d', 4, 'u', 'admin', '2015-07-09 10:07:00.050172', 20);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('67a91f4c-f208-41c0-b119-0ffb8dd99c47', 'Kusada', 'Kusada (KN)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', '73ee1f05-2cad-4b73-97c3-cd76d750bac6', 4, 'u', 'admin', '2015-07-09 10:07:00.050172', 23);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('435ba764-5286-4481-bb0e-7de80afaa199', 'Mani', 'Mani (MA)::::::::::::::::::::::::::::::::', '68c6c663-abaa-4924-be95-9ef57a18d739', '8144568c-9eb7-4eaf-8688-d7eb1b3e38ed', 4, 'u', 'admin', '2015-07-09 10:07:00.050172', 26);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('739b0f42-fc66-4da0-abbb-e8763a6882fe', 'Kankia', 'Kankia::::::::::::::::::::::::::::::::', 'b723e6a7-3606-4866-bc7e-87fe0fa44fd3', '1561fdc6-d732-44ec-aebe-80155de2e84e', 3, 'u', 'admin', '2015-07-09 10:39:43.346667', 4);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('e5c1721a-bd2f-4d85-8432-309077b2f31c', 'Malumfashi', 'Malumfashi::::::::::::::::::::::::::::::::', 'b723e6a7-3606-4866-bc7e-87fe0fa44fd3', '5d1ca228-c263-444b-8626-d6e152105447', 3, 'u', 'admin', '2015-07-09 10:39:43.346667', 6);
INSERT INTO field_constraint_option (id, name, display_name, field_constraint_id, rowidentifier, rowversion, change_action, change_user, change_time, item_order) VALUES ('bc2089de-fb3b-41d8-b78e-d00ad2676134', 'Mani', 'Mani::::::::::::::::::::::::::::::::', 'b723e6a7-3606-4866-bc7e-87fe0fa44fd3', 'f16caebb-1773-4635-8fc9-64e46bcb83ab', 3, 'u', 'admin', '2015-07-09 10:39:43.346667', 7);

--
-- PostgreSQL database dump complete
--

