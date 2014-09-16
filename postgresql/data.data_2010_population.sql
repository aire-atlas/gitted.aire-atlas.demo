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
-- Data for Name: data_2010_population; Type: TABLE DATA; Schema: public; Owner: aire
--

COPY data_2010_population (id, name, nutsversion, level, birth2010, death2010, pop_t2011, pop_0_14_t2009, pop_15_64_t2009, pop_65plus_t2009, pop_age_t2009, pop_t2008) FROM stdin;
\.


--
-- Name: data_2010_population_popt_2008_seq; Type: SEQUENCE SET; Schema: public; Owner: aire
--

SELECT pg_catalog.setval('data_2010_population_popt_2008_seq', 1, false);


--
-- PostgreSQL database dump complete
--

