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
-- Name: data_economy; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE data_economy (
    ogc_fid integer NOT NULL,
    level character varying,
    nuts_version integer,
    name character varying,
    gdp_2001 double precision,
    source1 character varying,
    gdp_2007 double precision,
    source2 character varying,
    gdp_ppp_2001 double precision,
    source3 character varying,
    gdp_ppp_2007 double precision,
    source4 character varying,
    rd_exp_tot_2007 double precision,
    source5 character varying,
    rd_exp_bes_2007 double precision,
    source6 character varying,
    rd_exp_gov_2007 double precision,
    source7 character varying,
    rd_exp_hes_2007 double precision,
    source8 character varying,
    rd_exp_pnp_2007 double precision,
    source9 character varying,
    id character(6)
);


ALTER TABLE public.data_economy OWNER TO aire;

--
-- Name: data_economy_ogc_fid_seq; Type: SEQUENCE; Schema: public; Owner: aire
--

CREATE SEQUENCE data_economy_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_economy_ogc_fid_seq OWNER TO aire;

--
-- Name: data_economy_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aire
--

ALTER SEQUENCE data_economy_ogc_fid_seq OWNED BY data_economy.ogc_fid;


--
-- Name: ogc_fid; Type: DEFAULT; Schema: public; Owner: aire
--

ALTER TABLE ONLY data_economy ALTER COLUMN ogc_fid SET DEFAULT nextval('data_economy_ogc_fid_seq'::regclass);


--
-- Name: data_economy_pk; Type: CONSTRAINT; Schema: public; Owner: aire; Tablespace: 
--

ALTER TABLE ONLY data_economy
    ADD CONSTRAINT data_economy_pk PRIMARY KEY (ogc_fid);


--
-- PostgreSQL database dump complete
--

