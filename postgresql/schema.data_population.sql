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
-- Name: data_population; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE data_population (
    ogc_fid integer NOT NULL,
    oldid character varying(6),
    level character varying,
    nuts_version integer,
    name character varying,
    popt_2007 integer,
    source1 character varying,
    popf_2007 integer,
    source2 character varying,
    popm_2007 integer,
    source3 character varying,
    popf0_4_2007 integer,
    source4 character varying,
    popf5_9_2007 integer,
    source5 character varying,
    popf10_14_2007 integer,
    source6 character varying,
    popf15_19_2007 integer,
    source7 character varying,
    popf20_24_2007 integer,
    source8 character varying,
    popf25_29_2007 integer,
    source9 character varying,
    popf30_34_2007 integer,
    source10 character varying,
    popf35_39_2007 integer,
    source11 character varying,
    popf40_44_2007 integer,
    source12 character varying,
    popf45_49_2007 integer,
    source13 character varying,
    popf50_54_2007 integer,
    source14 character varying,
    popf55_59_2007 integer,
    source15 character varying,
    popf60_64_2007 integer,
    source16 character varying,
    popf65_69_2007 integer,
    source17 character varying,
    popf70_74_2007 integer,
    source18 character varying,
    popf75_79_2007 integer,
    source19 character varying,
    popf80_84_2007 integer,
    source20 character varying,
    popf85_over_2007 integer,
    source21 character varying,
    popm0_4_2007 integer,
    source22 character varying,
    popm5_9_2007 integer,
    source23 character varying,
    popm10_14_2007 integer,
    source24 character varying,
    popm15_19_2007 integer,
    source25 character varying,
    popm20_24_2007 integer,
    source26 character varying,
    popm25_29_2007 integer,
    source27 character varying,
    popm30_34_2007 integer,
    source28 character varying,
    popm35_39_2007 integer,
    source29 character varying,
    popm40_44_2007 integer,
    source30 character varying,
    popm45_49_2007 integer,
    source31 character varying,
    popm50_54_2007 integer,
    source32 character varying,
    popm55_59_2007 integer,
    source33 character varying,
    popm60_64_2007 integer,
    source34 character varying,
    popm65_69_2007 integer,
    source35 character varying,
    popm70_74_2007 integer,
    source36 character varying,
    popm75_79_2007 integer,
    source37 character varying,
    popm80_84_2007 integer,
    source38 character varying,
    popm85_over_2007 integer,
    source39 character varying,
    popfem_0_15_2007 integer,
    source40 character varying,
    popfem_15_64_2007 integer,
    source41 character varying,
    popfem_65_over_2007 integer,
    source42 character varying,
    popmale_0_15_2007 integer,
    source43 character varying,
    popmale_15_64_2007 integer,
    source44 character varying,
    popmale_65_over_2007 integer,
    source45 character varying,
    nbdeath_2007 double precision,
    source46 character varying,
    nbbirth_2007 double precision,
    source47 character varying,
    lifeexpectfem_2007 double precision,
    source48 character varying,
    lifeexpectmale_2007 double precision,
    source49 character varying,
    lifeexpecttot_2007 double precision,
    source50 character varying,
    totfertrate_2007 double precision,
    source51 character varying,
    id character(6),
    nombre_un integer,
    pop_0_15_2007 integer,
    pop_15_64_2007 integer,
    pop_65_over_2007 integer
);


ALTER TABLE public.data_population OWNER TO aire;

--
-- Name: data_population_ogc_fid_seq; Type: SEQUENCE; Schema: public; Owner: aire
--

CREATE SEQUENCE data_population_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_population_ogc_fid_seq OWNER TO aire;

--
-- Name: data_population_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aire
--

ALTER SEQUENCE data_population_ogc_fid_seq OWNED BY data_population.ogc_fid;


--
-- Name: ogc_fid; Type: DEFAULT; Schema: public; Owner: aire
--

ALTER TABLE ONLY data_population ALTER COLUMN ogc_fid SET DEFAULT nextval('data_population_ogc_fid_seq'::regclass);


--
-- Name: data_population_pk; Type: CONSTRAINT; Schema: public; Owner: aire; Tablespace: 
--

ALTER TABLE ONLY data_population
    ADD CONSTRAINT data_population_pk PRIMARY KEY (ogc_fid);


--
-- PostgreSQL database dump complete
--

