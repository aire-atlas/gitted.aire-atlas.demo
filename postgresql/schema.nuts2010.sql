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
-- Name: nuts2010; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE nuts2010 (
    id character(6),
    name character varying,
    nuts0 integer,
    nuts1 integer,
    nuts2 integer,
    nuts23 integer,
    nuts3 integer,
    zoning character varying
);


ALTER TABLE public.nuts2010 OWNER TO aire;

--
-- PostgreSQL database dump complete
--

