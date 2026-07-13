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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: appointment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.appointment (
    apptid integer NOT NULL,
    start_time timestamp without time zone,
    end_time timestamp without time zone,
    memberid integer,
    childid integer
);


ALTER TABLE public.appointment OWNER TO postgres;

--
-- Name: child; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.child (
    childid integer NOT NULL,
    dateofbirth date,
    familyid integer
);


ALTER TABLE public.child OWNER TO postgres;

--
-- Name: member; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.member (
    memberid integer NOT NULL,
    name character(32),
    email character varying(64),
    phone character(16),
    familyid integer
);


ALTER TABLE public.member OWNER TO postgres;

--
-- Name: appointment appointment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT appointment_pkey PRIMARY KEY (apptid);


--
-- Name: child child_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.child
    ADD CONSTRAINT child_pkey PRIMARY KEY (childid);


--
-- Name: member member_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.member
    ADD CONSTRAINT member_pkey PRIMARY KEY (memberid);


--
-- Name: appointment appointment_childid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT appointment_childid_fkey FOREIGN KEY (childid) REFERENCES public.child(childid);


--
-- Name: appointment appointment_memberid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT appointment_memberid_fkey FOREIGN KEY (memberid) REFERENCES public.member(memberid);


--
-- PostgreSQL database dump complete
--

