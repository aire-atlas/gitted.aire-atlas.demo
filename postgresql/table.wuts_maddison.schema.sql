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
-- Name: wuts_maddison; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE wuts_maddison (
    ogc_fid integer NOT NULL,
    wuts5 character varying,
    wuts5_names character varying,
    eiw_iso character varying,
    pop_1998 double precision,
    gdp_1998 double precision
);


ALTER TABLE public.wuts_maddison OWNER TO aire;

--
-- Name: wuts_maddison_ogc_fid_seq; Type: SEQUENCE; Schema: public; Owner: aire
--

CREATE SEQUENCE wuts_maddison_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wuts_maddison_ogc_fid_seq OWNER TO aire;

--
-- Name: wuts_maddison_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aire
--

ALTER SEQUENCE wuts_maddison_ogc_fid_seq OWNED BY wuts_maddison.ogc_fid;


--
-- Name: ogc_fid; Type: DEFAULT; Schema: public; Owner: aire
--

ALTER TABLE ONLY wuts_maddison ALTER COLUMN ogc_fid SET DEFAULT nextval('wuts_maddison_ogc_fid_seq'::regclass);


--
-- Name: wuts_maddison_pk; Type: CONSTRAINT; Schema: public; Owner: aire; Tablespace: 
--

ALTER TABLE ONLY wuts_maddison
    ADD CONSTRAINT wuts_maddison_pk PRIMARY KEY (ogc_fid);


--
-- PostgreSQL database dump complete
--

