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
-- Name: geom_eu34_nuts2_2006_poly; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE geom_eu34_nuts2_2006_poly (
    ogc_fid integer,
    wkb_geometry geometry,
    id character(10)
);


ALTER TABLE public.geom_eu34_nuts2_2006_poly OWNER TO aire;

--
-- PostgreSQL database dump complete
--

