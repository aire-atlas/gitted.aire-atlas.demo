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
-- Name: world_wuts5_centres; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE world_wuts5_centres (
    ogc_fid integer NOT NULL,
    wkb_geometry geometry,
    code_wuts5 character(13),
    CONSTRAINT enforce_dims_wkb_geometry CHECK ((st_ndims(wkb_geometry) = 2)),
    CONSTRAINT enforce_geotype_wkb_geometry CHECK (((geometrytype(wkb_geometry) = 'POINT'::text) OR (wkb_geometry IS NULL))),
    CONSTRAINT enforce_srid_wkb_geometry CHECK ((st_srid(wkb_geometry) = 900917))
);


ALTER TABLE public.world_wuts5_centres OWNER TO aire;

--
-- Name: world_wuts5_centres_ogc_fid_seq; Type: SEQUENCE; Schema: public; Owner: aire
--

CREATE SEQUENCE world_wuts5_centres_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.world_wuts5_centres_ogc_fid_seq OWNER TO aire;

--
-- Name: world_wuts5_centres_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aire
--

ALTER SEQUENCE world_wuts5_centres_ogc_fid_seq OWNED BY world_wuts5_centres.ogc_fid;


--
-- Name: ogc_fid; Type: DEFAULT; Schema: public; Owner: aire
--

ALTER TABLE ONLY world_wuts5_centres ALTER COLUMN ogc_fid SET DEFAULT nextval('world_wuts5_centres_ogc_fid_seq'::regclass);


--
-- Name: world_wuts5_centres_pk; Type: CONSTRAINT; Schema: public; Owner: aire; Tablespace: 
--

ALTER TABLE ONLY world_wuts5_centres
    ADD CONSTRAINT world_wuts5_centres_pk PRIMARY KEY (ogc_fid);


--
-- Name: world_wuts5_centres_geom_idx; Type: INDEX; Schema: public; Owner: aire; Tablespace: 
--

CREATE INDEX world_wuts5_centres_geom_idx ON world_wuts5_centres USING gist (wkb_geometry);


--
-- PostgreSQL database dump complete
--

