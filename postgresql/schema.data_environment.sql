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
-- Name: data_environment; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE data_environment (
    ogc_fid integer NOT NULL,
    level character varying,
    nuts_version integer,
    area_t_2008 double precision,
    source1 character varying,
    area_t_gis_2008 double precision,
    source2 character varying,
    artificial_lands_2000 integer,
    source3 character varying,
    agricultural_areas_2000 integer,
    source4 character varying,
    forest_semi_nat_areas_2000 integer,
    source5 character varying,
    wetlands_area_2000 integer,
    source6 character varying,
    waterbodies_areas_2000 integer,
    source7 character varying,
    urban_fabric_areas_2000 integer,
    source8 character varying,
    industr_comm_transp_areas_2000 integer,
    source9 character varying,
    mine_dump_constr_areas_2000 integer,
    source10 character varying,
    artificial_non_agric_areas_2000 integer,
    source11 character varying,
    arable_land_areas_2000 integer,
    source12 character varying,
    permanent_crops_areas_2000 integer,
    source13 character varying,
    pastures_areas_2000 integer,
    source14 character varying,
    heterogeneous_agr_areas_2000 integer,
    source15 character varying,
    forests_areas_2000 integer,
    source16 character varying,
    scrub_herbaceous_areas_2000 integer,
    source17 character varying,
    open_spaces_littleveget_areas_2000 integer,
    source18 character varying,
    inland_wetlands_areas_2000 integer,
    source19 character varying,
    maritime_wetlands_area_2000 integer,
    source20 character varying,
    inland_waters_area_2000 integer,
    source21 character varying,
    marine_waters_area_2000 integer,
    source22 character varying,
    total_clc_area_2000 integer,
    source23 character varying,
    id character(6)
);


ALTER TABLE public.data_environment OWNER TO aire;

--
-- Name: data_environment_ogc_fid_seq; Type: SEQUENCE; Schema: public; Owner: aire
--

CREATE SEQUENCE data_environment_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_environment_ogc_fid_seq OWNER TO aire;

--
-- Name: data_environment_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aire
--

ALTER SEQUENCE data_environment_ogc_fid_seq OWNED BY data_environment.ogc_fid;


--
-- Name: ogc_fid; Type: DEFAULT; Schema: public; Owner: aire
--

ALTER TABLE ONLY data_environment ALTER COLUMN ogc_fid SET DEFAULT nextval('data_environment_ogc_fid_seq'::regclass);


--
-- Name: data_environment_pk; Type: CONSTRAINT; Schema: public; Owner: aire; Tablespace: 
--

ALTER TABLE ONLY data_environment
    ADD CONSTRAINT data_environment_pk PRIMARY KEY (ogc_fid);


--
-- PostgreSQL database dump complete
--

