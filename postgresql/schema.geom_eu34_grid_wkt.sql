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
-- Name: geom_eu34_grid_wkt; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE geom_eu34_grid_wkt (
    ogc_fid integer,
    wkb_geometry text,
    id character(50),
    "50km" numeric(1,0),
    "100km" numeric(1,0),
    "200km" numeric(1,0),
    "300km" numeric(1,0)
);


ALTER TABLE public.geom_eu34_grid_wkt OWNER TO aire;

--
-- PostgreSQL database dump complete
--

