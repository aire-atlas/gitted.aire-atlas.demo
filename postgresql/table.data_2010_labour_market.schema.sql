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
-- Name: data_2010_labour_market; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE data_2010_labour_market (
    id character(6),
    name character varying,
    nutsversion integer,
    level character varying,
    act2010 double precision,
    unemp2010 double precision,
    emp2010 double precision
);


ALTER TABLE public.data_2010_labour_market OWNER TO aire;

--
-- PostgreSQL database dump complete
--

