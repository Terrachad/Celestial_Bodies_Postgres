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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(50) NOT NULL,
    dangerous boolean,
    distance_from_earth numeric,
    size integer,
    class character varying(2)
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type character varying(30) NOT NULL,
    description text,
    has_life boolean,
    size integer
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    regular_moon boolean,
    description text,
    planet_id integer
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
    name character varying(50) NOT NULL,
    type character varying(30),
    description text,
    has_moons boolean,
    star_id integer
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
    name character varying(50) NOT NULL,
    type character varying(30),
    description text,
    galaxy_id integer
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, '1 Ceres', false, NULL, NULL, 'G');
INSERT INTO public.asteroid VALUES (2, '4 Vesta', false, NULL, NULL, 'V');
INSERT INTO public.asteroid VALUES (3, '2 Pallas', false, NULL, NULL, 'B');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral Galaxy', 'Home, sweet home', true, NULL);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'Spiral Galaxy', 'younger than us', true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Sagittarius Dwarf', 'Spheroidal Galaxy', 'Elliptical loop-shaped satellite galaxy', true, NULL);
INSERT INTO public.galaxy VALUES (4, 'Saggittarius Dwarf', 'Spheroidal Galaxy', 'elliptical loop-shaper sattelite', true, NULL);
INSERT INTO public.galaxy VALUES (5, 'Backward Galaxy', 'Spiral Galaxy', 'backward dude', true, NULL);
INSERT INTO public.galaxy VALUES (6, 'Black Eye Galaxy', 'Spiral Galaxy', 'It has a spectacular dark band of absorbing dust in front of the galaxy''s bright nucleus, giving rise to its nicknames of the ''Black Eye'' or ''Evil Eye'' galaxy.', true, NULL);
INSERT INTO public.galaxy VALUES (7, 'Bode''s Galaxy', 'Spiral Galaxy', 'Named for Johann Elert Bode who discovered this galaxy in 1774.', true, NULL);
INSERT INTO public.galaxy VALUES (8, 'Butterfly Galaxies', 'Spiral Galaxies', 'Looks are similar to a butterfly.', true, NULL);
INSERT INTO public.galaxy VALUES (9, 'Cartwheel Galaxy', 'Spiral Galaxies', 'Its visual appearance is similar to that of a spoked cartwheel.', true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', true, 'Cheese in the sky', NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', true, 'Mars I', NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', true, 'is the smaller and outermost of the two natural satellites of Mars', NULL);
INSERT INTO public.moon VALUES (4, 'Io', true, 'Jupiter I', NULL);
INSERT INTO public.moon VALUES (5, 'Europa', true, 'Jupiter II', NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', true, 'Jupiter III', NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', true, ' is the second-largest moon of Jupiter,', NULL);
INSERT INTO public.moon VALUES (8, 'Amalthea', true, ' is a moon of Jupiter', NULL);
INSERT INTO public.moon VALUES (9, 'Himalia', true, 'Jupiter VI', NULL);
INSERT INTO public.moon VALUES (10, 'Elara', true, ' is a prograde irregular satellite of Jupiter', NULL);
INSERT INTO public.moon VALUES (11, 'Pasiphae', true, ' is a prograde irregular satellite of Jupiter', NULL);
INSERT INTO public.moon VALUES (12, 'Sinope', true, ' is a prograde irregular satellite of Jupiter', NULL);
INSERT INTO public.moon VALUES (13, 'Lysithea', true, ' is a prograde irregular satellite of Jupiter', NULL);
INSERT INTO public.moon VALUES (14, 'Carme', true, 'is a retrograde irregular satellite of Jupiter', NULL);
INSERT INTO public.moon VALUES (15, 'Ananke', true, 'Ananke is a retrograde irregular moon of Jupiter', NULL);
INSERT INTO public.moon VALUES (16, 'Leda', true, ' also known as Jupiter XIII', NULL);
INSERT INTO public.moon VALUES (17, 'Thebe', true, 'also known as Jupiter XIV', NULL);
INSERT INTO public.moon VALUES (18, 'Adrastea', true, 'also known as Jupiter XV', NULL);
INSERT INTO public.moon VALUES (19, 'Metis', true, 'also known as Jupiter XVI', NULL);
INSERT INTO public.moon VALUES (20, 'Callirrhoe', true, 'also known as Jupiter XVII', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (11, 'HAT-P-7b', NULL, 'HAT-P-7b (or Kepler-2b) is an extrasolar planet discovered in 2008.', true, NULL);
INSERT INTO public.planet VALUES (12, 'HAT-P-11b', NULL, 'HAT-P-11b (or Kepler-3b) is an extrasolar planet orbiting the star HAT-P-11', true, NULL);
INSERT INTO public.planet VALUES (13, 'Kepler-4b', NULL, 'Kepler-4b, initially known as KOI 7.01, is an extrasolar planet first detected as a transit by the Kepler spacecraft. Its radius and mass are similar to that of Neptune', true, NULL);
INSERT INTO public.planet VALUES (14, 'Kepler-5b', NULL, 'Kepler-5b is one of the first five planets discovered by NASA''s Kepler spacecraft.', true, NULL);
INSERT INTO public.planet VALUES (15, 'Kepler-6b', NULL, 'Kepler-6b is an extrasolar planet in the orbit of the unusually metal-rich Kepler-6', true, NULL);
INSERT INTO public.planet VALUES (16, 'Kepler-7b', NULL, 'Kepler-7b is one of the first five exoplanets to be confirmed by NASA''s Kepler spacecraft', true, NULL);
INSERT INTO public.planet VALUES (17, 'Kepler-8b', NULL, 'Kepler-8b is the fifth of the first five exoplanets discovered by NASA''s Kepler spacecraft', true, NULL);
INSERT INTO public.planet VALUES (18, 'Kepler-9b', NULL, 'Kepler-9b is one of the first planets discovered outside the solar system (exoplanets) by NASA''s Kepler Mission. It revolves around the star Kepler-9 within the constellation Lyra. ', true, NULL);
INSERT INTO public.planet VALUES (19, 'Kepler-9c', NULL, 'Kepler-9c is one of the first seven extrasolar planets, exoplanets, discovered by NASA''s Kepler Mission, and one of at least two planets orbiting the star Kepler-9.', true, NULL);
INSERT INTO public.planet VALUES (20, 'Kepler-9d', NULL, 'Kepler-9d (formerly known as KOI-377.03) is a planet in orbit around the sun-like star Kepler-9. Initially discovered by Kepler spacecraft, a terrestrial planet-searching satellite built and operated by NASA, Kepler-9d is most likely a Super-Earth, with an estimated radius approximately 60% larger than that of Earth''s, although its exact mass cannot be determined. ', true, NULL);
INSERT INTO public.planet VALUES (21, 'Kepler-10b', NULL, 'Kepler-10b is the first confirmed terrestrial planet to have been discovered outside the Solar System by the Kepler Space Telescope.', true, NULL);
INSERT INTO public.planet VALUES (22, 'Kepler-10c', NULL, 'Kepler-10c is an exoplanet orbiting the G-type star Kepler-10, located around 608 light-years away in Draco.', true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The sun', 'Yellow Dwarf Star', 'My light', NULL);
INSERT INTO public.star VALUES (2, 'Sun', 'G', 'The Sun is the star at the center of the Solar System. ', NULL);
INSERT INTO public.star VALUES (3, 'Sirius', 'A', 'Sirius is the brightest star in the night sky.', NULL);
INSERT INTO public.star VALUES (4, 'Canopus', 'A', 'Canopus is the brightest star in the southern constellation of Carina ', NULL);
INSERT INTO public.star VALUES (5, 'Rigil Kentaurus & Toliman', 'G', 'Is a triple star system in the southern constellation of Centaurus.', NULL);
INSERT INTO public.star VALUES (6, 'Arcturus', 'K', 'Arcturus is the brightest star in the northern constellation of Boötes.', NULL);
INSERT INTO public.star VALUES (7, 'Vega', 'A', 'Vega is the brightest star in the northern constellation of Lyra.', NULL);
INSERT INTO public.star VALUES (8, 'Capella', 'G', 'Capella is the brightest star in the northern constellation of Auriga.', NULL);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 22, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: asteroid unique_asteroid_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT unique_asteroid_name UNIQUE (name);


--
-- Name: star fk_parent_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_parent_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_parent_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_parent_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_parent_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_parent_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

