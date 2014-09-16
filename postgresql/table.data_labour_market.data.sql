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
-- Data for Name: data_labour_market; Type: TABLE DATA; Schema: public; Owner: aire
--

COPY data_labour_market (ogc_fid, level, nuts_version, name, fem_act_pop_2007, source1, male_act_pop_2007, source2, tot_act_pop_2007, source3, act_pop_fem_15_24_2007, source4, act_pop_male_15_24_2007, source5, act_pop_total_15_24_2007, source6, pop_fem_empl_15_24_2007, source7, pop_fem_empl_25_34_2007, source8, pop_fem_empl_35_44_2007, source9, pop_fem_empl_45_54_2007, source10, pop_fem_empl_55_64_2007, source11, pop_fem_empl_65_more_2007, source12, pop_fem_empl_total_2007, source13, pop_male_empl_15_24_2007, source14, pop_male_empl_25_34_2007, source15, pop_male_empl_35_44_2007, source16, pop_male_empl_45_54_2007, source17, pop_male_empl_55_64_2007, source18, pop_male_empl_65_more_2007, source19, pop_male_empl_total_2007, source20, pop_total_empl_15_24_2007, source21, pop_total_empl_25_34_2007, source22, pop_total_empl_35_44_2007, source23, pop_total_empl_45_54_2007, source24, pop_total_empl_55_64_2007, source25, pop_total_empl_65_more_2007, source26, pop_total_empl_2007, source27, nb_unemp_fem_1524_2007, source28, nb_unemp_male_1524_2007, source29, nb_unemp_tot_1524_2007, source30, nb_unemp_fem_15more_2007, source31, nb_unemp_male_15more_2007, source32, nb_unemp_tot_15more_2007, source33, nb_unemp_fem_25more_2007, source34, nb_unemp_male_25more_2007, source35, nb_unemp_tot_25more_2007, source36, nb_lgterm_unemp_2007, source37, nb_empl_agr_2009, source38, nb_empl_ind_2009, source39, nb_empl_constr_2009, source40, nb_empl_wholesale_serv_2009, source41, nb_empl_info_com_2009, source42, nb_empl_fina_2009, source43, nb_empl_estate_2009, source44, nb_empl_scient_tech_2009, source45, nb_empl_public_2009, source46, nb_empl_arts_recreation_2009, source47, nb_empl_nrp_2009, source48, nb_empl_total_2009, source49, id) FROM stdin;
\.


--
-- Name: data_labour_market_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aire
--

SELECT pg_catalog.setval('data_labour_market_id_seq', 1, false);


--
-- Name: data_labour_market_ogc_fid_seq; Type: SEQUENCE SET; Schema: public; Owner: aire
--

SELECT pg_catalog.setval('data_labour_market_ogc_fid_seq', 1, false);


--
-- PostgreSQL database dump complete
--

