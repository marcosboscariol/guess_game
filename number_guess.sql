--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    guesses integer NOT NULL,
    u_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    u_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_u_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_u_id_seq OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_u_id_seq OWNED BY public.users.u_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users u_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN u_id SET DEFAULT nextval('public.users_u_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 26, 1);
INSERT INTO public.games VALUES (2, 665, 1);
INSERT INTO public.games VALUES (3, 258, 2);
INSERT INTO public.games VALUES (4, 795, 2);
INSERT INTO public.games VALUES (5, 878, 1);
INSERT INTO public.games VALUES (6, 541, 1);
INSERT INTO public.games VALUES (7, 499, 1);
INSERT INTO public.games VALUES (8, 3, 3);
INSERT INTO public.games VALUES (9, 5, 3);
INSERT INTO public.games VALUES (10, 537, 4);
INSERT INTO public.games VALUES (11, 597, 4);
INSERT INTO public.games VALUES (12, 195, 5);
INSERT INTO public.games VALUES (13, 182, 5);
INSERT INTO public.games VALUES (14, 355, 4);
INSERT INTO public.games VALUES (15, 713, 4);
INSERT INTO public.games VALUES (16, 879, 4);
INSERT INTO public.games VALUES (17, 882, 6);
INSERT INTO public.games VALUES (18, 117, 6);
INSERT INTO public.games VALUES (19, 464, 7);
INSERT INTO public.games VALUES (20, 57, 7);
INSERT INTO public.games VALUES (21, 75, 6);
INSERT INTO public.games VALUES (22, 502, 6);
INSERT INTO public.games VALUES (23, 520, 6);
INSERT INTO public.games VALUES (24, 1, 3);
INSERT INTO public.games VALUES (25, 645, 8);
INSERT INTO public.games VALUES (26, 613, 8);
INSERT INTO public.games VALUES (27, 544, 9);
INSERT INTO public.games VALUES (28, 299, 9);
INSERT INTO public.games VALUES (29, 406, 8);
INSERT INTO public.games VALUES (30, 916, 8);
INSERT INTO public.games VALUES (31, 782, 8);
INSERT INTO public.games VALUES (32, 535, 10);
INSERT INTO public.games VALUES (33, 364, 10);
INSERT INTO public.games VALUES (34, 853, 11);
INSERT INTO public.games VALUES (35, 152, 11);
INSERT INTO public.games VALUES (36, 655, 10);
INSERT INTO public.games VALUES (37, 656, 10);
INSERT INTO public.games VALUES (38, 119, 10);
INSERT INTO public.games VALUES (39, 1, 3);
INSERT INTO public.games VALUES (40, 70, 12);
INSERT INTO public.games VALUES (41, 40, 12);
INSERT INTO public.games VALUES (42, 651, 13);
INSERT INTO public.games VALUES (43, 967, 13);
INSERT INTO public.games VALUES (44, 560, 12);
INSERT INTO public.games VALUES (45, 499, 12);
INSERT INTO public.games VALUES (46, 378, 12);
INSERT INTO public.games VALUES (47, 684, 14);
INSERT INTO public.games VALUES (48, 165, 14);
INSERT INTO public.games VALUES (49, 41, 15);
INSERT INTO public.games VALUES (50, 279, 15);
INSERT INTO public.games VALUES (51, 182, 14);
INSERT INTO public.games VALUES (52, 713, 14);
INSERT INTO public.games VALUES (53, 350, 14);
INSERT INTO public.games VALUES (54, 1, 3);
INSERT INTO public.games VALUES (55, 686, 16);
INSERT INTO public.games VALUES (56, 606, 16);
INSERT INTO public.games VALUES (57, 39, 17);
INSERT INTO public.games VALUES (58, 729, 17);
INSERT INTO public.games VALUES (59, 749, 16);
INSERT INTO public.games VALUES (60, 203, 16);
INSERT INTO public.games VALUES (61, 575, 16);
INSERT INTO public.games VALUES (62, 393, 18);
INSERT INTO public.games VALUES (63, 298, 18);
INSERT INTO public.games VALUES (64, 645, 19);
INSERT INTO public.games VALUES (65, 507, 19);
INSERT INTO public.games VALUES (66, 610, 18);
INSERT INTO public.games VALUES (67, 210, 18);
INSERT INTO public.games VALUES (68, 801, 18);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1673620598279');
INSERT INTO public.users VALUES (2, 'user_1673620598278');
INSERT INTO public.users VALUES (3, 'marcos');
INSERT INTO public.users VALUES (4, 'user_1673620646748');
INSERT INTO public.users VALUES (5, 'user_1673620646747');
INSERT INTO public.users VALUES (6, 'user_1673620677403');
INSERT INTO public.users VALUES (7, 'user_1673620677402');
INSERT INTO public.users VALUES (8, 'user_1673620719387');
INSERT INTO public.users VALUES (9, 'user_1673620719386');
INSERT INTO public.users VALUES (10, 'user_1673620787776');
INSERT INTO public.users VALUES (11, 'user_1673620787775');
INSERT INTO public.users VALUES (12, 'user_1673620801580');
INSERT INTO public.users VALUES (13, 'user_1673620801579');
INSERT INTO public.users VALUES (14, 'user_1673620834504');
INSERT INTO public.users VALUES (15, 'user_1673620834503');
INSERT INTO public.users VALUES (16, 'user_1673620855375');
INSERT INTO public.users VALUES (17, 'user_1673620855374');
INSERT INTO public.users VALUES (18, 'user_1673620912845');
INSERT INTO public.users VALUES (19, 'user_1673620912844');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 68, true);


--
-- Name: users_u_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_u_id_seq', 19, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (u_id);


--
-- Name: games games_u_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_u_id_fkey FOREIGN KEY (u_id) REFERENCES public.users(u_id);


--
-- PostgreSQL database dump complete
--

