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
-- Name: anam_eu27_nuts2006_rd_exp_tot; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE anam_eu27_nuts2006_rd_exp_tot (
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


ALTER TABLE public.anam_eu27_nuts2006_rd_exp_tot OWNER TO aire;

--
-- Name: anam_eu27_nuts2006_rd_exp_tot_ogc_fid_seq; Type: SEQUENCE; Schema: public; Owner: aire
--

CREATE SEQUENCE anam_eu27_nuts2006_rd_exp_tot_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.anam_eu27_nuts2006_rd_exp_tot_ogc_fid_seq OWNER TO aire;

--
-- Name: anam_eu27_nuts2006_rd_exp_tot_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aire
--

ALTER SEQUENCE anam_eu27_nuts2006_rd_exp_tot_ogc_fid_seq OWNED BY anam_eu27_nuts2006_rd_exp_tot.ogc_fid;


--
-- Name: ogc_fid; Type: DEFAULT; Schema: public; Owner: aire
--

ALTER TABLE ONLY anam_eu27_nuts2006_rd_exp_tot ALTER COLUMN ogc_fid SET DEFAULT nextval('anam_eu27_nuts2006_rd_exp_tot_ogc_fid_seq'::regclass);


--
-- Name: anam_eu27_nuts2006_rd_exp_tot_pk; Type: CONSTRAINT; Schema: public; Owner: aire; Tablespace: 
--

ALTER TABLE ONLY anam_eu27_nuts2006_rd_exp_tot
    ADD CONSTRAINT anam_eu27_nuts2006_rd_exp_tot_pk PRIMARY KEY (ogc_fid);


--
-- Name: anam_eu27_nuts2006_rd_exp_tot_geom_idx; Type: INDEX; Schema: public; Owner: aire; Tablespace: 
--

CREATE INDEX anam_eu27_nuts2006_rd_exp_tot_geom_idx ON anam_eu27_nuts2006_rd_exp_tot USING gist (wkb_geometry);


--
-- PostgreSQL database dump complete
--

