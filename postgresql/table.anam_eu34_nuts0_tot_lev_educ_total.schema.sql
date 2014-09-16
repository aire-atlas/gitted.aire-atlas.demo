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
-- Name: anam_eu34_nuts0_tot_lev_educ_total; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE anam_eu34_nuts0_tot_lev_educ_total (
    ogc_fid integer NOT NULL,
    wkb_geometry geometry,
    id character(2),
    level0 numeric(4,2),
    level1 numeric(4,2),
    level2 numeric(4,2),
    level23 numeric(4,2),
    level3 numeric(4,2),
    CONSTRAINT enforce_dims_wkb_geometry CHECK ((st_ndims(wkb_geometry) = 2)),
    CONSTRAINT enforce_srid_wkb_geometry CHECK ((st_srid(wkb_geometry) = (-1)))
);


ALTER TABLE public.anam_eu34_nuts0_tot_lev_educ_total OWNER TO aire;

--
-- Name: anam_eu34_nuts0_tot_lev_educ_total_ogc_fid_seq; Type: SEQUENCE; Schema: public; Owner: aire
--

CREATE SEQUENCE anam_eu34_nuts0_tot_lev_educ_total_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.anam_eu34_nuts0_tot_lev_educ_total_ogc_fid_seq OWNER TO aire;

--
-- Name: anam_eu34_nuts0_tot_lev_educ_total_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aire
--

ALTER SEQUENCE anam_eu34_nuts0_tot_lev_educ_total_ogc_fid_seq OWNED BY anam_eu34_nuts0_tot_lev_educ_total.ogc_fid;


--
-- Name: ogc_fid; Type: DEFAULT; Schema: public; Owner: aire
--

ALTER TABLE ONLY anam_eu34_nuts0_tot_lev_educ_total ALTER COLUMN ogc_fid SET DEFAULT nextval('anam_eu34_nuts0_tot_lev_educ_total_ogc_fid_seq'::regclass);


--
-- Name: anam_eu34_nuts0_tot_lev_educ_total_pk; Type: CONSTRAINT; Schema: public; Owner: aire; Tablespace: 
--

ALTER TABLE ONLY anam_eu34_nuts0_tot_lev_educ_total
    ADD CONSTRAINT anam_eu34_nuts0_tot_lev_educ_total_pk PRIMARY KEY (ogc_fid);


--
-- Name: anam_eu34_nuts0_tot_lev_educ_total_geom_idx; Type: INDEX; Schema: public; Owner: aire; Tablespace: 
--

CREATE INDEX anam_eu34_nuts0_tot_lev_educ_total_geom_idx ON anam_eu34_nuts0_tot_lev_educ_total USING gist (wkb_geometry);


--
-- PostgreSQL database dump complete
--

