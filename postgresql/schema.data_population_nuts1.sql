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
-- Name: data_population_nuts1; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE data_population_nuts1 (
    ogc_fid integer,
    id character(6),
    name character varying,
    popt_2007 integer
);


ALTER TABLE public.data_population_nuts1 OWNER TO aire;

--
-- PostgreSQL database dump complete
--

