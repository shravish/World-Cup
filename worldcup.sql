--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (38, 2018, 'Final', 35, 36, 4, 2);
INSERT INTO public.games VALUES (39, 2018, 'Third Place', 37, 38, 2, 0);
INSERT INTO public.games VALUES (40, 2018, 'Semi-Final', 36, 38, 2, 1);
INSERT INTO public.games VALUES (41, 2018, 'Semi-Final', 35, 37, 1, 0);
INSERT INTO public.games VALUES (42, 2018, 'Quarter-Final', 36, 39, 3, 2);
INSERT INTO public.games VALUES (43, 2018, 'Quarter-Final', 38, 40, 2, 0);
INSERT INTO public.games VALUES (44, 2018, 'Quarter-Final', 37, 41, 2, 1);
INSERT INTO public.games VALUES (45, 2018, 'Quarter-Final', 35, 42, 2, 0);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 38, 43, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 40, 44, 1, 0);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 37, 45, 3, 2);
INSERT INTO public.games VALUES (49, 2018, 'Eighth-Final', 41, 46, 2, 0);
INSERT INTO public.games VALUES (50, 2018, 'Eighth-Final', 36, 47, 2, 1);
INSERT INTO public.games VALUES (51, 2018, 'Eighth-Final', 39, 48, 2, 1);
INSERT INTO public.games VALUES (52, 2018, 'Eighth-Final', 42, 49, 2, 1);
INSERT INTO public.games VALUES (53, 2018, 'Eighth-Final', 35, 50, 4, 3);
INSERT INTO public.games VALUES (54, 2014, 'Final', 51, 50, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Third Place', 52, 41, 3, 0);
INSERT INTO public.games VALUES (56, 2014, 'Semi-Final', 50, 52, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Semi-Final', 51, 41, 7, 1);
INSERT INTO public.games VALUES (58, 2014, 'Quarter-Final', 52, 53, 1, 0);
INSERT INTO public.games VALUES (59, 2014, 'Quarter-Final', 50, 37, 1, 0);
INSERT INTO public.games VALUES (60, 2014, 'Quarter-Final', 41, 43, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Quarter-Final', 51, 35, 1, 0);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 41, 54, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 43, 42, 2, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 35, 55, 2, 0);
INSERT INTO public.games VALUES (65, 2014, 'Eighth-Final', 51, 56, 2, 1);
INSERT INTO public.games VALUES (66, 2014, 'Eighth-Final', 52, 46, 2, 1);
INSERT INTO public.games VALUES (67, 2014, 'Eighth-Final', 53, 57, 2, 1);
INSERT INTO public.games VALUES (68, 2014, 'Eighth-Final', 50, 44, 1, 0);
INSERT INTO public.games VALUES (69, 2014, 'Eighth-Final', 37, 58, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (35, 'France');
INSERT INTO public.teams VALUES (36, 'Croatia');
INSERT INTO public.teams VALUES (37, 'Belgium');
INSERT INTO public.teams VALUES (38, 'England');
INSERT INTO public.teams VALUES (39, 'Russia');
INSERT INTO public.teams VALUES (40, 'Sweden');
INSERT INTO public.teams VALUES (41, 'Brazil');
INSERT INTO public.teams VALUES (42, 'Uruguay');
INSERT INTO public.teams VALUES (43, 'Colombia');
INSERT INTO public.teams VALUES (44, 'Switzerland');
INSERT INTO public.teams VALUES (45, 'Japan');
INSERT INTO public.teams VALUES (46, 'Mexico');
INSERT INTO public.teams VALUES (47, 'Denmark');
INSERT INTO public.teams VALUES (48, 'Spain');
INSERT INTO public.teams VALUES (49, 'Portugal');
INSERT INTO public.teams VALUES (50, 'Argentina');
INSERT INTO public.teams VALUES (51, 'Germany');
INSERT INTO public.teams VALUES (52, 'Netherlands');
INSERT INTO public.teams VALUES (53, 'Costa Rica');
INSERT INTO public.teams VALUES (54, 'Chile');
INSERT INTO public.teams VALUES (55, 'Nigeria');
INSERT INTO public.teams VALUES (56, 'Algeria');
INSERT INTO public.teams VALUES (57, 'Greece');
INSERT INTO public.teams VALUES (58, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 69, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 58, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

