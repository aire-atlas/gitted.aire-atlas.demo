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
-- Name: spatial_ref_sys; Type: TABLE; Schema: public; Owner: aire; Tablespace: 
--

CREATE TABLE spatial_ref_sys (
    srid integer NOT NULL,
    auth_name character varying(256),
    auth_srid integer,
    srtext character varying(2048),
    proj4text character varying(2048)
);


ALTER TABLE public.spatial_ref_sys OWNER TO aire;

--
-- Name: spatial_ref_sys_pkey; Type: CONSTRAINT; Schema: public; Owner: aire; Tablespace: 
--

ALTER TABLE ONLY spatial_ref_sys
    ADD CONSTRAINT spatial_ref_sys_pkey PRIMARY KEY (srid);


--
-- PostgreSQL database dump complete
--

