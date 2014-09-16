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
-- Name: data_labour_market; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE data_labour_market (
    ogc_fid integer NOT NULL,
    level character varying,
    nuts_version integer,
    name character varying,
    fem_act_pop_2007 double precision,
    source1 character varying,
    male_act_pop_2007 double precision,
    source2 character varying,
    tot_act_pop_2007 double precision,
    source3 character varying,
    act_pop_fem_15_24_2007 double precision,
    source4 character varying,
    act_pop_male_15_24_2007 double precision,
    source5 character varying,
    act_pop_total_15_24_2007 double precision,
    source6 character varying,
    pop_fem_empl_15_24_2007 double precision,
    source7 character varying,
    pop_fem_empl_25_34_2007 double precision,
    source8 character varying,
    pop_fem_empl_35_44_2007 double precision,
    source9 character varying,
    pop_fem_empl_45_54_2007 double precision,
    source10 character varying,
    pop_fem_empl_55_64_2007 double precision,
    source11 character varying,
    pop_fem_empl_65_more_2007 double precision,
    source12 character varying,
    pop_fem_empl_total_2007 double precision,
    source13 character varying,
    pop_male_empl_15_24_2007 double precision,
    source14 character varying,
    pop_male_empl_25_34_2007 double precision,
    source15 character varying,
    pop_male_empl_35_44_2007 double precision,
    source16 character varying,
    pop_male_empl_45_54_2007 double precision,
    source17 character varying,
    pop_male_empl_55_64_2007 double precision,
    source18 character varying,
    pop_male_empl_65_more_2007 double precision,
    source19 character varying,
    pop_male_empl_total_2007 double precision,
    source20 character varying,
    pop_total_empl_15_24_2007 double precision,
    source21 character varying,
    pop_total_empl_25_34_2007 double precision,
    source22 character varying,
    pop_total_empl_35_44_2007 double precision,
    source23 character varying,
    pop_total_empl_45_54_2007 double precision,
    source24 character varying,
    pop_total_empl_55_64_2007 double precision,
    source25 character varying,
    pop_total_empl_65_more_2007 double precision,
    source26 character varying,
    pop_total_empl_2007 double precision,
    source27 character varying,
    nb_unemp_fem_1524_2007 double precision,
    source28 character varying,
    nb_unemp_male_1524_2007 double precision,
    source29 character varying,
    nb_unemp_tot_1524_2007 double precision,
    source30 character varying,
    nb_unemp_fem_15more_2007 double precision,
    source31 character varying,
    nb_unemp_male_15more_2007 double precision,
    source32 character varying,
    nb_unemp_tot_15more_2007 double precision,
    source33 character varying,
    nb_unemp_fem_25more_2007 double precision,
    source34 character varying,
    nb_unemp_male_25more_2007 double precision,
    source35 character varying,
    nb_unemp_tot_25more_2007 double precision,
    source36 character varying,
    nb_lgterm_unemp_2007 double precision,
    source37 character varying,
    nb_empl_agr_2009 double precision,
    source38 character varying,
    nb_empl_ind_2009 double precision,
    source39 character varying,
    nb_empl_constr_2009 double precision,
    source40 character varying,
    nb_empl_wholesale_serv_2009 double precision,
    source41 character varying,
    nb_empl_info_com_2009 double precision,
    source42 character varying,
    nb_empl_fina_2009 double precision,
    source43 character varying,
    nb_empl_estate_2009 double precision,
    source44 character varying,
    nb_empl_scient_tech_2009 double precision,
    source45 character varying,
    nb_empl_public_2009 double precision,
    source46 character varying,
    nb_empl_arts_recreation_2009 double precision,
    source47 character varying,
    nb_empl_nrp_2009 double precision,
    source48 character varying,
    nb_empl_total_2009 double precision,
    source49 character varying,
    id character(6) NOT NULL
);


ALTER TABLE public.data_labour_market OWNER TO aire;

--
-- Name: data_labour_market_id_seq; Type: SEQUENCE; Schema: public; Owner: aire
--

CREATE SEQUENCE data_labour_market_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_labour_market_id_seq OWNER TO aire;

--
-- Name: data_labour_market_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aire
--

ALTER SEQUENCE data_labour_market_id_seq OWNED BY data_labour_market.id;


--
-- Name: data_labour_market_ogc_fid_seq; Type: SEQUENCE; Schema: public; Owner: aire
--

CREATE SEQUENCE data_labour_market_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_labour_market_ogc_fid_seq OWNER TO aire;

--
-- Name: data_labour_market_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aire
--

ALTER SEQUENCE data_labour_market_ogc_fid_seq OWNED BY data_labour_market.ogc_fid;


--
-- Name: ogc_fid; Type: DEFAULT; Schema: public; Owner: aire
--

ALTER TABLE ONLY data_labour_market ALTER COLUMN ogc_fid SET DEFAULT nextval('data_labour_market_ogc_fid_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aire
--

ALTER TABLE ONLY data_labour_market ALTER COLUMN id SET DEFAULT nextval('data_labour_market_id_seq'::regclass);


--
-- Name: data_labour_market_pk; Type: CONSTRAINT; Schema: public; Owner: aire; Tablespace: 
--

ALTER TABLE ONLY data_labour_market
    ADD CONSTRAINT data_labour_market_pk PRIMARY KEY (ogc_fid);


--
-- PostgreSQL database dump complete
--

