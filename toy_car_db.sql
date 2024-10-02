--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

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
-- Name: cars; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.cars (
    id integer NOT NULL,
    title text,
    link text,
    vendor text,
    regular_price text,
    sale_price text
);


ALTER TABLE public.cars OWNER TO postgres1;

--
-- Name: cars_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres1
--

CREATE SEQUENCE public.cars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cars_id_seq OWNER TO postgres1;

--
-- Name: cars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public.cars_id_seq OWNED BY public.cars.id;


--
-- Name: full_car_details; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.full_car_details (
    id integer NOT NULL,
    title text,
    link text,
    vendor text,
    regular_price text,
    sale_price text,
    pickup_available_at text,
    pickup_availability text,
    description text
);


ALTER TABLE public.full_car_details OWNER TO postgres1;

--
-- Name: full_car_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres1
--

CREATE SEQUENCE public.full_car_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.full_car_details_id_seq OWNER TO postgres1;

--
-- Name: full_car_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public.full_car_details_id_seq OWNED BY public.full_car_details.id;


--
-- Name: product_recommendations; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.product_recommendations (
    id integer NOT NULL,
    title text NOT NULL,
    link text NOT NULL,
    regular_price text,
    sale_price text
);


ALTER TABLE public.product_recommendations OWNER TO postgres1;

--
-- Name: product_recommendations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres1
--

CREATE SEQUENCE public.product_recommendations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_recommendations_id_seq OWNER TO postgres1;

--
-- Name: product_recommendations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public.product_recommendations_id_seq OWNED BY public.product_recommendations.id;


--
-- Name: toy_cars; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.toy_cars (
    id integer NOT NULL,
    name text,
    price text,
    url text,
    description text,
    suggested_cars text
);


ALTER TABLE public.toy_cars OWNER TO postgres1;

--
-- Name: toy_cars_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres1
--

CREATE SEQUENCE public.toy_cars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.toy_cars_id_seq OWNER TO postgres1;

--
-- Name: toy_cars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public.toy_cars_id_seq OWNED BY public.toy_cars.id;


--
-- Name: cars id; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.cars ALTER COLUMN id SET DEFAULT nextval('public.cars_id_seq'::regclass);


--
-- Name: full_car_details id; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.full_car_details ALTER COLUMN id SET DEFAULT nextval('public.full_car_details_id_seq'::regclass);


--
-- Name: product_recommendations id; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.product_recommendations ALTER COLUMN id SET DEFAULT nextval('public.product_recommendations_id_seq'::regclass);


--
-- Name: toy_cars id; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.toy_cars ALTER COLUMN id SET DEFAULT nextval('public.toy_cars_id_seq'::regclass);


--
-- Data for Name: cars; Type: TABLE DATA; Schema: public; Owner: postgres1
--

COPY public.cars (id, title, link, vendor, regular_price, sale_price) FROM stdin;
1	LEGO CREATOR EXPERT NASA Apollo 11 Lunar Lander #10266	/products/lego-creator-expert-nasa-apollo-11-lunar-lander-10266	Lego	Rs. 11,999.00	Rs. 11,999.00
2	LEGO STAR WARS The Child #75318	/products/lego-star-wars-the-child-75318	Lego	Rs. 9,999.00	Rs. 9,999.00
3	LEGO SPEED CHAMPIONS Mopar Dodge//SRT Top Fuel Dragster and 1970 Dodge Challenger T/A #76904	/products/lego-speed-champions-mopar-dodge-srt-top-fuel-dragster-and-1970-dodge-challenger-t-a-76904	Lego	Rs. 7,699.00	Rs. 7,699.00
4	Ambassador MK II, 1:18, Beige by IXO Vahanam	/products/ambassador-mk-ii-1-18-beige-by-ixo-vahanam	IXO	Rs. 6,499.00	Rs. 6,499.00
5	Ambassador MK I, 1:18, Black by IXO Vahanam	/products/ambassador-mk-i-1-18-black-by-ixo-vahanam	IXO	Rs. 6,499.00	Rs. 6,499.00
6	LEGO TECHNIC Bugatti Bolide #42151	/products/lego-technic-bugatti-bolide-42151	Lego	Rs. 6,499.00	Rs. 6,499.00
7	LEGO CREATOR 3in1 Majestic Tiger #31129	/products/lego-creator-3in1-majestic-tiger-31129	Lego	Rs. 6,499.00	Rs. 6,499.00
8	LEGO CITY Custom Car Garage #60389	/products/lego-city-custom-car-garage-60389	Lego	Rs. 5,999.00	Rs. 5,999.00
9	LEGO MARVEL Iron Man Figure #76206	/products/lego-marvel-iron-man-figure-76206	Lego	Rs. 5,499.00	Rs. 5,499.00
10	Bburago Volkswagen Kafer-Beetle (1955), Cream, 1:18 Scale	/products/bburago-volkswagen-kafer-beetle-1955-cream-1-18-scale	Bburago	Rs. 4,995.00	Rs. 4,995.00
11	Bburago Jaguar E-Type Cabriolet, British Racing Green, 1:18 Scale	/products/bburago-jaguar-e-type-cabriolet-british-racing-green-1-18-scale	Bburago	Rs. 4,995.00	Rs. 4,995.00
12	Maisto Audi R8 GT, Matte Black, 1:18 Scale	/products/maisto-audi-r8-gt-matte-black-1-18-scale	Maisto	Rs. 4,995.00	Rs. 4,995.00
13	Bburago Ferrari F1-75, 2022 Charles Leclerc, Red, 1:24 Scale	/products/bburago-ferrari-f1-75-2022-charles-leclerc-red-1-24-scale	Bburago	Rs. 4,500.00	Rs. 4,500.00
14	Schuco Porsche 356 A Coupé, grey, 1:43	/products/schuco-porsche-356-a-coupe-grey-1-43	Schuco	Rs. 4,499.00	Rs. 4,499.00
15	LEGO CITY Recycling Truck #60386	/products/lego-city-recycling-truck-60386	Lego	Rs. 4,499.00	Rs. 4,499.00
16	Schuco Porsche 911 S, Sepia Brown 1:43	/products/schuco-porsche-911-s-sepia-brown-1-43	Schuco	Rs. 3,999.00	Rs. 3,999.00
17	Marvel Avengers Lykan Hypersport 1:24 & 2.75" Black Panther Figure	/products/marvel-avengers-lykan-hypersport-1-24-2-75-black-panther-figure	Jada Toys	Rs. 3,999.00	Rs. 3,999.00
18	It Chapter Two Pennywise & Henry Bower's Pontiac Firebird 1:24 & 2.75" Figures	/products/it-chapter-two-pennywise-henry-bowers-pontiac-firebird-1-24-2-75-figures	Jada Toys	Rs. 3,999.00	Rs. 3,999.00
19	LEGO CITY 4x4 Off-Roader Adventures #60387	/products/lego-city-4x4-off-roader-adventures-60387	Lego	Rs. 3,499.00	Rs. 3,499.00
20	LEGO CITY Horse Transporter #60327	/products/lego-city-horse-transporter-60327	Lego	Rs. 3,499.00	Rs. 3,499.00
21	LEGO CITY Ice Cream Truck Police Chase #60314	/products/lego-city-ice-cream-truck-police-chase-60314	Lego	Rs. 3,499.00	Rs. 3,499.00
22	Bburago Red Bull Racing RB19 (No. 11 with Sergio Perez Driver Figurine), Blue, 1:24 Scale Model	/products/bburago-red-bull-racing-rb19-no-11-with-sergio-perez-driver-figurine-blue-1-24-scale-model	Bburago	Rs. 3,495.00	Rs. 3,495.00
23	Bburago Ferrari SF-23 (No. 16 with Charles Leclerc Pilot Figurine), Red, 1:24 Scale Model	/products/bburago-ferrari-sf-23-no-16-with-charles-leclerc-pilot-figurine-red-1-24-scale-model	Bburago	Rs. 3,495.00	Rs. 3,495.00
24	Hot Wheels Pop Culture Mix 3 2024 (Full set of 5 Cars)	/products/hot-wheels-pop-culture-mix-3-2024-full-set-of-5-cars	Hot Wheels	Rs. 2,745.00	Rs. 2,745.00
25	LEGO CREATOR EXPERT NASA Apollo 11 Lunar Lander #10266	/products/lego-creator-expert-nasa-apollo-11-lunar-lander-10266	Lego	Rs. 11,999.00	Rs. 11,999.00
26	LEGO STAR WARS The Child #75318	/products/lego-star-wars-the-child-75318	Lego	Rs. 9,999.00	Rs. 9,999.00
27	LEGO SPEED CHAMPIONS Mopar Dodge//SRT Top Fuel Dragster and 1970 Dodge Challenger T/A #76904	/products/lego-speed-champions-mopar-dodge-srt-top-fuel-dragster-and-1970-dodge-challenger-t-a-76904	Lego	Rs. 7,699.00	Rs. 7,699.00
28	Ambassador MK II, 1:18, Beige by IXO Vahanam	/products/ambassador-mk-ii-1-18-beige-by-ixo-vahanam	IXO	Rs. 6,499.00	Rs. 6,499.00
29	Ambassador MK I, 1:18, Black by IXO Vahanam	/products/ambassador-mk-i-1-18-black-by-ixo-vahanam	IXO	Rs. 6,499.00	Rs. 6,499.00
30	LEGO TECHNIC Bugatti Bolide #42151	/products/lego-technic-bugatti-bolide-42151	Lego	Rs. 6,499.00	Rs. 6,499.00
31	LEGO CREATOR 3in1 Majestic Tiger #31129	/products/lego-creator-3in1-majestic-tiger-31129	Lego	Rs. 6,499.00	Rs. 6,499.00
32	LEGO CITY Custom Car Garage #60389	/products/lego-city-custom-car-garage-60389	Lego	Rs. 5,999.00	Rs. 5,999.00
33	LEGO MARVEL Iron Man Figure #76206	/products/lego-marvel-iron-man-figure-76206	Lego	Rs. 5,499.00	Rs. 5,499.00
34	Bburago Volkswagen Kafer-Beetle (1955), Cream, 1:18 Scale	/products/bburago-volkswagen-kafer-beetle-1955-cream-1-18-scale	Bburago	Rs. 4,995.00	Rs. 4,995.00
35	Bburago Jaguar E-Type Cabriolet, British Racing Green, 1:18 Scale	/products/bburago-jaguar-e-type-cabriolet-british-racing-green-1-18-scale	Bburago	Rs. 4,995.00	Rs. 4,995.00
36	Maisto Audi R8 GT, Matte Black, 1:18 Scale	/products/maisto-audi-r8-gt-matte-black-1-18-scale	Maisto	Rs. 4,995.00	Rs. 4,995.00
37	Bburago Ferrari F1-75, 2022 Charles Leclerc, Red, 1:24 Scale	/products/bburago-ferrari-f1-75-2022-charles-leclerc-red-1-24-scale	Bburago	Rs. 4,500.00	Rs. 4,500.00
38	Schuco Porsche 356 A Coupé, grey, 1:43	/products/schuco-porsche-356-a-coupe-grey-1-43	Schuco	Rs. 4,499.00	Rs. 4,499.00
39	LEGO CITY Recycling Truck #60386	/products/lego-city-recycling-truck-60386	Lego	Rs. 4,499.00	Rs. 4,499.00
40	Schuco Porsche 911 S, Sepia Brown 1:43	/products/schuco-porsche-911-s-sepia-brown-1-43	Schuco	Rs. 3,999.00	Rs. 3,999.00
41	Marvel Avengers Lykan Hypersport 1:24 & 2.75" Black Panther Figure	/products/marvel-avengers-lykan-hypersport-1-24-2-75-black-panther-figure	Jada Toys	Rs. 3,999.00	Rs. 3,999.00
42	It Chapter Two Pennywise & Henry Bower's Pontiac Firebird 1:24 & 2.75" Figures	/products/it-chapter-two-pennywise-henry-bowers-pontiac-firebird-1-24-2-75-figures	Jada Toys	Rs. 3,999.00	Rs. 3,999.00
43	LEGO CITY 4x4 Off-Roader Adventures #60387	/products/lego-city-4x4-off-roader-adventures-60387	Lego	Rs. 3,499.00	Rs. 3,499.00
44	LEGO CITY Horse Transporter #60327	/products/lego-city-horse-transporter-60327	Lego	Rs. 3,499.00	Rs. 3,499.00
45	LEGO CITY Ice Cream Truck Police Chase #60314	/products/lego-city-ice-cream-truck-police-chase-60314	Lego	Rs. 3,499.00	Rs. 3,499.00
46	Bburago Red Bull Racing RB19 (No. 11 with Sergio Perez Driver Figurine), Blue, 1:24 Scale Model	/products/bburago-red-bull-racing-rb19-no-11-with-sergio-perez-driver-figurine-blue-1-24-scale-model	Bburago	Rs. 3,495.00	Rs. 3,495.00
47	Bburago Ferrari SF-23 (No. 16 with Charles Leclerc Pilot Figurine), Red, 1:24 Scale Model	/products/bburago-ferrari-sf-23-no-16-with-charles-leclerc-pilot-figurine-red-1-24-scale-model	Bburago	Rs. 3,495.00	Rs. 3,495.00
48	Hot Wheels Pop Culture Mix 3 2024 (Full set of 5 Cars)	/products/hot-wheels-pop-culture-mix-3-2024-full-set-of-5-cars	Hot Wheels	Rs. 2,745.00	Rs. 2,745.00
49	LEGO CREATOR EXPERT NASA Apollo 11 Lunar Lander #10266	/products/lego-creator-expert-nasa-apollo-11-lunar-lander-10266	Lego	Rs. 11,999.00	Rs. 11,999.00
50	LEGO STAR WARS The Child #75318	/products/lego-star-wars-the-child-75318	Lego	Rs. 9,999.00	Rs. 9,999.00
51	LEGO SPEED CHAMPIONS Mopar Dodge//SRT Top Fuel Dragster and 1970 Dodge Challenger T/A #76904	/products/lego-speed-champions-mopar-dodge-srt-top-fuel-dragster-and-1970-dodge-challenger-t-a-76904	Lego	Rs. 7,699.00	Rs. 7,699.00
52	Ambassador MK II, 1:18, Beige by IXO Vahanam	/products/ambassador-mk-ii-1-18-beige-by-ixo-vahanam	IXO	Rs. 6,499.00	Rs. 6,499.00
53	Ambassador MK I, 1:18, Black by IXO Vahanam	/products/ambassador-mk-i-1-18-black-by-ixo-vahanam	IXO	Rs. 6,499.00	Rs. 6,499.00
54	LEGO TECHNIC Bugatti Bolide #42151	/products/lego-technic-bugatti-bolide-42151	Lego	Rs. 6,499.00	Rs. 6,499.00
55	LEGO CREATOR 3in1 Majestic Tiger #31129	/products/lego-creator-3in1-majestic-tiger-31129	Lego	Rs. 6,499.00	Rs. 6,499.00
56	LEGO CITY Custom Car Garage #60389	/products/lego-city-custom-car-garage-60389	Lego	Rs. 5,999.00	Rs. 5,999.00
57	LEGO MARVEL Iron Man Figure #76206	/products/lego-marvel-iron-man-figure-76206	Lego	Rs. 5,499.00	Rs. 5,499.00
58	Bburago Volkswagen Kafer-Beetle (1955), Cream, 1:18 Scale	/products/bburago-volkswagen-kafer-beetle-1955-cream-1-18-scale	Bburago	Rs. 4,995.00	Rs. 4,995.00
59	Bburago Jaguar E-Type Cabriolet, British Racing Green, 1:18 Scale	/products/bburago-jaguar-e-type-cabriolet-british-racing-green-1-18-scale	Bburago	Rs. 4,995.00	Rs. 4,995.00
60	Maisto Audi R8 GT, Matte Black, 1:18 Scale	/products/maisto-audi-r8-gt-matte-black-1-18-scale	Maisto	Rs. 4,995.00	Rs. 4,995.00
61	Bburago Ferrari F1-75, 2022 Charles Leclerc, Red, 1:24 Scale	/products/bburago-ferrari-f1-75-2022-charles-leclerc-red-1-24-scale	Bburago	Rs. 4,500.00	Rs. 4,500.00
62	Schuco Porsche 356 A Coupé, grey, 1:43	/products/schuco-porsche-356-a-coupe-grey-1-43	Schuco	Rs. 4,499.00	Rs. 4,499.00
63	LEGO CITY Recycling Truck #60386	/products/lego-city-recycling-truck-60386	Lego	Rs. 4,499.00	Rs. 4,499.00
64	Schuco Porsche 911 S, Sepia Brown 1:43	/products/schuco-porsche-911-s-sepia-brown-1-43	Schuco	Rs. 3,999.00	Rs. 3,999.00
65	Marvel Avengers Lykan Hypersport 1:24 & 2.75" Black Panther Figure	/products/marvel-avengers-lykan-hypersport-1-24-2-75-black-panther-figure	Jada Toys	Rs. 3,999.00	Rs. 3,999.00
66	It Chapter Two Pennywise & Henry Bower's Pontiac Firebird 1:24 & 2.75" Figures	/products/it-chapter-two-pennywise-henry-bowers-pontiac-firebird-1-24-2-75-figures	Jada Toys	Rs. 3,999.00	Rs. 3,999.00
67	LEGO CITY 4x4 Off-Roader Adventures #60387	/products/lego-city-4x4-off-roader-adventures-60387	Lego	Rs. 3,499.00	Rs. 3,499.00
68	LEGO CITY Horse Transporter #60327	/products/lego-city-horse-transporter-60327	Lego	Rs. 3,499.00	Rs. 3,499.00
69	LEGO CITY Ice Cream Truck Police Chase #60314	/products/lego-city-ice-cream-truck-police-chase-60314	Lego	Rs. 3,499.00	Rs. 3,499.00
70	Bburago Red Bull Racing RB19 (No. 11 with Sergio Perez Driver Figurine), Blue, 1:24 Scale Model	/products/bburago-red-bull-racing-rb19-no-11-with-sergio-perez-driver-figurine-blue-1-24-scale-model	Bburago	Rs. 3,495.00	Rs. 3,495.00
71	Bburago Ferrari SF-23 (No. 16 with Charles Leclerc Pilot Figurine), Red, 1:24 Scale Model	/products/bburago-ferrari-sf-23-no-16-with-charles-leclerc-pilot-figurine-red-1-24-scale-model	Bburago	Rs. 3,495.00	Rs. 3,495.00
72	Hot Wheels Pop Culture Mix 3 2024 (Full set of 5 Cars)	/products/hot-wheels-pop-culture-mix-3-2024-full-set-of-5-cars	Hot Wheels	Rs. 2,745.00	Rs. 2,745.00
73	LEGO CREATOR EXPERT NASA Apollo 11 Lunar Lander #10266	/products/lego-creator-expert-nasa-apollo-11-lunar-lander-10266	Lego	Rs. 11,999.00	Rs. 11,999.00
74	LEGO STAR WARS The Child #75318	/products/lego-star-wars-the-child-75318	Lego	Rs. 9,999.00	Rs. 9,999.00
75	LEGO SPEED CHAMPIONS Mopar Dodge//SRT Top Fuel Dragster and 1970 Dodge Challenger T/A #76904	/products/lego-speed-champions-mopar-dodge-srt-top-fuel-dragster-and-1970-dodge-challenger-t-a-76904	Lego	Rs. 7,699.00	Rs. 7,699.00
76	Ambassador MK II, 1:18, Beige by IXO Vahanam	/products/ambassador-mk-ii-1-18-beige-by-ixo-vahanam	IXO	Rs. 6,499.00	Rs. 6,499.00
77	Ambassador MK I, 1:18, Black by IXO Vahanam	/products/ambassador-mk-i-1-18-black-by-ixo-vahanam	IXO	Rs. 6,499.00	Rs. 6,499.00
78	LEGO TECHNIC Bugatti Bolide #42151	/products/lego-technic-bugatti-bolide-42151	Lego	Rs. 6,499.00	Rs. 6,499.00
79	LEGO CREATOR 3in1 Majestic Tiger #31129	/products/lego-creator-3in1-majestic-tiger-31129	Lego	Rs. 6,499.00	Rs. 6,499.00
80	LEGO CITY Custom Car Garage #60389	/products/lego-city-custom-car-garage-60389	Lego	Rs. 5,999.00	Rs. 5,999.00
81	LEGO MARVEL Iron Man Figure #76206	/products/lego-marvel-iron-man-figure-76206	Lego	Rs. 5,499.00	Rs. 5,499.00
82	Bburago Volkswagen Kafer-Beetle (1955), Cream, 1:18 Scale	/products/bburago-volkswagen-kafer-beetle-1955-cream-1-18-scale	Bburago	Rs. 4,995.00	Rs. 4,995.00
83	Bburago Jaguar E-Type Cabriolet, British Racing Green, 1:18 Scale	/products/bburago-jaguar-e-type-cabriolet-british-racing-green-1-18-scale	Bburago	Rs. 4,995.00	Rs. 4,995.00
84	Maisto Audi R8 GT, Matte Black, 1:18 Scale	/products/maisto-audi-r8-gt-matte-black-1-18-scale	Maisto	Rs. 4,995.00	Rs. 4,995.00
85	Bburago Ferrari F1-75, 2022 Charles Leclerc, Red, 1:24 Scale	/products/bburago-ferrari-f1-75-2022-charles-leclerc-red-1-24-scale	Bburago	Rs. 4,500.00	Rs. 4,500.00
86	Schuco Porsche 356 A Coupé, grey, 1:43	/products/schuco-porsche-356-a-coupe-grey-1-43	Schuco	Rs. 4,499.00	Rs. 4,499.00
87	LEGO CITY Recycling Truck #60386	/products/lego-city-recycling-truck-60386	Lego	Rs. 4,499.00	Rs. 4,499.00
88	Schuco Porsche 911 S, Sepia Brown 1:43	/products/schuco-porsche-911-s-sepia-brown-1-43	Schuco	Rs. 3,999.00	Rs. 3,999.00
89	Marvel Avengers Lykan Hypersport 1:24 & 2.75" Black Panther Figure	/products/marvel-avengers-lykan-hypersport-1-24-2-75-black-panther-figure	Jada Toys	Rs. 3,999.00	Rs. 3,999.00
90	It Chapter Two Pennywise & Henry Bower's Pontiac Firebird 1:24 & 2.75" Figures	/products/it-chapter-two-pennywise-henry-bowers-pontiac-firebird-1-24-2-75-figures	Jada Toys	Rs. 3,999.00	Rs. 3,999.00
91	LEGO CITY 4x4 Off-Roader Adventures #60387	/products/lego-city-4x4-off-roader-adventures-60387	Lego	Rs. 3,499.00	Rs. 3,499.00
92	LEGO CITY Horse Transporter #60327	/products/lego-city-horse-transporter-60327	Lego	Rs. 3,499.00	Rs. 3,499.00
93	LEGO CITY Ice Cream Truck Police Chase #60314	/products/lego-city-ice-cream-truck-police-chase-60314	Lego	Rs. 3,499.00	Rs. 3,499.00
94	Bburago Red Bull Racing RB19 (No. 11 with Sergio Perez Driver Figurine), Blue, 1:24 Scale Model	/products/bburago-red-bull-racing-rb19-no-11-with-sergio-perez-driver-figurine-blue-1-24-scale-model	Bburago	Rs. 3,495.00	Rs. 3,495.00
95	Bburago Ferrari SF-23 (No. 16 with Charles Leclerc Pilot Figurine), Red, 1:24 Scale Model	/products/bburago-ferrari-sf-23-no-16-with-charles-leclerc-pilot-figurine-red-1-24-scale-model	Bburago	Rs. 3,495.00	Rs. 3,495.00
96	Hot Wheels Pop Culture Mix 3 2024 (Full set of 5 Cars)	/products/hot-wheels-pop-culture-mix-3-2024-full-set-of-5-cars	Hot Wheels	Rs. 2,745.00	Rs. 2,745.00
97	LEGO CREATOR EXPERT NASA Apollo 11 Lunar Lander #10266	/products/lego-creator-expert-nasa-apollo-11-lunar-lander-10266	Lego	Rs. 11,999.00	Rs. 11,999.00
98	LEGO STAR WARS The Child #75318	/products/lego-star-wars-the-child-75318	Lego	Rs. 9,999.00	Rs. 9,999.00
99	LEGO SPEED CHAMPIONS Mopar Dodge//SRT Top Fuel Dragster and 1970 Dodge Challenger T/A #76904	/products/lego-speed-champions-mopar-dodge-srt-top-fuel-dragster-and-1970-dodge-challenger-t-a-76904	Lego	Rs. 7,699.00	Rs. 7,699.00
100	Ambassador MK II, 1:18, Beige by IXO Vahanam	/products/ambassador-mk-ii-1-18-beige-by-ixo-vahanam	IXO	Rs. 6,499.00	Rs. 6,499.00
101	Ambassador MK I, 1:18, Black by IXO Vahanam	/products/ambassador-mk-i-1-18-black-by-ixo-vahanam	IXO	Rs. 6,499.00	Rs. 6,499.00
102	LEGO TECHNIC Bugatti Bolide #42151	/products/lego-technic-bugatti-bolide-42151	Lego	Rs. 6,499.00	Rs. 6,499.00
103	LEGO CREATOR 3in1 Majestic Tiger #31129	/products/lego-creator-3in1-majestic-tiger-31129	Lego	Rs. 6,499.00	Rs. 6,499.00
104	LEGO CITY Custom Car Garage #60389	/products/lego-city-custom-car-garage-60389	Lego	Rs. 5,999.00	Rs. 5,999.00
105	LEGO MARVEL Iron Man Figure #76206	/products/lego-marvel-iron-man-figure-76206	Lego	Rs. 5,499.00	Rs. 5,499.00
106	Bburago Volkswagen Kafer-Beetle (1955), Cream, 1:18 Scale	/products/bburago-volkswagen-kafer-beetle-1955-cream-1-18-scale	Bburago	Rs. 4,995.00	Rs. 4,995.00
107	Bburago Jaguar E-Type Cabriolet, British Racing Green, 1:18 Scale	/products/bburago-jaguar-e-type-cabriolet-british-racing-green-1-18-scale	Bburago	Rs. 4,995.00	Rs. 4,995.00
108	Maisto Audi R8 GT, Matte Black, 1:18 Scale	/products/maisto-audi-r8-gt-matte-black-1-18-scale	Maisto	Rs. 4,995.00	Rs. 4,995.00
109	Bburago Ferrari F1-75, 2022 Charles Leclerc, Red, 1:24 Scale	/products/bburago-ferrari-f1-75-2022-charles-leclerc-red-1-24-scale	Bburago	Rs. 4,500.00	Rs. 4,500.00
110	Schuco Porsche 356 A Coupé, grey, 1:43	/products/schuco-porsche-356-a-coupe-grey-1-43	Schuco	Rs. 4,499.00	Rs. 4,499.00
111	LEGO CITY Recycling Truck #60386	/products/lego-city-recycling-truck-60386	Lego	Rs. 4,499.00	Rs. 4,499.00
112	Schuco Porsche 911 S, Sepia Brown 1:43	/products/schuco-porsche-911-s-sepia-brown-1-43	Schuco	Rs. 3,999.00	Rs. 3,999.00
113	Marvel Avengers Lykan Hypersport 1:24 & 2.75" Black Panther Figure	/products/marvel-avengers-lykan-hypersport-1-24-2-75-black-panther-figure	Jada Toys	Rs. 3,999.00	Rs. 3,999.00
114	It Chapter Two Pennywise & Henry Bower's Pontiac Firebird 1:24 & 2.75" Figures	/products/it-chapter-two-pennywise-henry-bowers-pontiac-firebird-1-24-2-75-figures	Jada Toys	Rs. 3,999.00	Rs. 3,999.00
115	LEGO CITY 4x4 Off-Roader Adventures #60387	/products/lego-city-4x4-off-roader-adventures-60387	Lego	Rs. 3,499.00	Rs. 3,499.00
116	LEGO CITY Horse Transporter #60327	/products/lego-city-horse-transporter-60327	Lego	Rs. 3,499.00	Rs. 3,499.00
117	LEGO CITY Ice Cream Truck Police Chase #60314	/products/lego-city-ice-cream-truck-police-chase-60314	Lego	Rs. 3,499.00	Rs. 3,499.00
118	Bburago Red Bull Racing RB19 (No. 11 with Sergio Perez Driver Figurine), Blue, 1:24 Scale Model	/products/bburago-red-bull-racing-rb19-no-11-with-sergio-perez-driver-figurine-blue-1-24-scale-model	Bburago	Rs. 3,495.00	Rs. 3,495.00
119	Bburago Ferrari SF-23 (No. 16 with Charles Leclerc Pilot Figurine), Red, 1:24 Scale Model	/products/bburago-ferrari-sf-23-no-16-with-charles-leclerc-pilot-figurine-red-1-24-scale-model	Bburago	Rs. 3,495.00	Rs. 3,495.00
120	Hot Wheels Pop Culture Mix 3 2024 (Full set of 5 Cars)	/products/hot-wheels-pop-culture-mix-3-2024-full-set-of-5-cars	Hot Wheels	Rs. 2,745.00	Rs. 2,745.00
121	LEGO CREATOR EXPERT NASA Apollo 11 Lunar Lander #10266	/products/lego-creator-expert-nasa-apollo-11-lunar-lander-10266	Lego	Rs. 11,999.00	Rs. 11,999.00
122	LEGO STAR WARS The Child #75318	/products/lego-star-wars-the-child-75318	Lego	Rs. 9,999.00	Rs. 9,999.00
123	LEGO SPEED CHAMPIONS Mopar Dodge//SRT Top Fuel Dragster and 1970 Dodge Challenger T/A #76904	/products/lego-speed-champions-mopar-dodge-srt-top-fuel-dragster-and-1970-dodge-challenger-t-a-76904	Lego	Rs. 7,699.00	Rs. 7,699.00
124	Ambassador MK II, 1:18, Beige by IXO Vahanam	/products/ambassador-mk-ii-1-18-beige-by-ixo-vahanam	IXO	Rs. 6,499.00	Rs. 6,499.00
125	Ambassador MK I, 1:18, Black by IXO Vahanam	/products/ambassador-mk-i-1-18-black-by-ixo-vahanam	IXO	Rs. 6,499.00	Rs. 6,499.00
126	LEGO TECHNIC Bugatti Bolide #42151	/products/lego-technic-bugatti-bolide-42151	Lego	Rs. 6,499.00	Rs. 6,499.00
127	LEGO CREATOR 3in1 Majestic Tiger #31129	/products/lego-creator-3in1-majestic-tiger-31129	Lego	Rs. 6,499.00	Rs. 6,499.00
128	LEGO CITY Custom Car Garage #60389	/products/lego-city-custom-car-garage-60389	Lego	Rs. 5,999.00	Rs. 5,999.00
129	LEGO MARVEL Iron Man Figure #76206	/products/lego-marvel-iron-man-figure-76206	Lego	Rs. 5,499.00	Rs. 5,499.00
130	Bburago Volkswagen Kafer-Beetle (1955), Cream, 1:18 Scale	/products/bburago-volkswagen-kafer-beetle-1955-cream-1-18-scale	Bburago	Rs. 4,995.00	Rs. 4,995.00
131	Bburago Jaguar E-Type Cabriolet, British Racing Green, 1:18 Scale	/products/bburago-jaguar-e-type-cabriolet-british-racing-green-1-18-scale	Bburago	Rs. 4,995.00	Rs. 4,995.00
132	Maisto Audi R8 GT, Matte Black, 1:18 Scale	/products/maisto-audi-r8-gt-matte-black-1-18-scale	Maisto	Rs. 4,995.00	Rs. 4,995.00
133	Bburago Ferrari F1-75, 2022 Charles Leclerc, Red, 1:24 Scale	/products/bburago-ferrari-f1-75-2022-charles-leclerc-red-1-24-scale	Bburago	Rs. 4,500.00	Rs. 4,500.00
134	Schuco Porsche 356 A Coupé, grey, 1:43	/products/schuco-porsche-356-a-coupe-grey-1-43	Schuco	Rs. 4,499.00	Rs. 4,499.00
135	LEGO CITY Recycling Truck #60386	/products/lego-city-recycling-truck-60386	Lego	Rs. 4,499.00	Rs. 4,499.00
136	Schuco Porsche 911 S, Sepia Brown 1:43	/products/schuco-porsche-911-s-sepia-brown-1-43	Schuco	Rs. 3,999.00	Rs. 3,999.00
137	Marvel Avengers Lykan Hypersport 1:24 & 2.75" Black Panther Figure	/products/marvel-avengers-lykan-hypersport-1-24-2-75-black-panther-figure	Jada Toys	Rs. 3,999.00	Rs. 3,999.00
138	It Chapter Two Pennywise & Henry Bower's Pontiac Firebird 1:24 & 2.75" Figures	/products/it-chapter-two-pennywise-henry-bowers-pontiac-firebird-1-24-2-75-figures	Jada Toys	Rs. 3,999.00	Rs. 3,999.00
139	LEGO CITY 4x4 Off-Roader Adventures #60387	/products/lego-city-4x4-off-roader-adventures-60387	Lego	Rs. 3,499.00	Rs. 3,499.00
140	LEGO CITY Horse Transporter #60327	/products/lego-city-horse-transporter-60327	Lego	Rs. 3,499.00	Rs. 3,499.00
141	LEGO CITY Ice Cream Truck Police Chase #60314	/products/lego-city-ice-cream-truck-police-chase-60314	Lego	Rs. 3,499.00	Rs. 3,499.00
142	Bburago Red Bull Racing RB19 (No. 11 with Sergio Perez Driver Figurine), Blue, 1:24 Scale Model	/products/bburago-red-bull-racing-rb19-no-11-with-sergio-perez-driver-figurine-blue-1-24-scale-model	Bburago	Rs. 3,495.00	Rs. 3,495.00
143	Bburago Ferrari SF-23 (No. 16 with Charles Leclerc Pilot Figurine), Red, 1:24 Scale Model	/products/bburago-ferrari-sf-23-no-16-with-charles-leclerc-pilot-figurine-red-1-24-scale-model	Bburago	Rs. 3,495.00	Rs. 3,495.00
144	Hot Wheels Pop Culture Mix 3 2024 (Full set of 5 Cars)	/products/hot-wheels-pop-culture-mix-3-2024-full-set-of-5-cars	Hot Wheels	Rs. 2,745.00	Rs. 2,745.00
145	LEGO CREATOR EXPERT NASA Apollo 11 Lunar Lander #10266	/products/lego-creator-expert-nasa-apollo-11-lunar-lander-10266	Lego	Rs. 11,999.00	Rs. 11,999.00
146	LEGO STAR WARS The Child #75318	/products/lego-star-wars-the-child-75318	Lego	Rs. 9,999.00	Rs. 9,999.00
147	LEGO SPEED CHAMPIONS Mopar Dodge//SRT Top Fuel Dragster and 1970 Dodge Challenger T/A #76904	/products/lego-speed-champions-mopar-dodge-srt-top-fuel-dragster-and-1970-dodge-challenger-t-a-76904	Lego	Rs. 7,699.00	Rs. 7,699.00
148	Ambassador MK II, 1:18, Beige by IXO Vahanam	/products/ambassador-mk-ii-1-18-beige-by-ixo-vahanam	IXO	Rs. 6,499.00	Rs. 6,499.00
149	Ambassador MK I, 1:18, Black by IXO Vahanam	/products/ambassador-mk-i-1-18-black-by-ixo-vahanam	IXO	Rs. 6,499.00	Rs. 6,499.00
150	LEGO TECHNIC Bugatti Bolide #42151	/products/lego-technic-bugatti-bolide-42151	Lego	Rs. 6,499.00	Rs. 6,499.00
151	LEGO CREATOR 3in1 Majestic Tiger #31129	/products/lego-creator-3in1-majestic-tiger-31129	Lego	Rs. 6,499.00	Rs. 6,499.00
152	LEGO CITY Custom Car Garage #60389	/products/lego-city-custom-car-garage-60389	Lego	Rs. 5,999.00	Rs. 5,999.00
153	LEGO MARVEL Iron Man Figure #76206	/products/lego-marvel-iron-man-figure-76206	Lego	Rs. 5,499.00	Rs. 5,499.00
154	Bburago Volkswagen Kafer-Beetle (1955), Cream, 1:18 Scale	/products/bburago-volkswagen-kafer-beetle-1955-cream-1-18-scale	Bburago	Rs. 4,995.00	Rs. 4,995.00
155	Bburago Jaguar E-Type Cabriolet, British Racing Green, 1:18 Scale	/products/bburago-jaguar-e-type-cabriolet-british-racing-green-1-18-scale	Bburago	Rs. 4,995.00	Rs. 4,995.00
156	Maisto Audi R8 GT, Matte Black, 1:18 Scale	/products/maisto-audi-r8-gt-matte-black-1-18-scale	Maisto	Rs. 4,995.00	Rs. 4,995.00
157	Bburago Ferrari F1-75, 2022 Charles Leclerc, Red, 1:24 Scale	/products/bburago-ferrari-f1-75-2022-charles-leclerc-red-1-24-scale	Bburago	Rs. 4,500.00	Rs. 4,500.00
158	Schuco Porsche 356 A Coupé, grey, 1:43	/products/schuco-porsche-356-a-coupe-grey-1-43	Schuco	Rs. 4,499.00	Rs. 4,499.00
159	LEGO CITY Recycling Truck #60386	/products/lego-city-recycling-truck-60386	Lego	Rs. 4,499.00	Rs. 4,499.00
160	Schuco Porsche 911 S, Sepia Brown 1:43	/products/schuco-porsche-911-s-sepia-brown-1-43	Schuco	Rs. 3,999.00	Rs. 3,999.00
161	Marvel Avengers Lykan Hypersport 1:24 & 2.75" Black Panther Figure	/products/marvel-avengers-lykan-hypersport-1-24-2-75-black-panther-figure	Jada Toys	Rs. 3,999.00	Rs. 3,999.00
162	It Chapter Two Pennywise & Henry Bower's Pontiac Firebird 1:24 & 2.75" Figures	/products/it-chapter-two-pennywise-henry-bowers-pontiac-firebird-1-24-2-75-figures	Jada Toys	Rs. 3,999.00	Rs. 3,999.00
163	LEGO CITY 4x4 Off-Roader Adventures #60387	/products/lego-city-4x4-off-roader-adventures-60387	Lego	Rs. 3,499.00	Rs. 3,499.00
164	LEGO CITY Horse Transporter #60327	/products/lego-city-horse-transporter-60327	Lego	Rs. 3,499.00	Rs. 3,499.00
165	LEGO CITY Ice Cream Truck Police Chase #60314	/products/lego-city-ice-cream-truck-police-chase-60314	Lego	Rs. 3,499.00	Rs. 3,499.00
166	Bburago Red Bull Racing RB19 (No. 11 with Sergio Perez Driver Figurine), Blue, 1:24 Scale Model	/products/bburago-red-bull-racing-rb19-no-11-with-sergio-perez-driver-figurine-blue-1-24-scale-model	Bburago	Rs. 3,495.00	Rs. 3,495.00
167	Bburago Ferrari SF-23 (No. 16 with Charles Leclerc Pilot Figurine), Red, 1:24 Scale Model	/products/bburago-ferrari-sf-23-no-16-with-charles-leclerc-pilot-figurine-red-1-24-scale-model	Bburago	Rs. 3,495.00	Rs. 3,495.00
168	Hot Wheels Pop Culture Mix 3 2024 (Full set of 5 Cars)	/products/hot-wheels-pop-culture-mix-3-2024-full-set-of-5-cars	Hot Wheels	Rs. 2,745.00	Rs. 2,745.00
169	LEGO CREATOR EXPERT NASA Apollo 11 Lunar Lander #10266	/products/lego-creator-expert-nasa-apollo-11-lunar-lander-10266	Lego	Rs. 11,999.00	Rs. 11,999.00
170	LEGO STAR WARS The Child #75318	/products/lego-star-wars-the-child-75318	Lego	Rs. 9,999.00	Rs. 9,999.00
171	LEGO SPEED CHAMPIONS Mopar Dodge//SRT Top Fuel Dragster and 1970 Dodge Challenger T/A #76904	/products/lego-speed-champions-mopar-dodge-srt-top-fuel-dragster-and-1970-dodge-challenger-t-a-76904	Lego	Rs. 7,699.00	Rs. 7,699.00
172	Ambassador MK II, 1:18, Beige by IXO Vahanam	/products/ambassador-mk-ii-1-18-beige-by-ixo-vahanam	IXO	Rs. 6,499.00	Rs. 6,499.00
173	Ambassador MK I, 1:18, Black by IXO Vahanam	/products/ambassador-mk-i-1-18-black-by-ixo-vahanam	IXO	Rs. 6,499.00	Rs. 6,499.00
174	LEGO TECHNIC Bugatti Bolide #42151	/products/lego-technic-bugatti-bolide-42151	Lego	Rs. 6,499.00	Rs. 6,499.00
175	LEGO CREATOR 3in1 Majestic Tiger #31129	/products/lego-creator-3in1-majestic-tiger-31129	Lego	Rs. 6,499.00	Rs. 6,499.00
176	LEGO CITY Custom Car Garage #60389	/products/lego-city-custom-car-garage-60389	Lego	Rs. 5,999.00	Rs. 5,999.00
177	LEGO MARVEL Iron Man Figure #76206	/products/lego-marvel-iron-man-figure-76206	Lego	Rs. 5,499.00	Rs. 5,499.00
178	Bburago Volkswagen Kafer-Beetle (1955), Cream, 1:18 Scale	/products/bburago-volkswagen-kafer-beetle-1955-cream-1-18-scale	Bburago	Rs. 4,995.00	Rs. 4,995.00
179	Bburago Jaguar E-Type Cabriolet, British Racing Green, 1:18 Scale	/products/bburago-jaguar-e-type-cabriolet-british-racing-green-1-18-scale	Bburago	Rs. 4,995.00	Rs. 4,995.00
180	Maisto Audi R8 GT, Matte Black, 1:18 Scale	/products/maisto-audi-r8-gt-matte-black-1-18-scale	Maisto	Rs. 4,995.00	Rs. 4,995.00
181	Bburago Ferrari F1-75, 2022 Charles Leclerc, Red, 1:24 Scale	/products/bburago-ferrari-f1-75-2022-charles-leclerc-red-1-24-scale	Bburago	Rs. 4,500.00	Rs. 4,500.00
182	Schuco Porsche 356 A Coupé, grey, 1:43	/products/schuco-porsche-356-a-coupe-grey-1-43	Schuco	Rs. 4,499.00	Rs. 4,499.00
183	LEGO CITY Recycling Truck #60386	/products/lego-city-recycling-truck-60386	Lego	Rs. 4,499.00	Rs. 4,499.00
184	Schuco Porsche 911 S, Sepia Brown 1:43	/products/schuco-porsche-911-s-sepia-brown-1-43	Schuco	Rs. 3,999.00	Rs. 3,999.00
185	Marvel Avengers Lykan Hypersport 1:24 & 2.75" Black Panther Figure	/products/marvel-avengers-lykan-hypersport-1-24-2-75-black-panther-figure	Jada Toys	Rs. 3,999.00	Rs. 3,999.00
186	It Chapter Two Pennywise & Henry Bower's Pontiac Firebird 1:24 & 2.75" Figures	/products/it-chapter-two-pennywise-henry-bowers-pontiac-firebird-1-24-2-75-figures	Jada Toys	Rs. 3,999.00	Rs. 3,999.00
187	LEGO CITY 4x4 Off-Roader Adventures #60387	/products/lego-city-4x4-off-roader-adventures-60387	Lego	Rs. 3,499.00	Rs. 3,499.00
188	LEGO CITY Horse Transporter #60327	/products/lego-city-horse-transporter-60327	Lego	Rs. 3,499.00	Rs. 3,499.00
189	LEGO CITY Ice Cream Truck Police Chase #60314	/products/lego-city-ice-cream-truck-police-chase-60314	Lego	Rs. 3,499.00	Rs. 3,499.00
190	Bburago Red Bull Racing RB19 (No. 11 with Sergio Perez Driver Figurine), Blue, 1:24 Scale Model	/products/bburago-red-bull-racing-rb19-no-11-with-sergio-perez-driver-figurine-blue-1-24-scale-model	Bburago	Rs. 3,495.00	Rs. 3,495.00
191	Bburago Ferrari SF-23 (No. 16 with Charles Leclerc Pilot Figurine), Red, 1:24 Scale Model	/products/bburago-ferrari-sf-23-no-16-with-charles-leclerc-pilot-figurine-red-1-24-scale-model	Bburago	Rs. 3,495.00	Rs. 3,495.00
192	Hot Wheels Pop Culture Mix 3 2024 (Full set of 5 Cars)	/products/hot-wheels-pop-culture-mix-3-2024-full-set-of-5-cars	Hot Wheels	Rs. 2,745.00	Rs. 2,745.00
\.


--
-- Data for Name: full_car_details; Type: TABLE DATA; Schema: public; Owner: postgres1
--

COPY public.full_car_details (id, title, link, vendor, regular_price, sale_price, pickup_available_at, pickup_availability, description) FROM stdin;
1	HOT WHEELS DONUT DRIFTER (BLUE)	/products/hot-wheels-donut-drifter-blue	Hot Wheels	Rs. 179.00	Rs. 179.00	\N	\N	DONUT DRIFTER\nCOLOUR: BLUE\nHOT WHEELS\nHTD70
2	Bburago Red Bull Racing RB19 (No. 11 with Sergio Perez Driver Figurine), Blue, 1:24 Scale Model	/products/bburago-red-bull-racing-rb19-no-11-with-sergio-perez-driver-figurine-blue-1-24-scale-model	Bburago	Rs. 3,495.00	Rs. 3,495.00	\N	\N	Red Bull Racing RB19\n(No. 11 with Sergio Perez Driver Figurine)\nBlue\n1:24 Scale Model\nBburago
\.


--
-- Data for Name: product_recommendations; Type: TABLE DATA; Schema: public; Owner: postgres1
--

COPY public.product_recommendations (id, title, link, regular_price, sale_price) FROM stdin;
1	Maisto BMW S 1000 RR (White), 1:12	/products/maisto-bmw-s-1000-rr-white-1-12?pr_prod_strat=e5_desc&pr_rec_id=152e0432f&pr_rec_pid=7711182389433&pr_ref_pid=7971719905465&pr_seq=uniform	Rs. 1,375.00	Rs. 1,375.00
2	Maisto Honda CBR1000RR (Black), 1:12	/products/maisto-honda-cbr1000rr-black-1-12?pr_prod_strat=e5_desc&pr_rec_id=152e0432f&pr_rec_pid=7711169216697&pr_ref_pid=7971719905465&pr_seq=uniform	Rs. 1,375.00	Rs. 1,375.00
3	Maisto BMW R 1200 GS 2017, Maroon, 1:18	/products/maisto-bmw-r-1200-gs-2017-maroon-1-18?pr_prod_strat=e5_desc&pr_rec_id=152e0432f&pr_rec_pid=7711163842745&pr_ref_pid=7971719905465&pr_seq=uniform	Rs. 795.00	Rs. 795.00
4	Maisto Honda CBR1000RR (White), 1:18	/products/maisto-honda-cbr1000rr-white-1-18?pr_prod_strat=e5_desc&pr_rec_id=152e0432f&pr_rec_pid=7582923555001&pr_ref_pid=7971719905465&pr_seq=uniform	Rs. 795.00	Rs. 795.00
5	Maisto BMW M4 GTS, Matte Black, 1:24 Scale	/products/maisto-bmw-m4-gts-matte-black-1-24-scale?pr_prod_strat=e5_desc&pr_rec_id=b941284cb&pr_rec_pid=7709601169593&pr_ref_pid=7709788963001&pr_seq=uniform	Rs. 2,295.00	Rs. 2,295.00
6	Maisto Bugatti Divo, Matte Black, 1:24 Scale	/products/maisto-bugatti-divo-matte-black-1-24-scale?pr_prod_strat=e5_desc&pr_rec_id=b941284cb&pr_rec_pid=7709602447545&pr_ref_pid=7709788963001&pr_seq=uniform	Rs. 2,295.00	Rs. 2,295.00
7	Maisto 2019 Mercedes-Benz G-Class, Grey, 1:25	/products/maisto-2019-mercedes-benz-g-class-grey-1-25?pr_prod_strat=e5_desc&pr_rec_id=b941284cb&pr_rec_pid=7926833971385&pr_ref_pid=7709788963001&pr_seq=uniform	Rs. 2,295.00	Rs. 2,295.00
8	Maisto 2023 Nissan Z, Black, 1:24	/products/maisto-2023-nissan-z-black-1-24?pr_prod_strat=e5_desc&pr_rec_id=b941284cb&pr_rec_pid=7929295831225&pr_ref_pid=7709788963001&pr_seq=uniform	Rs. 2,295.00	Rs. 2,295.00
\.


--
-- Data for Name: toy_cars; Type: TABLE DATA; Schema: public; Owner: postgres1
--

COPY public.toy_cars (id, name, price, url, description, suggested_cars) FROM stdin;
1	Test Car	1000	http://example.com	Test Description	Test Car 1, Test Car 2
2	LEGO CREATOR EXPERT NASA Apollo 11 Lunar Lander #10266	Rs. 11,999.00	https://www.tinytown.in/products/lego-creator-expert-nasa-apollo-11-lunar-lander-10266	No description available	
3	LEGO CREATOR EXPERT NASA Apollo 11 Lunar Lander #10266	Rs. 11,999.00	https://www.tinytown.in/products/lego-creator-expert-nasa-apollo-11-lunar-lander-10266	No description available	
4	LEGO STAR WARS The Child #75318	Rs. 9,999.00	https://www.tinytown.in/products/lego-star-wars-the-child-75318	No description available	
5	LEGO STAR WARS The Child #75318	Rs. 9,999.00	https://www.tinytown.in/products/lego-star-wars-the-child-75318	No description available	
6	LEGO SPEED CHAMPIONS Mopar Dodge//SRT Top Fuel Dragster and 1970 Dodge Challenger T/A #76904	Rs. 7,699.00	https://www.tinytown.in/products/lego-speed-champions-mopar-dodge-srt-top-fuel-dragster-and-1970-dodge-challenger-t-a-76904	No description available	
7	LEGO SPEED CHAMPIONS Mopar Dodge//SRT Top Fuel Dragster and 1970 Dodge Challenger T/A #76904	Rs. 7,699.00	https://www.tinytown.in/products/lego-speed-champions-mopar-dodge-srt-top-fuel-dragster-and-1970-dodge-challenger-t-a-76904	No description available	
8	Ambassador MK II, 1:18, Beige by IXO Vahanam	Rs. 6,499.00	https://www.tinytown.in/products/ambassador-mk-ii-1-18-beige-by-ixo-vahanam	No description available	
9	Ambassador MK II, 1:18, Beige by IXO Vahanam	Rs. 6,499.00	https://www.tinytown.in/products/ambassador-mk-ii-1-18-beige-by-ixo-vahanam	No description available	
10	Ambassador MK I, 1:18, Black by IXO Vahanam	Rs. 6,499.00	https://www.tinytown.in/products/ambassador-mk-i-1-18-black-by-ixo-vahanam	No description available	
11	Ambassador MK I, 1:18, Black by IXO Vahanam	Rs. 6,499.00	https://www.tinytown.in/products/ambassador-mk-i-1-18-black-by-ixo-vahanam	No description available	
12	LEGO TECHNIC Bugatti Bolide #42151	Rs. 6,499.00	https://www.tinytown.in/products/lego-technic-bugatti-bolide-42151	No description available	
13	LEGO TECHNIC Bugatti Bolide #42151	Rs. 6,499.00	https://www.tinytown.in/products/lego-technic-bugatti-bolide-42151	No description available	
14	LEGO CREATOR 3in1 Majestic Tiger #31129	Rs. 6,499.00	https://www.tinytown.in/products/lego-creator-3in1-majestic-tiger-31129	No description available	
15	LEGO CREATOR 3in1 Majestic Tiger #31129	Rs. 6,499.00	https://www.tinytown.in/products/lego-creator-3in1-majestic-tiger-31129	No description available	
16	LEGO CITY Custom Car Garage #60389	Rs. 5,999.00	https://www.tinytown.in/products/lego-city-custom-car-garage-60389	No description available	
17	LEGO CITY Custom Car Garage #60389	Rs. 5,999.00	https://www.tinytown.in/products/lego-city-custom-car-garage-60389	No description available	
18	LEGO MARVEL Iron Man Figure #76206	Rs. 5,499.00	https://www.tinytown.in/products/lego-marvel-iron-man-figure-76206	No description available	
19	LEGO MARVEL Iron Man Figure #76206	Rs. 5,499.00	https://www.tinytown.in/products/lego-marvel-iron-man-figure-76206	No description available	
20	Bburago Volkswagen Kafer-Beetle (1955), Cream, 1:18 Scale	Rs. 4,995.00	https://www.tinytown.in/products/bburago-volkswagen-kafer-beetle-1955-cream-1-18-scale	No description available	
21	Bburago Volkswagen Kafer-Beetle (1955), Cream, 1:18 Scale	Rs. 4,995.00	https://www.tinytown.in/products/bburago-volkswagen-kafer-beetle-1955-cream-1-18-scale	No description available	
22	Bburago Jaguar E-Type Cabriolet, British Racing Green, 1:18 Scale	Rs. 4,995.00	https://www.tinytown.in/products/bburago-jaguar-e-type-cabriolet-british-racing-green-1-18-scale	No description available	
23	Bburago Jaguar E-Type Cabriolet, British Racing Green, 1:18 Scale	Rs. 4,995.00	https://www.tinytown.in/products/bburago-jaguar-e-type-cabriolet-british-racing-green-1-18-scale	No description available	
24	Maisto Audi R8 GT, Matte Black, 1:18 Scale	Rs. 4,995.00	https://www.tinytown.in/products/maisto-audi-r8-gt-matte-black-1-18-scale	No description available	
25	Maisto Audi R8 GT, Matte Black, 1:18 Scale	Rs. 4,995.00	https://www.tinytown.in/products/maisto-audi-r8-gt-matte-black-1-18-scale	No description available	
26	Bburago Ferrari F1-75, 2022 Charles Leclerc, Red, 1:24 Scale	Rs. 4,500.00	https://www.tinytown.in/products/bburago-ferrari-f1-75-2022-charles-leclerc-red-1-24-scale	No description available	
27	Bburago Ferrari F1-75, 2022 Charles Leclerc, Red, 1:24 Scale	Rs. 4,500.00	https://www.tinytown.in/products/bburago-ferrari-f1-75-2022-charles-leclerc-red-1-24-scale	No description available	
28	Schuco Porsche 356 A Coupé, grey, 1:43	Rs. 4,499.00	https://www.tinytown.in/products/schuco-porsche-356-a-coupe-grey-1-43	No description available	
29	Schuco Porsche 356 A Coupé, grey, 1:43	Rs. 4,499.00	https://www.tinytown.in/products/schuco-porsche-356-a-coupe-grey-1-43	No description available	
30	LEGO CITY Recycling Truck #60386	Rs. 4,499.00	https://www.tinytown.in/products/lego-city-recycling-truck-60386	No description available	
31	LEGO CITY Recycling Truck #60386	Rs. 4,499.00	https://www.tinytown.in/products/lego-city-recycling-truck-60386	No description available	
32	Schuco Porsche 911 S, Sepia Brown 1:43	Rs. 3,999.00	https://www.tinytown.in/products/schuco-porsche-911-s-sepia-brown-1-43	No description available	
33	Schuco Porsche 911 S, Sepia Brown 1:43	Rs. 3,999.00	https://www.tinytown.in/products/schuco-porsche-911-s-sepia-brown-1-43	No description available	
34	Marvel Avengers Lykan Hypersport 1:24 & 2.75" Black Panther Figure	Rs. 3,999.00	https://www.tinytown.in/products/marvel-avengers-lykan-hypersport-1-24-2-75-black-panther-figure	No description available	
35	Marvel Avengers Lykan Hypersport 1:24 & 2.75" Black Panther Figure	Rs. 3,999.00	https://www.tinytown.in/products/marvel-avengers-lykan-hypersport-1-24-2-75-black-panther-figure	No description available	
36	It Chapter Two Pennywise & Henry Bower's Pontiac Firebird 1:24 & 2.75" Figures	Rs. 3,999.00	https://www.tinytown.in/products/it-chapter-two-pennywise-henry-bowers-pontiac-firebird-1-24-2-75-figures	No description available	
37	It Chapter Two Pennywise & Henry Bower's Pontiac Firebird 1:24 & 2.75" Figures	Rs. 3,999.00	https://www.tinytown.in/products/it-chapter-two-pennywise-henry-bowers-pontiac-firebird-1-24-2-75-figures	No description available	
38	LEGO CITY 4x4 Off-Roader Adventures #60387	Rs. 3,499.00	https://www.tinytown.in/products/lego-city-4x4-off-roader-adventures-60387	No description available	
39	LEGO CITY 4x4 Off-Roader Adventures #60387	Rs. 3,499.00	https://www.tinytown.in/products/lego-city-4x4-off-roader-adventures-60387	No description available	
40	LEGO CITY Horse Transporter #60327	Rs. 3,499.00	https://www.tinytown.in/products/lego-city-horse-transporter-60327	No description available	
41	LEGO CITY Horse Transporter #60327	Rs. 3,499.00	https://www.tinytown.in/products/lego-city-horse-transporter-60327	No description available	
42	LEGO CITY Ice Cream Truck Police Chase #60314	Rs. 3,499.00	https://www.tinytown.in/products/lego-city-ice-cream-truck-police-chase-60314	No description available	
43	LEGO CITY Ice Cream Truck Police Chase #60314	Rs. 3,499.00	https://www.tinytown.in/products/lego-city-ice-cream-truck-police-chase-60314	No description available	
44	Bburago Red Bull Racing RB19 (No. 11 with Sergio Perez Driver Figurine), Blue, 1:24 Scale Model	Rs. 3,495.00	https://www.tinytown.in/products/bburago-red-bull-racing-rb19-no-11-with-sergio-perez-driver-figurine-blue-1-24-scale-model	No description available	
45	Bburago Red Bull Racing RB19 (No. 11 with Sergio Perez Driver Figurine), Blue, 1:24 Scale Model	Rs. 3,495.00	https://www.tinytown.in/products/bburago-red-bull-racing-rb19-no-11-with-sergio-perez-driver-figurine-blue-1-24-scale-model	No description available	
46	Bburago Ferrari SF-23 (No. 16 with Charles Leclerc Pilot Figurine), Red, 1:24 Scale Model	Rs. 3,495.00	https://www.tinytown.in/products/bburago-ferrari-sf-23-no-16-with-charles-leclerc-pilot-figurine-red-1-24-scale-model	No description available	
47	Bburago Ferrari SF-23 (No. 16 with Charles Leclerc Pilot Figurine), Red, 1:24 Scale Model	Rs. 3,495.00	https://www.tinytown.in/products/bburago-ferrari-sf-23-no-16-with-charles-leclerc-pilot-figurine-red-1-24-scale-model	No description available	
48	Hot Wheels Pop Culture Mix 3 2024 (Full set of 5 Cars)	Rs. 2,745.00	https://www.tinytown.in/products/hot-wheels-pop-culture-mix-3-2024-full-set-of-5-cars	No description available	
49	Hot Wheels Pop Culture Mix 3 2024 (Full set of 5 Cars)	Rs. 2,745.00	https://www.tinytown.in/products/hot-wheels-pop-culture-mix-3-2024-full-set-of-5-cars	No description available	
\.


--
-- Name: cars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public.cars_id_seq', 192, true);


--
-- Name: full_car_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public.full_car_details_id_seq', 2, true);


--
-- Name: product_recommendations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public.product_recommendations_id_seq', 8, true);


--
-- Name: toy_cars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public.toy_cars_id_seq', 49, true);


--
-- Name: cars cars_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_pkey PRIMARY KEY (id);


--
-- Name: full_car_details full_car_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.full_car_details
    ADD CONSTRAINT full_car_details_pkey PRIMARY KEY (id);


--
-- Name: product_recommendations product_recommendations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.product_recommendations
    ADD CONSTRAINT product_recommendations_pkey PRIMARY KEY (id);


--
-- Name: toy_cars toy_cars_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.toy_cars
    ADD CONSTRAINT toy_cars_pkey PRIMARY KEY (id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO postgres1;


--
-- PostgreSQL database dump complete
--

