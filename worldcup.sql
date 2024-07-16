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
    round character varying(255) NOT NULL,
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
    name character varying(255) NOT NULL
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

INSERT INTO public.games VALUES (449, 2018, 'Final', 326, 327, 4, 2);
INSERT INTO public.games VALUES (450, 2018, 'Third Place', 328, 329, 2, 0);
INSERT INTO public.games VALUES (451, 2018, 'Semi-Final', 327, 329, 2, 1);
INSERT INTO public.games VALUES (452, 2018, 'Semi-Final', 326, 328, 1, 0);
INSERT INTO public.games VALUES (453, 2018, 'Quarter-Final', 327, 330, 3, 2);
INSERT INTO public.games VALUES (454, 2018, 'Quarter-Final', 329, 331, 2, 0);
INSERT INTO public.games VALUES (455, 2018, 'Quarter-Final', 328, 332, 2, 1);
INSERT INTO public.games VALUES (456, 2018, 'Quarter-Final', 326, 333, 2, 0);
INSERT INTO public.games VALUES (457, 2018, 'Eighth-Final', 329, 334, 2, 1);
INSERT INTO public.games VALUES (458, 2018, 'Eighth-Final', 331, 335, 1, 0);
INSERT INTO public.games VALUES (459, 2018, 'Eighth-Final', 328, 336, 3, 2);
INSERT INTO public.games VALUES (460, 2018, 'Eighth-Final', 332, 337, 2, 0);
INSERT INTO public.games VALUES (461, 2018, 'Eighth-Final', 327, 338, 2, 1);
INSERT INTO public.games VALUES (462, 2018, 'Eighth-Final', 330, 339, 2, 1);
INSERT INTO public.games VALUES (463, 2018, 'Eighth-Final', 333, 340, 2, 1);
INSERT INTO public.games VALUES (464, 2018, 'Eighth-Final', 326, 341, 4, 3);
INSERT INTO public.games VALUES (465, 2014, 'Final', 342, 341, 1, 0);
INSERT INTO public.games VALUES (466, 2014, 'Third Place', 343, 332, 3, 0);
INSERT INTO public.games VALUES (467, 2014, 'Semi-Final', 341, 343, 1, 0);
INSERT INTO public.games VALUES (468, 2014, 'Semi-Final', 342, 332, 7, 1);
INSERT INTO public.games VALUES (469, 2014, 'Quarter-Final', 343, 344, 1, 0);
INSERT INTO public.games VALUES (470, 2014, 'Quarter-Final', 341, 328, 1, 0);
INSERT INTO public.games VALUES (471, 2014, 'Quarter-Final', 332, 334, 2, 1);
INSERT INTO public.games VALUES (472, 2014, 'Quarter-Final', 342, 326, 1, 0);
INSERT INTO public.games VALUES (473, 2014, 'Eighth-Final', 332, 345, 2, 1);
INSERT INTO public.games VALUES (474, 2014, 'Eighth-Final', 334, 333, 2, 0);
INSERT INTO public.games VALUES (475, 2014, 'Eighth-Final', 326, 346, 2, 0);
INSERT INTO public.games VALUES (476, 2014, 'Eighth-Final', 342, 347, 2, 1);
INSERT INTO public.games VALUES (477, 2014, 'Eighth-Final', 343, 337, 2, 1);
INSERT INTO public.games VALUES (478, 2014, 'Eighth-Final', 344, 348, 2, 1);
INSERT INTO public.games VALUES (479, 2014, 'Eighth-Final', 341, 335, 1, 0);
INSERT INTO public.games VALUES (480, 2014, 'Eighth-Final', 328, 349, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (326, 'France');
INSERT INTO public.teams VALUES (327, 'Croatia');
INSERT INTO public.teams VALUES (328, 'Belgium');
INSERT INTO public.teams VALUES (329, 'England');
INSERT INTO public.teams VALUES (330, 'Russia');
INSERT INTO public.teams VALUES (331, 'Sweden');
INSERT INTO public.teams VALUES (332, 'Brazil');
INSERT INTO public.teams VALUES (333, 'Uruguay');
INSERT INTO public.teams VALUES (334, 'Colombia');
INSERT INTO public.teams VALUES (335, 'Switzerland');
INSERT INTO public.teams VALUES (336, 'Japan');
INSERT INTO public.teams VALUES (337, 'Mexico');
INSERT INTO public.teams VALUES (338, 'Denmark');
INSERT INTO public.teams VALUES (339, 'Spain');
INSERT INTO public.teams VALUES (340, 'Portugal');
INSERT INTO public.teams VALUES (341, 'Argentina');
INSERT INTO public.teams VALUES (342, 'Germany');
INSERT INTO public.teams VALUES (343, 'Netherlands');
INSERT INTO public.teams VALUES (344, 'Costa Rica');
INSERT INTO public.teams VALUES (345, 'Chile');
INSERT INTO public.teams VALUES (346, 'Nigeria');
INSERT INTO public.teams VALUES (347, 'Algeria');
INSERT INTO public.teams VALUES (348, 'Greece');
INSERT INTO public.teams VALUES (349, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 480, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 349, true);


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

