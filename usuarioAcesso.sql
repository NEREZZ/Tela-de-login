toc.dat                                                                                             0000600 0004000 0002000 00000004005 14542037332 0014441 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                           {            Usuarios    15.3    15.3 	    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    24576    Usuarios    DATABASE     �   CREATE DATABASE "Usuarios" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "Usuarios";
                postgres    false         �            1259    24580    conta    TABLE     �   CREATE TABLE public.conta (
    matricula character varying(10) NOT NULL,
    senha character varying(20) NOT NULL,
    criado timestamp without time zone NOT NULL,
    ultimologin timestamp without time zone
);
    DROP TABLE public.conta;
       public         heap    postgres    false         �            1259    24577    usuario    TABLE     !   CREATE TABLE public.usuario (
);
    DROP TABLE public.usuario;
       public         heap    postgres    false         �          0    24580    conta 
   TABLE DATA           F   COPY public.conta (matricula, senha, criado, ultimologin) FROM stdin;
    public          postgres    false    215       3321.dat �          0    24577    usuario 
   TABLE DATA           !   COPY public.usuario  FROM stdin;
    public          postgres    false    214       3320.dat i           2606    24584    conta conta_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.conta
    ADD CONSTRAINT conta_pkey PRIMARY KEY (matricula);
 :   ALTER TABLE ONLY public.conta DROP CONSTRAINT conta_pkey;
       public            postgres    false    215                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   3321.dat                                                                                            0000600 0004000 0002000 00000000005 14542037332 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3320.dat                                                                                            0000600 0004000 0002000 00000000005 14542037332 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000004551 14542037332 0015374 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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

DROP DATABASE "Usuarios";
--
-- Name: Usuarios; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Usuarios" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';


ALTER DATABASE "Usuarios" OWNER TO postgres;

\connect "Usuarios"

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
-- Name: conta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.conta (
    matricula character varying(10) NOT NULL,
    senha character varying(20) NOT NULL,
    criado timestamp without time zone NOT NULL,
    ultimologin timestamp without time zone
);


ALTER TABLE public.conta OWNER TO postgres;

--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Data for Name: conta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.conta (matricula, senha, criado, ultimologin) FROM stdin;
\.
COPY public.conta (matricula, senha, criado, ultimologin) FROM '$$PATH$$/3321.dat';

--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario  FROM stdin;
\.
COPY public.usuario  FROM '$$PATH$$/3320.dat';

--
-- Name: conta conta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conta
    ADD CONSTRAINT conta_pkey PRIMARY KEY (matricula);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       