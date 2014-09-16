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
-- Data for Name: data_economy; Type: TABLE DATA; Schema: public; Owner: aire
--

COPY data_economy (ogc_fid, level, nuts_version, name, gdp_2001, source1, gdp_2007, source2, gdp_ppp_2001, source3, gdp_ppp_2007, source4, rd_exp_tot_2007, source5, rd_exp_bes_2007, source6, rd_exp_gov_2007, source7, rd_exp_hes_2007, source8, rd_exp_pnp_2007, source9, id) FROM stdin;
\.


--
-- Name: data_economy_ogc_fid_seq; Type: SEQUENCE SET; Schema: public; Owner: aire
--

SELECT pg_catalog.setval('data_economy_ogc_fid_seq', 1, false);


--
-- PostgreSQL database dump complete
--

