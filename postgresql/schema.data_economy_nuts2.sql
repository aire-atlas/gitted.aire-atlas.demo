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
-- Name: data_economy_nuts2; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE data_economy_nuts2 (
    ogc_fid integer,
    id character(6),
    name character varying,
    gdp_2007 double precision
);


ALTER TABLE public.data_economy_nuts2 OWNER TO aire;

--
-- PostgreSQL database dump complete
--

