--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: data_education; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE data_education (
    ogc_fid integer NOT NULL,
    level character varying,
    nuts_version integer,
    name character varying,
    fem_lev_educ_0_2_2009 double precision,
    source1 character varying,
    fem_lev_educ_3_4_2009 double precision,
    source2 character varying,
    fem_lev_educ_5_6_2009 double precision,
    source3 character varying,
    fem_lev_educ_nrp_2009 double precision,
    source4 character varying,
    fem_lev_educ_total_2009 double precision,
    source5 character varying,
    male_lev_educ_0_2_2009 double precision,
    source6 character varying,
    male_lev_educ_3_4_2009 double precision,
    source7 character varying,
    male_lev_educ_5_6_2009 double precision,
    source8 character varying,
    male_lev_educ_nrp_2009 double precision,
    source9 character varying,
    male_lev_educ_total_2009 double precision,
    source10 character varying,
    tot_lev_educ_0_2_2009 double precision,
    source11 character varying,
    tot_lev_educ_3_4_2009 double precision,
    source12 character varying,
    tot_lev_educ_5_6_2009 double precision,
    source13 character varying,
    tot_lev_educ_nrp_2009 double precision,
    source14 character varying,
    tot_lev_educ_total_2009 double precision,
    source15 character varying,
    nb_stud_niveduc_0_2007 integer,
    source16 character varying,
    nb_stud_niveduc_0_2008 integer,
    source17 character varying,
    nb_stud_niveduc_1_3_2007 integer,
    source18 character varying,
    nb_stud_niveduc_1_3_2008 integer,
    source19 character varying,
    nb_stud_niveduc_1_2007 integer,
    source20 character varying,
    nb_stud_niveduc_1_2008 integer,
    source21 character varying,
    nb_stud_niveduc_2_2007 integer,
    source22 character varying,
    nb_stud_niveduc_2_2008 integer,
    source23 character varying,
    nb_stud_niveduc_3_2007 integer,
    source24 character varying,
    nb_stud_niveduc_3_2008 integer,
    source25 character varying,
    nb_stud_niveduc_3_gen_2007 integer,
    source26 character varying,
    nb_stud_niveduc_3_gen_2008 integer,
    source27 character varying,
    nb_stud_niveduc_3_pro_2007 integer,
    source28 character varying,
    nb_stud_niveduc_3_pro_2008 integer,
    source29 character varying,
    nb_stud_niveduc_4_2007 integer,
    source30 character varying,
    nb_stud_niveduc_4_2008 integer,
    source31 character varying,
    nb_stud_niveduc_4_gen_2007 integer,
    source32 character varying,
    nb_stud_niveduc_4_gen_2008 integer,
    source33 character varying,
    nb_stud_niveduc_4_pro_2007 integer,
    source34 character varying,
    nb_stud_niveduc_4_pro_2008 integer,
    source35 character varying,
    nb_stud_niveduc_5_6_2007 integer,
    source36 character varying,
    nb_stud_niveduc_5_6_2008 integer,
    source37 character varying,
    nb_stud_niveduc_5_gen_2007 integer,
    source38 character varying,
    nb_stud_niveduc_5_gen_2008 integer,
    source39 character varying,
    nb_stud_niveduc_5_pro_2007 integer,
    source40 character varying,
    nb_stud_niveduc_5_pro_2008 integer,
    source41 character varying,
    nb_stud_niveduc_6_2007 integer,
    source42 character varying,
    nb_stud_niveduc_6_2008 integer,
    source43 character varying,
    nb_stud_niveduc_unk_2007 integer,
    source44 character varying,
    nb_stud_niveduc_unk_2008 integer,
    source45 character varying,
    nb_stud_total_2007 integer,
    source46 character varying,
    nb_stud_total_2008 integer,
    source47 character varying,
    id character(6)
);


ALTER TABLE public.data_education OWNER TO aire;

--
-- Name: data_education_ogc_fid_seq; Type: SEQUENCE; Schema: public; Owner: aire
--

CREATE SEQUENCE data_education_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_education_ogc_fid_seq OWNER TO aire;

--
-- Name: data_education_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aire
--

ALTER SEQUENCE data_education_ogc_fid_seq OWNED BY data_education.ogc_fid;


--
-- Name: ogc_fid; Type: DEFAULT; Schema: public; Owner: aire
--

ALTER TABLE ONLY data_education ALTER COLUMN ogc_fid SET DEFAULT nextval('data_education_ogc_fid_seq'::regclass);


--
-- Name: data_education_pk; Type: CONSTRAINT; Schema: public; Owner: aire; Tablespace: 
--

ALTER TABLE ONLY data_education
    ADD CONSTRAINT data_education_pk PRIMARY KEY (ogc_fid);


--
-- PostgreSQL database dump complete
--

