--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16
-- Dumped by pg_dump version 12.16

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

--
-- Data for Name: child; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.child (childid, dateofbirth, familyid) FROM stdin;
1	2023-07-22	1
2	2022-01-06	2
3	2004-06-22	3
4	2013-12-25	4
5	2021-09-21	7
6	2021-02-05	7
7	2019-04-14	6
8	2016-08-18	8
9	2019-03-21	9
10	2017-07-02	5
\.


--
-- Data for Name: member; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.member (memberid, name, email, phone, familyid) FROM stdin;
1	Dannyboy                        	supermegagamer@cool.org	(203)-111-4567  	2
2	Ryan the Man                      	ryan@gmail.com	(203)-222-6473  	1
3	Jane Doe                  	girl@outlook.com	(203)-333-4455  	1
4	Katie The Legend                  	katie@hotmail.org	(203)-444-4751  	2
5	Charlie Chaplin                 	chuck@apple.org	(203)-555-4751  	3
6	Gumball Waterson                      	Melon@students.org	(203)-666-4751  	3
7	Robinhood                 	magic@memaw.org	(203)-777-4751  	4
8	Grace Needs Water                   	helloworld@wcsu.edu	(203)-888-4751  	4
9	Evan                        	fotnite@epicgame.org	(203)-999-4751  	5
10	Rydawg                     	Reno@smallbig.city	(775)-100-8008  	6
11	Vinny the pickle                   	work@home.org	(203)-110-5555  	7
13	Itialia                     	student@uconn.edu	(203)-130-4811  	8
14	Glados                          	portal2@valve.com	(000)-140-9562  	9
15	Kramer                     	vacation@lives.com	(203)-150-9562  	8
12	BonBon                   	aunt@gmail.com	(203)-120-4687  	7
\.


--
-- Data for Name: appointment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.appointment (apptid, start_time, end_time, memberid, childid) FROM stdin;
1	2023-12-07 11:00:00	2023-12-07 14:00:00	1	4
2	2023-12-04 09:00:00	2023-12-04 17:00:00	2	5
4	2023-12-07 12:00:00	2023-12-07 16:00:00	4	2
3	2023-12-13 18:00:00	2023-12-13 20:00:00	3	1
5	2023-12-20 14:00:00	2023-12-20 20:00:00	7	2
6	2023-01-13 05:00:00	2023-01-13 07:00:00	13	8
7	2024-01-17 13:00:00	2024-01-17 17:00:00	14	6
8	2024-01-21 09:30:00	2024-01-21 13:00:00	8	9
9	2024-02-04 09:00:00	2024-02-04 14:00:00	2	10
10	2024-03-12 18:00:00	2024-03-12 22:00:00	9	4
11	2024-03-18 11:00:00	2024-03-18 17:00:00	15	7
12	2024-05-04 19:00:00	2024-05-04 23:00:00	11	4
13	2024-05-08 17:00:00	2024-05-08 20:30:00	10	8
14	2022-06-02 04:00:00	2022-06-02 08:00:00	7	1
15	2022-07-18 02:00:00	2022-07-18 06:00:00	9	3
16	2022-08-04 05:00:00	2022-08-04 10:00:00	2	10
17	2022-11-21 07:00:00	2022-11-21 11:00:00	4	5
18	2022-11-24 18:00:00	2022-11-24 22:00:00	9	3
19	2022-12-02 11:00:00	2022-12-02 18:00:00	10	7
20	2022-12-27 12:00:00	2022-12-27 18:00:00	12	2
21	2024-05-04 17:00:00	2024-05-04 21:00:00	8	8
22	2023-12-08 10:00:00	2023-12-08 12:00:00	14	3
\.


--
-- PostgreSQL database dump complete
--

