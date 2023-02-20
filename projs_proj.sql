--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2023-02-17 17:41:42

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
-- TOC entry 243 (class 1259 OID 43385)
-- Name: projects_project; Type: TABLE; Schema: public; Owner: geodimagiadmin
--

CREATE TABLE public.projects_project (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    team_division character varying(50) NOT NULL,
    tag character varying(50) NOT NULL,
    client_id bigint,
    end_date date,
    start_date date
);


ALTER TABLE public.projects_project OWNER TO geodimagiadmin;

--
-- TOC entry 242 (class 1259 OID 43384)
-- Name: projects_project_id_seq; Type: SEQUENCE; Schema: public; Owner: geodimagiadmin
--

ALTER TABLE public.projects_project ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.projects_project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 4254 (class 0 OID 43385)
-- Dependencies: 243
-- Data for Name: projects_project; Type: TABLE DATA; Schema: public; Owner: geodimagiadmin
--

COPY public.projects_project (id, name, team_division, tag, client_id, end_date, start_date) FROM stdin;
1	Dimagi Office	US Health	office	\N	\N	\N
18	Survivor Care Phase II	GSO		19	\N	\N
26	Technical Advisory Service	Solutions		27	2022-12-04	2022-09-14
25	Wheels and Waves	GSO		26	2023-10-01	2022-10-01
24	COVID-19 Vaccine Rollout	Solutions		25	2022-12-31	2022-07-01
23	Financial Education Scale Up	Solutions		24	\N	\N
22	COVID-19 US Local Response System	US Health		23	2024-06-30	2022-02-01
21	E-IMNCI	India		22	2022-02-28	2021-12-30
20	Sangath-Mental Health	India		21	2023-06-30	2021-06-30
19	YouthAgriApp-Ethiopia	Solutions		20	2022-02-28	2021-11-01
16	ACCESS Madagascar	Solutions		18	\N	\N
17	IHSA Benin	Solutions		18	2023-03-01	2022-11-01
15	cStock	Solutions		17	2022-05-31	2021-11-01
14	Cash Program 2.0	Solutions		4	2023-10-04	2022-10-05
13	TB XBOS Trial	GSO		15	2027-10-01	2022-10-01
12	SAMVEG	India		14	2025-07-26	2021-08-01
11	Technical Advisory	Solutions		13	2022-12-08	2022-09-08
10	Humanitarian Assistance	Solutions		12	2023-10-07	2022-11-07
9	Content Adaptation and Practicepal	India		11	2023-12-31	2023-07-01
8	Preserve Ethiopia	Solutions		10	\N	2021-08-09
7	MOMENTUM Safe Surgery in Family Planning and Obstetrics	India		9	2023-10-31	2022-11-01
6	COVID-19 End-To-End Solution	US Health		8	\N	\N
5	TB Preventive Therapy	Solutions		7	2025-02-28	2022-04-27
4	Hosting and Support	Solutions		6	2023-05-30	2022-05-01
3	Cash for Urban Assistance	Solutions		5	2021-10-04	2022-10-04
2	MSR Activity	Solutions		6	2027-04-28	2022-04-29
29	Colorado CICT	US Health		29	\N	\N
30	Alaska COVID-19 Tracker System	US Health		30	\N	\N
31	Colorado BHA	US Health		31	2023-06-30	2022-02-04
32	COVID-19 Local Response System	US Health		32	\N	\N
33	NY-CDCMS	US Health		33	\N	\N
34	COVID Containment Application	US Health		34	\N	\N
35	Transitional Housing Program	US Health		35	\N	\N
36	Ceviche Application	US Health		36	\N	\N
\.


--
-- TOC entry 4260 (class 0 OID 0)
-- Dependencies: 242
-- Name: projects_project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: geodimagiadmin
--

SELECT pg_catalog.setval('public.projects_project_id_seq', 36, true);


--
-- TOC entry 4104 (class 2606 OID 43389)
-- Name: projects_project projects_project_pkey; Type: CONSTRAINT; Schema: public; Owner: geodimagiadmin
--

ALTER TABLE ONLY public.projects_project
    ADD CONSTRAINT projects_project_pkey PRIMARY KEY (id);


--
-- TOC entry 4102 (class 1259 OID 43451)
-- Name: projects_project_client_id_cd971a55; Type: INDEX; Schema: public; Owner: geodimagiadmin
--

CREATE INDEX projects_project_client_id_cd971a55 ON public.projects_project USING btree (client_id);


--
-- TOC entry 4105 (class 2606 OID 43446)
-- Name: projects_project projects_project_client_id_cd971a55_fk_projects_client_id; Type: FK CONSTRAINT; Schema: public; Owner: geodimagiadmin
--

ALTER TABLE ONLY public.projects_project
    ADD CONSTRAINT projects_project_client_id_cd971a55_fk_projects_client_id FOREIGN KEY (client_id) REFERENCES public.projects_client(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2023-02-17 17:41:43

--
-- PostgreSQL database dump complete
--
