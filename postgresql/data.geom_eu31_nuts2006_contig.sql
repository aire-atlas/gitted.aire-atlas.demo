--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: geom_eu31_nuts2006_contig; Type: TABLE DATA; Schema: public; Owner: aire
--

COPY geom_eu31_nuts2006_contig (ogc_fid, wkb_geometry, id, id_a, id_b, level0, level1, level2, level3, level23) FROM stdin;
\.


--
-- Name: geom_eu31_nuts2006_contig_ogc_fid_seq; Type: SEQUENCE SET; Schema: public; Owner: aire
--

SELECT pg_catalog.setval('geom_eu31_nuts2006_contig_ogc_fid_seq', 1, false);


--
-- PostgreSQL database dump complete
--

