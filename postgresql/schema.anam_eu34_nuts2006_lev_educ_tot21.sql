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
-- Name: anam_eu34_nuts2006_lev_educ_tot21; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE anam_eu34_nuts2006_lev_educ_tot21 (
    ogc_fid integer NOT NULL,
    id character(4),
    nuts0 numeric(4,0),
    nuts1 numeric(4,0),
    nuts2 numeric(4,0),
    nuts23 numeric(4,0),
    nuts3 numeric(4,0)
);


ALTER TABLE public.anam_eu34_nuts2006_lev_educ_tot21 OWNER TO aire;

--
-- Name: anam_eu34_nuts2006_lev_educ_tot21_ogc_fid_seq; Type: SEQUENCE; Schema: public; Owner: aire
--

CREATE SEQUENCE anam_eu34_nuts2006_lev_educ_tot21_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.anam_eu34_nuts2006_lev_educ_tot21_ogc_fid_seq OWNER TO aire;

--
-- Name: anam_eu34_nuts2006_lev_educ_tot21_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aire
--

ALTER SEQUENCE anam_eu34_nuts2006_lev_educ_tot21_ogc_fid_seq OWNED BY anam_eu34_nuts2006_lev_educ_tot21.ogc_fid;


--
-- Name: ogc_fid; Type: DEFAULT; Schema: public; Owner: aire
--

ALTER TABLE ONLY anam_eu34_nuts2006_lev_educ_tot21 ALTER COLUMN ogc_fid SET DEFAULT nextval('anam_eu34_nuts2006_lev_educ_tot21_ogc_fid_seq'::regclass);


--
-- Name: anam_eu34_nuts2006_lev_educ_tot21_pk; Type: CONSTRAINT; Schema: public; Owner: aire; Tablespace: 
--

ALTER TABLE ONLY anam_eu34_nuts2006_lev_educ_tot21
    ADD CONSTRAINT anam_eu34_nuts2006_lev_educ_tot21_pk PRIMARY KEY (ogc_fid);


--
-- PostgreSQL database dump complete
--

