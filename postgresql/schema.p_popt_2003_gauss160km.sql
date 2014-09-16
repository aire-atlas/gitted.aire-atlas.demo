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
-- Name: p_popt_2003_gauss160km; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE p_popt_2003_gauss160km (
    oid integer NOT NULL,
    stock double precision,
    wkb_geometry geometry,
    CONSTRAINT enforce_dims_wkb_geometry CHECK ((ndims(wkb_geometry) = 2)),
    CONSTRAINT enforce_geotype_wkb_geometry CHECK (((geometrytype(wkb_geometry) = 'POINT'::text) OR (wkb_geometry IS NULL))),
    CONSTRAINT enforce_srid_wkb_geometry CHECK ((srid(wkb_geometry) = 32767))
);


ALTER TABLE public.p_popt_2003_gauss160km OWNER TO aire;

--
-- Name: p_popt_2003_gauss160km_oid_seq; Type: SEQUENCE; Schema: public; Owner: aire
--

CREATE SEQUENCE p_popt_2003_gauss160km_oid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.p_popt_2003_gauss160km_oid_seq OWNER TO aire;

--
-- Name: p_popt_2003_gauss160km_oid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aire
--

ALTER SEQUENCE p_popt_2003_gauss160km_oid_seq OWNED BY p_popt_2003_gauss160km.oid;


--
-- Name: oid; Type: DEFAULT; Schema: public; Owner: aire
--

ALTER TABLE ONLY p_popt_2003_gauss160km ALTER COLUMN oid SET DEFAULT nextval('p_popt_2003_gauss160km_oid_seq'::regclass);


--
-- PostgreSQL database dump complete
--

