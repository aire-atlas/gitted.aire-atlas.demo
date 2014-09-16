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
-- Name: data_2010_environment; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE data_2010_environment (
    id character(6),
    name character varying,
    nutsversion integer,
    level character varying,
    area_t2011 double precision,
    artificial_surfaces double precision,
    agricultural_areas double precision,
    forest_and_semi_natural_areas double precision,
    wetlands double precision,
    water_bodies double precision,
    urban_fabric double precision,
    industrial_commercial_and_transport_units double precision,
    mine_dump_and_construction_sites double precision,
    artificial_non_agricultural_vegetated_areas double precision,
    arable_land double precision,
    permanent_crops double precision,
    pastures double precision,
    heterogeneous_agricultural_areas double precision,
    forests double precision,
    scrub_and_or_herbaceous_vegetation_associations double precision,
    open_spaces_with_little_or_no_vegetation double precision,
    inland_wetlands double precision,
    maritime_wetlands double precision,
    inland_waters double precision,
    marine_waters double precision
);


ALTER TABLE public.data_2010_environment OWNER TO aire;

--
-- PostgreSQL database dump complete
--

