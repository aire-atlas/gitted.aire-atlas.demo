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
-- Data for Name: anam_eu31_nuts2006_gdp2007; Type: TABLE DATA; Schema: public; Owner: aire
--

COPY anam_eu31_nuts2006_gdp2007 (ogc_fid, id, gdp_2007, nuts0, nuts1, nuts2, nuts23, nuts3) FROM stdin;
\.


--
-- Name: anam_eu31_nuts2006_gdp2007_ogc_fid_seq; Type: SEQUENCE SET; Schema: public; Owner: aire
--

SELECT pg_catalog.setval('anam_eu31_nuts2006_gdp2007_ogc_fid_seq', 1, false);


--
-- PostgreSQL database dump complete
--

