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
-- Name: anam_eu31_nuts2006_gdpppp2007; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE anam_eu31_nuts2006_gdpppp2007 (
    ogc_fid integer NOT NULL,
    id character(5),
    fid_1 numeric(9,0),
    objectid numeric(7,2),
    id_1 character(5),
    name character(70),
    level0 numeric(4,2),
    level1 numeric(4,2),
    level2 numeric(4,2),
    level23 numeric(4,2),
    level3 numeric(4,2),
    zoning character(4),
    data__leve character(6),
    data__nuts numeric(7,2),
    gdp_ppp_20 numeric(9,2),
    data__so numeric(4,2)
);


ALTER TABLE public.anam_eu31_nuts2006_gdpppp2007 OWNER TO aire;

--
-- Name: anam_eu31_nuts2006_gdpppp2007_ogc_fid_seq; Type: SEQUENCE; Schema: public; Owner: aire
--

CREATE SEQUENCE anam_eu31_nuts2006_gdpppp2007_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.anam_eu31_nuts2006_gdpppp2007_ogc_fid_seq OWNER TO aire;

--
-- Name: anam_eu31_nuts2006_gdpppp2007_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aire
--

ALTER SEQUENCE anam_eu31_nuts2006_gdpppp2007_ogc_fid_seq OWNED BY anam_eu31_nuts2006_gdpppp2007.ogc_fid;


--
-- Name: ogc_fid; Type: DEFAULT; Schema: public; Owner: aire
--

ALTER TABLE ONLY anam_eu31_nuts2006_gdpppp2007 ALTER COLUMN ogc_fid SET DEFAULT nextval('anam_eu31_nuts2006_gdpppp2007_ogc_fid_seq'::regclass);


--
-- Name: anam_eu31_nuts2006_gdpppp2007_pk; Type: CONSTRAINT; Schema: public; Owner: aire; Tablespace: 
--

ALTER TABLE ONLY anam_eu31_nuts2006_gdpppp2007
    ADD CONSTRAINT anam_eu31_nuts2006_gdpppp2007_pk PRIMARY KEY (ogc_fid);


--
-- PostgreSQL database dump complete
--

