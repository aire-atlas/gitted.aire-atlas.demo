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
-- Name: eu34_nuts2_2010_to_grid; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE eu34_nuts2_2010_to_grid (
    ogc_fid integer NOT NULL,
    id character varying,
    nuts character varying,
    pct double precision
);


ALTER TABLE public.eu34_nuts2_2010_to_grid OWNER TO aire;

--
-- Name: eu34_nuts2_2010_to_grid_ogc_fid_seq; Type: SEQUENCE; Schema: public; Owner: aire
--

CREATE SEQUENCE eu34_nuts2_2010_to_grid_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.eu34_nuts2_2010_to_grid_ogc_fid_seq OWNER TO aire;

--
-- Name: eu34_nuts2_2010_to_grid_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aire
--

ALTER SEQUENCE eu34_nuts2_2010_to_grid_ogc_fid_seq OWNED BY eu34_nuts2_2010_to_grid.ogc_fid;


--
-- Name: ogc_fid; Type: DEFAULT; Schema: public; Owner: aire
--

ALTER TABLE ONLY eu34_nuts2_2010_to_grid ALTER COLUMN ogc_fid SET DEFAULT nextval('eu34_nuts2_2010_to_grid_ogc_fid_seq'::regclass);


--
-- Name: eu34_nuts2_2010_to_grid_pk; Type: CONSTRAINT; Schema: public; Owner: aire; Tablespace: 
--

ALTER TABLE ONLY eu34_nuts2_2010_to_grid
    ADD CONSTRAINT eu34_nuts2_2010_to_grid_pk PRIMARY KEY (ogc_fid);


--
-- PostgreSQL database dump complete
--

