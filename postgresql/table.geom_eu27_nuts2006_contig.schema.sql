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
-- Name: geom_eu27_nuts2006_contig; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE geom_eu27_nuts2006_contig (
    ogc_fid integer NOT NULL,
    wkb_geometry geometry,
    id character(20),
    id_a character(20),
    id_b character(10),
    nuts0 numeric(1,0),
    nuts1 numeric(1,0),
    nuts2 numeric(1,0),
    nuts3 numeric(1,0),
    nuts23 numeric(1,0),
    CONSTRAINT enforce_dims_wkb_geometry CHECK ((st_ndims(wkb_geometry) = 2)),
    CONSTRAINT enforce_srid_wkb_geometry CHECK ((st_srid(wkb_geometry) = 3035))
);


ALTER TABLE public.geom_eu27_nuts2006_contig OWNER TO aire;

--
-- Name: geom_eu27_nuts2006_contig_ogc_fid_seq; Type: SEQUENCE; Schema: public; Owner: aire
--

CREATE SEQUENCE geom_eu27_nuts2006_contig_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.geom_eu27_nuts2006_contig_ogc_fid_seq OWNER TO aire;

--
-- Name: geom_eu27_nuts2006_contig_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aire
--

ALTER SEQUENCE geom_eu27_nuts2006_contig_ogc_fid_seq OWNED BY geom_eu27_nuts2006_contig.ogc_fid;


--
-- Name: ogc_fid; Type: DEFAULT; Schema: public; Owner: aire
--

ALTER TABLE ONLY geom_eu27_nuts2006_contig ALTER COLUMN ogc_fid SET DEFAULT nextval('geom_eu27_nuts2006_contig_ogc_fid_seq'::regclass);


--
-- Name: geom_eu27_nuts2006_contig_pk; Type: CONSTRAINT; Schema: public; Owner: aire; Tablespace: 
--

ALTER TABLE ONLY geom_eu27_nuts2006_contig
    ADD CONSTRAINT geom_eu27_nuts2006_contig_pk PRIMARY KEY (ogc_fid);


--
-- Name: geom_eu27_nuts2006_contig_geom_idx; Type: INDEX; Schema: public; Owner: aire; Tablespace: 
--

CREATE INDEX geom_eu27_nuts2006_contig_geom_idx ON geom_eu27_nuts2006_contig USING gist (wkb_geometry);


--
-- PostgreSQL database dump complete
--

