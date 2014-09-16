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
-- Data for Name: data_education; Type: TABLE DATA; Schema: public; Owner: aire
--

COPY data_education (ogc_fid, level, nuts_version, name, fem_lev_educ_0_2_2009, source1, fem_lev_educ_3_4_2009, source2, fem_lev_educ_5_6_2009, source3, fem_lev_educ_nrp_2009, source4, fem_lev_educ_total_2009, source5, male_lev_educ_0_2_2009, source6, male_lev_educ_3_4_2009, source7, male_lev_educ_5_6_2009, source8, male_lev_educ_nrp_2009, source9, male_lev_educ_total_2009, source10, tot_lev_educ_0_2_2009, source11, tot_lev_educ_3_4_2009, source12, tot_lev_educ_5_6_2009, source13, tot_lev_educ_nrp_2009, source14, tot_lev_educ_total_2009, source15, nb_stud_niveduc_0_2007, source16, nb_stud_niveduc_0_2008, source17, nb_stud_niveduc_1_3_2007, source18, nb_stud_niveduc_1_3_2008, source19, nb_stud_niveduc_1_2007, source20, nb_stud_niveduc_1_2008, source21, nb_stud_niveduc_2_2007, source22, nb_stud_niveduc_2_2008, source23, nb_stud_niveduc_3_2007, source24, nb_stud_niveduc_3_2008, source25, nb_stud_niveduc_3_gen_2007, source26, nb_stud_niveduc_3_gen_2008, source27, nb_stud_niveduc_3_pro_2007, source28, nb_stud_niveduc_3_pro_2008, source29, nb_stud_niveduc_4_2007, source30, nb_stud_niveduc_4_2008, source31, nb_stud_niveduc_4_gen_2007, source32, nb_stud_niveduc_4_gen_2008, source33, nb_stud_niveduc_4_pro_2007, source34, nb_stud_niveduc_4_pro_2008, source35, nb_stud_niveduc_5_6_2007, source36, nb_stud_niveduc_5_6_2008, source37, nb_stud_niveduc_5_gen_2007, source38, nb_stud_niveduc_5_gen_2008, source39, nb_stud_niveduc_5_pro_2007, source40, nb_stud_niveduc_5_pro_2008, source41, nb_stud_niveduc_6_2007, source42, nb_stud_niveduc_6_2008, source43, nb_stud_niveduc_unk_2007, source44, nb_stud_niveduc_unk_2008, source45, nb_stud_total_2007, source46, nb_stud_total_2008, source47, id) FROM stdin;
\.


--
-- Name: data_education_ogc_fid_seq; Type: SEQUENCE SET; Schema: public; Owner: aire
--

SELECT pg_catalog.setval('data_education_ogc_fid_seq', 1, false);


--
-- PostgreSQL database dump complete
--

