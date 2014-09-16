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
-- Name: geom_eu27_nuts2006_centres; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE geom_eu27_nuts2006_centres (
    ogc_fid integer NOT NULL,
    wkb_geometry geometry,
    id character(10),
    nuts0 integer,
    nuts1 integer,
    nuts2 integer,
    nuts23 integer,
    nuts3 integer,
    CONSTRAINT enforce_dims_wkb_geometry CHECK ((st_ndims(wkb_geometry) = 2)),
    CONSTRAINT enforce_geotype_wkb_geometry CHECK (((geometrytype(wkb_geometry) = 'POINT'::text) OR (wkb_geometry IS NULL))),
    CONSTRAINT enforce_srid_wkb_geometry CHECK ((st_srid(wkb_geometry) = 3035))
);


ALTER TABLE public.geom_eu27_nuts2006_centres OWNER TO aire;

--
-- Name: geom_eu27_nuts2006_centres_ogc_fid_seq; Type: SEQUENCE; Schema: public; Owner: aire
--

CREATE SEQUENCE geom_eu27_nuts2006_centres_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.geom_eu27_nuts2006_centres_ogc_fid_seq OWNER TO aire;

--
-- Name: geom_eu27_nuts2006_centres_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aire
--

ALTER SEQUENCE geom_eu27_nuts2006_centres_ogc_fid_seq OWNED BY geom_eu27_nuts2006_centres.ogc_fid;


--
-- Name: ogc_fid; Type: DEFAULT; Schema: public; Owner: aire
--

ALTER TABLE ONLY geom_eu27_nuts2006_centres ALTER COLUMN ogc_fid SET DEFAULT nextval('geom_eu27_nuts2006_centres_ogc_fid_seq'::regclass);


--
-- Name: geom_eu27_nuts2006_centres_pk; Type: CONSTRAINT; Schema: public; Owner: aire; Tablespace: 
--

ALTER TABLE ONLY geom_eu27_nuts2006_centres
    ADD CONSTRAINT geom_eu27_nuts2006_centres_pk PRIMARY KEY (ogc_fid);


--
-- Name: geom_eu27_nuts2006_centres_geom_idx; Type: INDEX; Schema: public; Owner: aire; Tablespace: 
--

CREATE INDEX geom_eu27_nuts2006_centres_geom_idx ON geom_eu27_nuts2006_centres USING gist (wkb_geometry);

ALTER TABLE geom_eu27_nuts2006_centres CLUSTER ON geom_eu27_nuts2006_centres_geom_idx;


--
-- Name: geom_eu27_nuts2006_centres_id_idx; Type: INDEX; Schema: public; Owner: aire; Tablespace: 
--

CREATE INDEX geom_eu27_nuts2006_centres_id_idx ON geom_eu27_nuts2006_centres USING btree (id NULLS FIRST);


--
-- Name: geom_eu27_nuts2006_centres_nuts0_idx; Type: INDEX; Schema: public; Owner: aire; Tablespace: 
--

CREATE INDEX geom_eu27_nuts2006_centres_nuts0_idx ON geom_eu27_nuts2006_centres USING btree (nuts0);


--
-- Name: geom_eu27_nuts2006_centres_nuts1_idx; Type: INDEX; Schema: public; Owner: aire; Tablespace: 
--

CREATE INDEX geom_eu27_nuts2006_centres_nuts1_idx ON geom_eu27_nuts2006_centres USING btree (nuts1);


--
-- Name: geom_eu27_nuts2006_centres_nuts23_idx; Type: INDEX; Schema: public; Owner: aire; Tablespace: 
--

CREATE INDEX geom_eu27_nuts2006_centres_nuts23_idx ON geom_eu27_nuts2006_centres USING btree (nuts23);


--
-- Name: geom_eu27_nuts2006_centres_nuts2_idx; Type: INDEX; Schema: public; Owner: aire; Tablespace: 
--

CREATE INDEX geom_eu27_nuts2006_centres_nuts2_idx ON geom_eu27_nuts2006_centres USING btree (nuts2);


--
-- Name: geom_eu27_nuts2006_centres_nuts3_idx; Type: INDEX; Schema: public; Owner: aire; Tablespace: 
--

CREATE INDEX geom_eu27_nuts2006_centres_nuts3_idx ON geom_eu27_nuts2006_centres USING btree (nuts3);


--
-- PostgreSQL database dump complete
--

