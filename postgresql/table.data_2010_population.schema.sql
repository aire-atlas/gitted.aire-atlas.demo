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
-- Name: data_2010_population; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE data_2010_population (
    id character(6),
    name character varying,
    nutsversion integer,
    level character varying,
    birth2010 double precision,
    death2010 double precision,
    pop_t2011 double precision,
    pop_0_14_t2009 double precision,
    pop_15_64_t2009 double precision,
    pop_65plus_t2009 double precision,
    pop_age_t2009 double precision,
    pop_t2008 double precision
);


ALTER TABLE public.data_2010_population OWNER TO aire;

--
-- Name: data_2010_population_popt_2008_seq; Type: SEQUENCE; Schema: public; Owner: aire
--

CREATE SEQUENCE data_2010_population_popt_2008_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_2010_population_popt_2008_seq OWNER TO aire;

--
-- Name: data_2010_population_popt_2008_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aire
--

ALTER SEQUENCE data_2010_population_popt_2008_seq OWNED BY data_2010_population.pop_t2008;


--
-- PostgreSQL database dump complete
--

