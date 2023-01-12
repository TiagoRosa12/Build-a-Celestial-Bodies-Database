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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    distance integer NOT NULL,
    cor character varying(10),
    bonita character varying(10),
    local character varying(20)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: missoes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.missoes (
    name character varying(10),
    local text NOT NULL,
    objetivo text,
    missoes_id integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.missoes OWNER TO freecodecamp;

--
-- Name: missoes_missoes_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.missoes_missoes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.missoes_missoes_id_seq OWNER TO freecodecamp;

--
-- Name: missoes_missoes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.missoes_missoes_id_seq OWNED BY public.missoes.missoes_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    distance integer NOT NULL,
    habitavel boolean,
    bonita character varying(20)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    distance integer NOT NULL,
    habitavel boolean,
    temperature numeric(10,2)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    distance integer NOT NULL,
    name character varying(10),
    bonita character varying(20),
    cor character varying(10)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: missoes missoes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.missoes ALTER COLUMN missoes_id SET DEFAULT nextval('public.missoes_missoes_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'estelar', 10, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'arana', 20, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'melo', 30, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'olo', 40, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'checa', 50, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'chino', 60, NULL, NULL, NULL);


--
-- Data for Name: missoes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.missoes VALUES ('grande', 'costa', 'ganhar', 1, NULL);
INSERT INTO public.missoes VALUES ('melo', 'gre', 'vitoria', 2, NULL);
INSERT INTO public.missoes VALUES ('rito', 'upa', 'parabens', 3, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lua', 30, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'lua1', 40, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'lua2', 50, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'lua3', 60, false, 'sim');
INSERT INTO public.moon VALUES (5, 'lua4', 70, false, 'sim');
INSERT INTO public.moon VALUES (6, 'lua5', 80, false, 'sim');
INSERT INTO public.moon VALUES (7, 'lua6', 90, false, 'sim');
INSERT INTO public.moon VALUES (8, 'lua7', 100, false, 'sim');
INSERT INTO public.moon VALUES (9, 'lua8', 110, false, 'sim');
INSERT INTO public.moon VALUES (10, 'lua9', 120, false, 'sim');
INSERT INTO public.moon VALUES (11, 'lua10', 130, false, 'sim');
INSERT INTO public.moon VALUES (12, 'lua11', 140, false, 'sim');
INSERT INTO public.moon VALUES (13, 'lua12', 150, false, 'sim');
INSERT INTO public.moon VALUES (14, 'lua13', 160, false, 'sim');
INSERT INTO public.moon VALUES (15, 'lua14', 170, false, 'sim');
INSERT INTO public.moon VALUES (16, 'lua15', 180, false, 'sim');
INSERT INTO public.moon VALUES (17, 'lua16', 190, false, 'sim');
INSERT INTO public.moon VALUES (18, 'lua17', 200, false, 'sim');
INSERT INTO public.moon VALUES (19, 'lua18', 210, false, 'sim');
INSERT INTO public.moon VALUES (20, 'lua19', 220, false, 'sim');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'MERCURIO', 10, NULL, 500.00);
INSERT INTO public.planet VALUES (2, 'venus', 11, false, 450.00);
INSERT INTO public.planet VALUES (3, 'terra', 12, false, 440.00);
INSERT INTO public.planet VALUES (4, 'venus', 13, false, 430.00);
INSERT INTO public.planet VALUES (5, 'venus', 14, false, 420.00);
INSERT INTO public.planet VALUES (6, 'venus', 15, false, 410.00);
INSERT INTO public.planet VALUES (7, 'venus', 16, false, 400.00);
INSERT INTO public.planet VALUES (8, 'venus', 17, false, 390.00);
INSERT INTO public.planet VALUES (9, 'venus', 18, false, 380.00);
INSERT INTO public.planet VALUES (10, 'venus', 19, false, 390.00);
INSERT INTO public.planet VALUES (11, 'venus', 20, false, 380.00);
INSERT INTO public.planet VALUES (12, 'venus', 21, false, 370.00);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1000, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 900, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 910, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 920, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 930, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 940, NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: missoes_missoes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.missoes_missoes_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_distance_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_distance_key UNIQUE (distance);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: missoes missoes_objetivo_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.missoes
    ADD CONSTRAINT missoes_objetivo_key UNIQUE (objetivo);


--
-- Name: missoes missoes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.missoes
    ADD CONSTRAINT missoes_pkey PRIMARY KEY (missoes_id);


--
-- Name: moon moon_distance_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_distance_key UNIQUE (distance);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_distance_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_key UNIQUE (distance);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_distance_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distance_key UNIQUE (distance);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: missoes missoes_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.missoes
    ADD CONSTRAINT missoes_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

