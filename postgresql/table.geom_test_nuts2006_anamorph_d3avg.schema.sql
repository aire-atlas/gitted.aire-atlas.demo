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
-- Name: geom_test_nuts2006_anamorph_d3avg; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE geom_test_nuts2006_anamorph_d3avg (
    ogc_fid integer NOT NULL,
    wkb_geometry geometry,
    pop_t_2003 numeric(19,11),
    id character(6),
    CONSTRAINT enforce_dims_wkb_geometry CHECK ((ndims(wkb_geometry) = 2)),
    CONSTRAINT enforce_srid_wkb_geometry CHECK ((st_srid(wkb_geometry) = 3035))
);


ALTER TABLE public.geom_test_nuts2006_anamorph_d3avg OWNER TO aire;

--
-- Name: geom_test_nuts2006_anamorph_d3avg_ogc_fid_seq; Type: SEQUENCE; Schema: public; Owner: aire
--

CREATE SEQUENCE geom_test_nuts2006_anamorph_d3avg_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.geom_test_nuts2006_anamorph_d3avg_ogc_fid_seq OWNER TO aire;

--
-- Name: geom_test_nuts2006_anamorph_d3avg_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aire
--

ALTER SEQUENCE geom_test_nuts2006_anamorph_d3avg_ogc_fid_seq OWNED BY geom_test_nuts2006_anamorph_d3avg.ogc_fid;


--
-- Name: ogc_fid; Type: DEFAULT; Schema: public; Owner: aire
--

ALTER TABLE ONLY geom_test_nuts2006_anamorph_d3avg ALTER COLUMN ogc_fid SET DEFAULT nextval('geom_test_nuts2006_anamorph_d3avg_ogc_fid_seq'::regclass);


--
-- Name: geom_test_nuts2006_anamorph_d3avg_pk; Type: CONSTRAINT; Schema: public; Owner: aire; Tablespace: 
--

ALTER TABLE ONLY geom_test_nuts2006_anamorph_d3avg
    ADD CONSTRAINT geom_test_nuts2006_anamorph_d3avg_pk PRIMARY KEY (ogc_fid);


--
-- PostgreSQL database dump complete
--

