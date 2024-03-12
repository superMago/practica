--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

-- Started on 2020-10-14 14:15:16

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 202 (class 1259 OID 24581)
-- Name: actores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actores (
    id_cedula integer NOT NULL,
    nombre character varying(60) NOT NULL,
    apaterno character varying(60) NOT NULL,
    amaterno character varying(60),
    fecha_nac timestamp without time zone NOT NULL,
    telefono character(9) NOT NULL,
    calle character varying(75),
    calle_num character(6),
    colonia character varying(75),
    ciudad character varying(75),
    codpostal character(5)
);


ALTER TABLE public.actores OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 24584)
-- Name: actua; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actua (
    id_cedula integer NOT NULL,
    id_pelicula integer NOT NULL,
    personaje character varying(60) NOT NULL,
    sueldo numeric(10,2) NOT NULL
);


ALTER TABLE public.actua OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 24587)
-- Name: clasificacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clasificacion (
    id_clasificacion integer NOT NULL,
    clasif_nombre character varying(85),
    clasif_decripcion character varying(110)
);


ALTER TABLE public.clasificacion OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 24590)
-- Name: companias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.companias (
    id_compania smallint NOT NULL,
    nombre character varying(80) NOT NULL,
    calle character varying(75),
    calle_num character(6),
    colonia character varying(75),
    ciudad character varying(75),
    codpostal character(5)
);


ALTER TABLE public.companias OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 24593)
-- Name: peliculas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.peliculas (
    id_pelicula integer NOT NULL,
    titulo character varying(80) NOT NULL,
    fecha_filmacion timestamp without time zone NOT NULL,
    fecha_estreno timestamp without time zone NOT NULL,
    id_clasificacion integer NOT NULL,
    id_compania smallint NOT NULL
);


ALTER TABLE public.peliculas OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 24596)
-- Name: telefonos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.telefonos (
    id_compania smallint NOT NULL,
    telefono character(9) NOT NULL
);


ALTER TABLE public.telefonos OWNER TO postgres;

--
-- TOC entry 2848 (class 0 OID 24581)
-- Dependencies: 202
-- Data for Name: actores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actores (id_cedula, nombre, apaterno, amaterno, fecha_nac, telefono, calle, calle_num, colonia, ciudad, codpostal) FROM stdin;
2001	John	Travolta	\N	1960-01-01 00:00:00	915555162	Hollywood	1222  	Stars	78888	LA   
2002	Samuel	Jackson	\N	1960-01-01 00:00:00	915556656	Hollywood	1223  	Stars	78888	LA   
2003	Bruce	Willis	\N	1960-01-01 00:00:00	915566355	Hollywood	2222  	Sky	78888	LA   
2004	Jim	Carrey	\N	1960-01-01 00:00:00	915512123	Hollywood	3222  	Clouds	79881	LA   
2005	Cameron	Diaz	\N	1960-01-01 00:00:00	915533212	Hollywood	3301  	Loyal	77601	LA   
2006	Rusell	Crowe	\N	1960-01-01 00:00:00	916456121	Hollywood	2606  	Empire	76006	LA   
2007	Joaquin	Phoenix	\N	1960-01-01 00:00:00	914312110	Hollywood	2106  	Mountains	75001	LA   
2008	Jack	Nicholson	\N	1960-01-01 00:00:00	914312121	Hollywood	2001  	Wonderland	74001	LA   
2009	Morgan	Freeman	\N	1960-01-01 00:00:00	914312121	Hollywood	2002  	Wonderland	74001	LA   
2010	Johny	Deep	\N	1960-01-01 00:00:00	914312110	Hollywood	4230  	Sea	60001	LA   
\.


--
-- TOC entry 2849 (class 0 OID 24584)
-- Dependencies: 203
-- Data for Name: actua; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actua (id_cedula, id_pelicula, personaje, sueldo) FROM stdin;
2001	4001	Vincent Vega	500000.00
2002	4001	Julles Winnfield	400000.00
2003	4001	Butch Coolidge	400000.00
2009	4002	Dios	250000.00
2004	4002	Bruce Nolan	250000.00
2004	4003	Stanley Ipkiss	200000.00
2005	4003	Tina Carlyle	150000.00
2006	4004	Maximus	300000.00
2008	4005	Jack Torrance	150000.00
2010	4006	Jack Sparrow	200000.00
2007	4004	Commmodus	200000.00
2006	4007	John Nash	150000.00
2010	4008	Tonto	650000.00
2005	4009	Natalie Cook	175000.00
2006	4010	Jim Braddock	275000.00
\.


--
-- TOC entry 2850 (class 0 OID 24587)
-- Dependencies: 204
-- Data for Name: clasificacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clasificacion (id_clasificacion, clasif_nombre, clasif_decripcion) FROM stdin;
3001	Accion	\N
3002	Comedia	\N
3003	Terror	\N
3004	Suspenso	\N
3005	Drama	\N
\.


--
-- TOC entry 2851 (class 0 OID 24590)
-- Dependencies: 205
-- Data for Name: companias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.companias (id_compania, nombre, calle, calle_num, colonia, ciudad, codpostal) FROM stdin;
1001	Warner Bros	\N	\N	\N	\N	\N
1002	Lucas Film	\N	\N	\N	\N	\N
1003	Walt Disney Pictures	\N	\N	\N	\N	\N
1004	Miramax Films	\N	\N	\N	\N	\N
1005	Spyglass Entreteinment	\N	\N	\N	\N	\N
1006	Universal Pictures	\N	\N	\N	\N	\N
1007	Imagine Entretainment	\N	\N	\N	\N	\N
1008	Universal Studios	\N	\N	\N	\N	\N
\.


--
-- TOC entry 2852 (class 0 OID 24593)
-- Dependencies: 206
-- Data for Name: peliculas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.peliculas (id_pelicula, titulo, fecha_filmacion, fecha_estreno, id_clasificacion, id_compania) FROM stdin;
4001	Pulp Fiction	1993-12-25 00:00:00	1994-09-10 00:00:00	3001	1004
4002	Bruce Almighty	1999-12-25 00:00:00	2000-09-10 00:00:00	3002	1005
4003	The Mask	1996-12-25 00:00:00	1997-09-10 00:00:00	3002	1005
4005	The Shining	1979-10-20 00:00:00	1980-05-23 00:00:00	3003	1001
4004	Gladiator	1999-10-20 00:00:00	2000-09-10 00:00:00	3001	1006
4006	Pirates of the Caribbean	2003-10-20 00:00:00	2004-09-10 00:00:00	3001	1003
4007	A Beautiful Mind	2001-10-20 00:00:00	2002-01-04 00:00:00	3005	1007
4008	The Lone Ranger	2012-10-20 00:00:00	2013-06-22 00:00:00	3001	1003
4009	Charlie's Angel	1999-10-20 00:00:00	2000-06-22 00:00:00	3001	1008
4010	Cindirella Man	2004-10-20 00:00:00	2005-06-22 00:00:00	3005	1007
\.


--
-- TOC entry 2853 (class 0 OID 24596)
-- Dependencies: 207
-- Data for Name: telefonos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.telefonos (id_compania, telefono) FROM stdin;
1001	915545451
1002	915566123
1003	915121100
1004	915121001
1005	915412221
1006	914510162
1007	916412100
1008	915101011
\.


--
-- TOC entry 2706 (class 2606 OID 24600)
-- Name: actores pk_actor; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actores
    ADD CONSTRAINT pk_actor PRIMARY KEY (id_cedula);


--
-- TOC entry 2708 (class 2606 OID 24602)
-- Name: actua pk_actua; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actua
    ADD CONSTRAINT pk_actua PRIMARY KEY (id_cedula, id_pelicula);


--
-- TOC entry 2710 (class 2606 OID 24604)
-- Name: clasificacion pk_clasificacion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clasificacion
    ADD CONSTRAINT pk_clasificacion PRIMARY KEY (id_clasificacion);


--
-- TOC entry 2712 (class 2606 OID 24606)
-- Name: companias pk_compania; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.companias
    ADD CONSTRAINT pk_compania PRIMARY KEY (id_compania);


--
-- TOC entry 2714 (class 2606 OID 24608)
-- Name: peliculas pk_pelicula; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peliculas
    ADD CONSTRAINT pk_pelicula PRIMARY KEY (id_pelicula);


--
-- TOC entry 2716 (class 2606 OID 24610)
-- Name: telefonos pk_tel; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.telefonos
    ADD CONSTRAINT pk_tel PRIMARY KEY (id_compania, telefono);


--
-- TOC entry 2717 (class 2606 OID 24611)
-- Name: actua fk_actua_actor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actua
    ADD CONSTRAINT fk_actua_actor FOREIGN KEY (id_cedula) REFERENCES public.actores(id_cedula);


--
-- TOC entry 2718 (class 2606 OID 24616)
-- Name: actua fk_actua_pelicula; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actua
    ADD CONSTRAINT fk_actua_pelicula FOREIGN KEY (id_pelicula) REFERENCES public.peliculas(id_pelicula);


--
-- TOC entry 2719 (class 2606 OID 24621)
-- Name: peliculas fk_pelicula_clasif; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peliculas
    ADD CONSTRAINT fk_pelicula_clasif FOREIGN KEY (id_clasificacion) REFERENCES public.clasificacion(id_clasificacion);


--
-- TOC entry 2720 (class 2606 OID 24626)
-- Name: peliculas fk_pelicula_compania; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peliculas
    ADD CONSTRAINT fk_pelicula_compania FOREIGN KEY (id_compania) REFERENCES public.companias(id_compania);


--
-- TOC entry 2721 (class 2606 OID 24631)
-- Name: telefonos fk_tel_comp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.telefonos
    ADD CONSTRAINT fk_tel_comp FOREIGN KEY (id_compania) REFERENCES public.companias(id_compania) ON DELETE CASCADE;


--
-- TOC entry 2859 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: jcarlos
--

GRANT ALL ON SCHEMA public TO postgres;


-- Completed on 2020-10-14 14:15:16

--
-- PostgreSQL database dump complete
--

