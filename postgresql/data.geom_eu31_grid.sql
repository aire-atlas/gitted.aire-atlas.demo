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
-- Data for Name: geom_eu31_grid; Type: TABLE DATA; Schema: public; Owner: aire
--

COPY geom_eu31_grid (ogc_fid, wkb_geometry, id, "50km", "100km", "200km", "300km") FROM stdin;
\.


--
-- Name: geom_eu31_grid_ogc_fid_seq; Type: SEQUENCE SET; Schema: public; Owner: aire
--

SELECT pg_catalog.setval('geom_eu31_grid_ogc_fid_seq', 1, false);


--
-- PostgreSQL database dump complete
--

