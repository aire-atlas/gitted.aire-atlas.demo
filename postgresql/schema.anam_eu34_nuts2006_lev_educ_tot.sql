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
-- Name: anam_eu34_nuts2006_lev_educ_tot; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE anam_eu34_nuts2006_lev_educ_tot (
    ogc_fid integer NOT NULL,
    id character(4),
    fid_1 numeric(9,0),
    objectid numeric(7,2),
    id_1 character(4),
    name character(63),
    level0 numeric(4,2),
    level1 numeric(4,2),
    level2 numeric(4,2),
    level23 numeric(4,2),
    level3 numeric(4,2),
    zoning character(4),
    data__leve character(6),
    data__nuts numeric(7,2),
    tot_lev__4 numeric(7,2),
    source numeric(4,2)
);


ALTER TABLE public.anam_eu34_nuts2006_lev_educ_tot OWNER TO aire;

--
-- Name: anam_eu34_nuts2006_lev_educ_tot_ogc_fid_seq; Type: SEQUENCE; Schema: public; Owner: aire
--

CREATE SEQUENCE anam_eu34_nuts2006_lev_educ_tot_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.anam_eu34_nuts2006_lev_educ_tot_ogc_fid_seq OWNER TO aire;

--
-- Name: anam_eu34_nuts2006_lev_educ_tot_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aire
--

ALTER SEQUENCE anam_eu34_nuts2006_lev_educ_tot_ogc_fid_seq OWNED BY anam_eu34_nuts2006_lev_educ_tot.ogc_fid;


--
-- Name: ogc_fid; Type: DEFAULT; Schema: public; Owner: aire
--

ALTER TABLE ONLY anam_eu34_nuts2006_lev_educ_tot ALTER COLUMN ogc_fid SET DEFAULT nextval('anam_eu34_nuts2006_lev_educ_tot_ogc_fid_seq'::regclass);


--
-- Name: anam_eu34_nuts2006_lev_educ_tot_pk; Type: CONSTRAINT; Schema: public; Owner: aire; Tablespace: 
--

ALTER TABLE ONLY anam_eu34_nuts2006_lev_educ_tot
    ADD CONSTRAINT anam_eu34_nuts2006_lev_educ_tot_pk PRIMARY KEY (ogc_fid);


--
-- PostgreSQL database dump complete
--

