--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: accommodations; Type: TABLE; Schema: public; Owner: elmirill; Tablespace: 
--

CREATE TABLE accommodations (
    id integer NOT NULL,
    title character varying,
    subtitle character varying,
    content text,
    price_1 character varying,
    price_2 character varying,
    price_3 character varying,
    "position" integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    thumbnail_file_name character varying,
    thumbnail_content_type character varying,
    thumbnail_file_size integer,
    thumbnail_updated_at timestamp without time zone
);


ALTER TABLE public.accommodations OWNER TO elmirill;

--
-- Name: accommodations_id_seq; Type: SEQUENCE; Schema: public; Owner: elmirill
--

CREATE SEQUENCE accommodations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accommodations_id_seq OWNER TO elmirill;

--
-- Name: accommodations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmirill
--

ALTER SEQUENCE accommodations_id_seq OWNED BY accommodations.id;


--
-- Name: galleries; Type: TABLE; Schema: public; Owner: elmirill; Tablespace: 
--

CREATE TABLE galleries (
    id integer NOT NULL,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.galleries OWNER TO elmirill;

--
-- Name: galleries_id_seq; Type: SEQUENCE; Schema: public; Owner: elmirill
--

CREATE SEQUENCE galleries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galleries_id_seq OWNER TO elmirill;

--
-- Name: galleries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmirill
--

ALTER SEQUENCE galleries_id_seq OWNED BY galleries.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: elmirill; Tablespace: 
--

CREATE TABLE pages (
    id integer NOT NULL,
    name character varying,
    permalink character varying,
    content text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    slider boolean,
    image_file_name character varying,
    image_content_type character varying,
    image_file_size integer,
    image_updated_at timestamp without time zone
);


ALTER TABLE public.pages OWNER TO elmirill;

--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: elmirill
--

CREATE SEQUENCE pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_id_seq OWNER TO elmirill;

--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmirill
--

ALTER SEQUENCE pages_id_seq OWNED BY pages.id;


--
-- Name: pictures; Type: TABLE; Schema: public; Owner: elmirill; Tablespace: 
--

CREATE TABLE pictures (
    id integer NOT NULL,
    caption character varying,
    alt character varying,
    "position" integer,
    gallery_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    image_file_name character varying,
    image_content_type character varying,
    image_file_size integer,
    image_updated_at timestamp without time zone
);


ALTER TABLE public.pictures OWNER TO elmirill;

--
-- Name: pictures_id_seq; Type: SEQUENCE; Schema: public; Owner: elmirill
--

CREATE SEQUENCE pictures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pictures_id_seq OWNER TO elmirill;

--
-- Name: pictures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmirill
--

ALTER SEQUENCE pictures_id_seq OWNED BY pictures.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: elmirill; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO elmirill;

--
-- Name: subscriptions; Type: TABLE; Schema: public; Owner: elmirill; Tablespace: 
--

CREATE TABLE subscriptions (
    id integer NOT NULL,
    name character varying,
    email character varying,
    phone character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.subscriptions OWNER TO elmirill;

--
-- Name: subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: elmirill
--

CREATE SEQUENCE subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscriptions_id_seq OWNER TO elmirill;

--
-- Name: subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmirill
--

ALTER SEQUENCE subscriptions_id_seq OWNED BY subscriptions.id;


--
-- Name: surf_courses; Type: TABLE; Schema: public; Owner: elmirill; Tablespace: 
--

CREATE TABLE surf_courses (
    id integer NOT NULL,
    title character varying,
    content text,
    price_1 character varying,
    price_2 character varying,
    price_3 character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    thumbnail_file_name character varying,
    thumbnail_content_type character varying,
    thumbnail_file_size integer,
    thumbnail_updated_at timestamp without time zone,
    subtitle character varying,
    "position" integer
);


ALTER TABLE public.surf_courses OWNER TO elmirill;

--
-- Name: surf_courses_id_seq; Type: SEQUENCE; Schema: public; Owner: elmirill
--

CREATE SEQUENCE surf_courses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.surf_courses_id_seq OWNER TO elmirill;

--
-- Name: surf_courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmirill
--

ALTER SEQUENCE surf_courses_id_seq OWNED BY surf_courses.id;


--
-- Name: surfaris; Type: TABLE; Schema: public; Owner: elmirill; Tablespace: 
--

CREATE TABLE surfaris (
    id integer NOT NULL,
    title character varying,
    subtitle character varying,
    content text,
    price_1 character varying,
    price_2 character varying,
    price_3 character varying,
    "position" integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    thumbnail_file_name character varying,
    thumbnail_content_type character varying,
    thumbnail_file_size integer,
    thumbnail_updated_at timestamp without time zone
);


ALTER TABLE public.surfaris OWNER TO elmirill;

--
-- Name: surfaris_id_seq; Type: SEQUENCE; Schema: public; Owner: elmirill
--

CREATE SEQUENCE surfaris_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.surfaris_id_seq OWNER TO elmirill;

--
-- Name: surfaris_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmirill
--

ALTER SEQUENCE surfaris_id_seq OWNED BY surfaris.id;


--
-- Name: testimonials; Type: TABLE; Schema: public; Owner: elmirill; Tablespace: 
--

CREATE TABLE testimonials (
    id integer NOT NULL,
    name character varying,
    email character varying,
    content text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.testimonials OWNER TO elmirill;

--
-- Name: testimonials_id_seq; Type: SEQUENCE; Schema: public; Owner: elmirill
--

CREATE SEQUENCE testimonials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.testimonials_id_seq OWNER TO elmirill;

--
-- Name: testimonials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmirill
--

ALTER SEQUENCE testimonials_id_seq OWNED BY testimonials.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: elmirill; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    email character varying NOT NULL,
    encrypted_password character varying(128) NOT NULL,
    confirmation_token character varying(128),
    remember_token character varying(128) NOT NULL
);


ALTER TABLE public.users OWNER TO elmirill;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: elmirill
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO elmirill;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmirill
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmirill
--

ALTER TABLE ONLY accommodations ALTER COLUMN id SET DEFAULT nextval('accommodations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmirill
--

ALTER TABLE ONLY galleries ALTER COLUMN id SET DEFAULT nextval('galleries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmirill
--

ALTER TABLE ONLY pages ALTER COLUMN id SET DEFAULT nextval('pages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmirill
--

ALTER TABLE ONLY pictures ALTER COLUMN id SET DEFAULT nextval('pictures_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmirill
--

ALTER TABLE ONLY subscriptions ALTER COLUMN id SET DEFAULT nextval('subscriptions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmirill
--

ALTER TABLE ONLY surf_courses ALTER COLUMN id SET DEFAULT nextval('surf_courses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmirill
--

ALTER TABLE ONLY surfaris ALTER COLUMN id SET DEFAULT nextval('surfaris_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmirill
--

ALTER TABLE ONLY testimonials ALTER COLUMN id SET DEFAULT nextval('testimonials_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmirill
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: accommodations; Type: TABLE DATA; Schema: public; Owner: elmirill
--

COPY accommodations (id, title, subtitle, content, price_1, price_2, price_3, "position", created_at, updated_at, thumbnail_file_name, thumbnail_content_type, thumbnail_file_size, thumbnail_updated_at) FROM stdin;
3	Rock Star Nomad	3 days/4 nights	<p>@ Hard Rock Hotel, Kuta beach, Bali</p><p>Nestled against the shores of Bali's famed Kuta beach on an impressive three-hectare prime site right in the heart of Bali's entertainment and shopping district, Hard Rock Hotel Bali is Asia's first Hard Rock Hotel.</p>	High Season — from $1250	Low Season — from $900		3	2016-01-31 22:03:36.478363	2016-01-31 22:58:44.970478	rock_1.jpg	image/jpeg	85644	2016-01-31 22:58:44.907676
4	Rock Star Surfer	5 days/6 nights	<p><span>@ Hard Rock Hotel, Kuta beach, Bali</span></p><p>For your accommodation in Bali, this Bali resort features 418 tribute rooms and suites fit for a rock star. The walls are adorned with images, memorabilia and icons reflecting the revolution that changed the face of music, fashion and arts, celebrating artistes from the 50's to late 90's.</p>	High Season — from $1750	Low Season — from $1250		4	2016-01-31 22:03:40.013298	2016-01-31 22:58:57.474601	rock_2.jpg	image/jpeg	89225	2016-01-31 22:58:57.410804
6	Surf'N'Stay Nomad	3 days/4 nights	<p>@ The Kubu Hotel</p><ul><li>Surf and Stay operates year round, we surf every day.</li><li>Offshore wind creates perfect surfing conditions.</li><li>Consistent swells provide reliable top quality surfing waves.</li><li>Surf school for beginner/learning surfers.</li><li>Surf guide for intermediate and advanced surfers.</li></ul>	Single — $350	Twin — $500		1	2016-02-02 22:46:19.470378	2016-02-02 22:46:19.470378	kubu_1.jpg	image/jpeg	101739	2016-02-02 22:46:19.092947
2	Surf'N'Stay Surfer	6 days/7 nights	<p><span>@ The Kubu Hotel</span></p><ul><li>Surf and Stay operates year round, we surf every day.</li><li>Offshore wind creates perfect surfing conditions.</li><li>Consistent swells provide reliable top quality surfing waves.</li><li>Surf school for beginner/learning surfers.</li><li>Surf guide for intermediate and advanced surfers.</li></ul>	Single — $600	Twin — $900		2	2016-01-31 21:35:29.754791	2016-01-31 22:58:29.871827	kubu_2.jpg	image/jpeg	145600	2016-01-31 22:58:29.808456
\.


--
-- Name: accommodations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmirill
--

SELECT pg_catalog.setval('accommodations_id_seq', 6, true);


--
-- Data for Name: galleries; Type: TABLE DATA; Schema: public; Owner: elmirill
--

COPY galleries (id, description, created_at, updated_at) FROM stdin;
2		2016-02-01 21:32:10.444424	2016-02-01 22:27:59.913501
\.


--
-- Name: galleries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmirill
--

SELECT pg_catalog.setval('galleries_id_seq', 2, true);


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: elmirill
--

COPY pages (id, name, permalink, content, created_at, updated_at, slider, image_file_name, image_content_type, image_file_size, image_updated_at) FROM stdin;
2	Board rentals	rentals	We rent a number of sizes of surf boards to suite you from short boards, mini mals, long boards and body boards. \r\nWe also offer mobile board rental.\r\nWe will deliver a surf board of your choice, \r\nUV protection Surf shirt and an information sheet of the best places to surf in Bali to your door.	2016-01-22 15:44:53.3947	2016-01-22 15:44:53.3947	\N	\N	\N	\N	\N
3	Board rentals	board_rentals	<table style="width: 100%;"><tbody><tr><td style="width: 20%;"><br></td><td style="width: 20%;"><strong>1 hour</strong><br></td><td style="width: 20%;"><strong>1 day</strong><br></td><td style="width: 20%;"><strong>1 week</strong><br></td><td style="width: 20%;"><strong>2 week</strong><br></td></tr><tr><td style="width: 20%;"><strong>Soft Board</strong><br></td><td style="width: 20%;">50,000 IDR<br></td><td style="width: 20%;">100,000 IDR<br></td><td style="width: 20%;">600,000 IDR<br></td><td style="width: 20%;">1,000,000 IDR<br></td></tr><tr><td style="width: 20%;"><strong>Mini Malibu</strong><br></td><td style="width: 20%;">50,000 IDR<br></td><td style="width: 20%;">100,000 IDR<br></td><td style="width: 20%;">600,000 IDR<br></td><td style="width: 20%;">1,000,000 IDR<br></td></tr><tr><td style="width: 20%;"><strong>Malibu</strong><br></td><td style="width: 20%;">50,000 IDR<br></td><td style="width: 20%;">100,000 IDR<br></td><td style="width: 20%;">600,000 IDR<br></td><td style="width: 20%;">1,000,000 IDR<br></td></tr><tr><td style="width: 20%;"><strong>Hard Board</strong><br></td><td style="width: 20%;">50,000 IDR<br></td><td style="width: 20%;">100,000 IDR<br></td><td style="width: 20%;">600,000 IDR<br></td><td style="width: 20%;">1,000,000 IDR<br></td></tr><tr><td style="width: 20%;"><strong>Body Board</strong><br></td><td style="width: 20%;">50,000 IDR<br></td><td style="width: 20%;">100,000 IDR<br></td><td style="width: 20%;">600,000 IDR<br></td><td style="width: 20%;">1,000,000 IDR<br></td></tr></tbody></table><p><br></p><p>We rent a number of sizes of surf boards to suite you from short boards, mini mals, long boards and body boards.</p><p>We also offer mobile board rental.</p><p>We will deliver a surf board of your choice, UV protection, surf shirt and an information sheet of the best places to surf in Bali to your door.</p><p><br></p><p><a href="http://www.xe.com/ucc/" target="_blank">Currency converter is here</a></p>	2016-01-24 13:45:05.137888	2016-02-03 05:02:10.627273	f	board_rentals.jpg	image/jpeg	126201	2016-02-03 05:02:10.289131
4	Our friend networks	links	<ul><span><ul><li><span><a href="http://www.atlantis-bali-diving.com/" target="_blanks">Bali diving - Scuba Bali diving<span>&nbsp;</span></a></span><br>Atlantis PADI 5 star dive center, join us scuba diving bali</li><li><span><a href="http://www.balieats.com/" target="_blanks">Bali Eats</a></span></li><li><span><a href="http://www.bali-hotels-resorts.com/" target="_blanks">Bali Hotels &amp; Resorts</a></span></li><li><span><a href="http://www.bali-paradise.com/" target="_blanks">Bali Paradise Online</a></span></li><li><span><a href="http://www.balidiveaction.com/" target="_blanks">Bali Plongee Safari Indonesia</a></span><br>Bali plongee - diving Indonesia safari and tours</li><li><span><a href="http://www.balisurfingparadise.com/" target="_blanks">Bali Surfing Paradise</a></span></li><li><span><a href="http://www.baliiloveyou.com/" target="_blanks">Bali villa &amp; House for rent Bali</a></span></li><li><span><a href="http://www.bodyboarder.com/" target="_blanks">Bodyboarding</a></span><br>Online bodyboarding community with over 10,000 members worldwide</li><li><a href="http://www.backpackers-planet.com/" title="www.Backpackers-Planet.com">www.Backpackers-Planet.com</a></li><li><span><a href="http://www.indo-holidays.com/" target="_blanks">Cheap Bali Hotel Accommodation</a></span></li><li><span><a href="http://www.indonesia-bali.com/" target="_blanks">Cheap Bali Villa in Canggu Seminyak Bali</a></span></li><li><span><a href="http://www.exotic-hideaways.com/" target="_blanks">Exotic-Hideaways</a></span></li><li><span><a href="http://www.bestbaliweddingpackage.com/" target="_blanks">Getting married in Bali Beach wedding Planner</a></span><br>We are a professional wedding organizer creatively bring up the best wedding package at any level of budget<span>&nbsp;</span><br>Midas Homes - a specialist regional house builder developing homes in Devon and all the best locations in the South West</li><li><span><a href="http://www.hardrockhotels.net/" target="_blanks">Hard Rock Hotel Bali</a></span></li><li><span><a href="http://www.surfschool.com/" target="_blanks">International Surf School</a></span></li><li><span><a href="http://www.learntosurf.com.au/" target="_blanks">Learn to Surf in Noosa Queensland</a></span></li><li><span><a href="http://www.villatheloft.com/" target="_blanks">Location villa &amp; Maison Bali &amp; Sejour Bali</a></span></li><li><span><a href="http://www.learntosurf.com.au/" target="_blanks">Luxury Private Bali Villas rental</a></span></li><li><span><a href="http://www.nauticfriend.com/" target="_blanks">Nauticfriend.com</a></span><br>The Ultimate Water Sports Portal, The Best Links Sorted Out To Fit The Best.</li><li><span><a href="http://www.phuket-saltwater-dreaming.netfirms.com/" target="_blanks">Saltwater Dreaming</a></span><br>For the latest surfing info from Thailand and around the world, maps, weather reports, Thailand surf and surf culture, travel info and tips, budget hotels and restaurants, online hotel and resort reservations, surf clothing, travel books and videos, and heaps more visit the<span>&nbsp;</span><span><a href="http://www.phuket-saltwater-dreaming.netfirms.com/" target="_blanks">Saltwater Dreaming</a></span><span>&nbsp;</span>webpage.</li><li><span><a href="http://www.serenevillas.com/" target="_blanks">Serene Bali Villas</a></span><br>Bali villas and luxury holiday accommodation in Seminyak.</li><li><a href="http://www.tuition.com.hk/world/" target="_blanks">Summer Camps for Hong Kong Students</a><br>Language and activity based summer Camps in the UK, USA and Spain for Hong Kong students.</li><li><span><a href="http://www.t12.com/" target="_blanks">T12</a></span></li><li><span><a href="http://www.balispirit.com/" target="_blanks">Yoga Retreat &amp; Holistic Health Vacation</a></span><br>Balancing the Bali experience - Spiritual healing, Yoga retreat and vacation, health, spas, resorts, meditation, holistic therapie</li><li><span><a href="http://www.lastminute.com.au/accommodation/indonesia/bali" target="_blanks">Cheap Bali hotels</a></span></li></ul></span><li><span><a href="http://surfshop.com/" target="_blanks">Online Surf Shop</a></span></li><li><span><span><a href="http://www.samuivillasandhomes.com/" target="_blanks">Koh Samui Villas</a></span><br>Thailand’s largest luxury Koh Samui Villa rental and management company.</span></li><li><span><span><a href="http://www.rasabali.com/" target="_blanks">Bali Restaurants in Bali Bungalows Spa Nightlife Tourism Portal Information</a></span><br>Bali restaurants bungalows spa portal Bali including nightlife events in Kuta Seminyak Sanur Nusa Dua Bali areas.</span></li><li><span><span><a href="http://%20www.madridairportcarrentals.com/" target="_blanks">www.madridairportcarrentals.com</a></span><br>Get the discounted car rental services with us with wide collection of luxury cars at affordable price delas throughout the Spain.</span></li></ul>	2016-01-24 14:42:28.405543	2016-01-24 14:46:56.033926	\N	\N	\N	\N	\N
1	Learn to Surf in Bali	home	<p><br></p><p>Bali is a world surfing mecca and has developed into a bustling epicentre where surfers either start or end their world surfing 'surfaries'</p><p>Until now very few learn to surf programs have been established in Bali. The Bali Learn to Surf School has embraced this opportunity, developing a highly professional outfit teaching people the experience of surfing ensuring that surf etiquette, surf safety and minimal impact to the ocean and surrounding land environments is bestowed upon the students taking part.</p><p>Have you ever wanted to surf? Well here's your chance to do it now. Experience the thrill of surfing taught by qualified professional surf instructors on Kuta Beach Bali. The surf on this island is renowned throughout the world surfing community, for it's long rolling waves that are magic to ride.</p><h3>Bali's first surf school, est 1999</h3><p>Our surf school's two and half hour lesson first teaches you the basic art of paddling and mounting your board then after learning water safety, surf etiquette and board handling you'll be ready to hit the waves. We guarantee that before you know it you'll be standing up on your board and riding a wave, wondering why you never did this before.</p><p>Learning to surf is for all ages and is safe and fun!! Imagine telling your friends back home, "I learned to surf in Bali".</p><h3 id="instructors">Qualified surfing instructors</h3><p>International and local qualified, accredited, professional coaches:</p><ul><li>Level 1 ASA/VTECH Surf Coaching</li><li>Surf Bronze Medallion</li><li>Advanced Resuscitation</li><li>First Aid</li></ul><h3 id="equipment">The Latest Equipment</h3><p>We provide the best quality:</p><ul><li>Safe soft boards: easy to balance, paddle, stand and ride on.</li><li>UV protection Surf Shirts: for comfort and protection from the elements.</li><li>Board shorts</li></ul>	2016-01-21 15:32:24.097116	2016-02-03 08:46:32.536991	t	\N	\N	\N	\N
\.


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmirill
--

SELECT pg_catalog.setval('pages_id_seq', 6, true);


--
-- Data for Name: pictures; Type: TABLE DATA; Schema: public; Owner: elmirill
--

COPY pictures (id, caption, alt, "position", gallery_id, created_at, updated_at, image_file_name, image_content_type, image_file_size, image_updated_at) FROM stdin;
21			\N	2	2016-02-02 00:47:04.164822	2016-02-02 00:47:04.164822	11255855_907663512605402_7356607893100800241_o.jpg	image/jpeg	167920	2016-02-02 00:46:55.704516
22			\N	2	2016-02-02 00:47:06.162694	2016-02-02 00:47:06.162694	11262024_907663815938705_5087828035720283416_o.jpg	image/jpeg	110542	2016-02-02 00:46:56.211323
23			\N	2	2016-02-02 00:47:07.113276	2016-02-02 00:47:07.113276	11426502_924170964287990_8609264539909285942_o.jpg	image/jpeg	170363	2016-02-02 00:46:56.64948
24			\N	2	2016-02-02 00:47:08.158949	2016-02-02 00:47:08.158949	11707834_938521919519561_504012960836564833_o.jpg	image/jpeg	159289	2016-02-02 00:46:57.111447
26			\N	2	2016-02-02 00:47:10.376618	2016-02-02 00:47:10.376618	11802518_945642595474160_7041567285451510201_o.jpg	image/jpeg	175273	2016-02-02 00:46:57.969103
27			\N	2	2016-02-02 00:47:11.52257	2016-02-02 00:47:11.52257	11845131_945635498808203_1677316476943600379_o.jpg	image/jpeg	243210	2016-02-02 00:46:58.412237
28			\N	2	2016-02-02 00:47:12.84444	2016-02-02 00:47:12.84444	11953351_968553076516445_2077804955618156190_o.jpg	image/jpeg	185417	2016-02-02 00:46:58.853847
29			\N	2	2016-02-02 00:47:14.018962	2016-02-02 00:47:14.018962	12471426_1019124351459317_6117501733302522584_o.jpg	image/jpeg	147590	2016-02-02 00:46:59.268937
30			\N	2	2016-02-02 00:47:15.13706	2016-02-02 00:47:15.13706	12493953_1019121398126279_10444623621262423_o.jpg	image/jpeg	301083	2016-02-02 00:46:59.690371
31			\N	2	2016-02-02 00:47:16.398681	2016-02-02 00:47:16.398681	1015634_565368133501610_1865936992_o.jpg	image/jpeg	196606	2016-02-02 00:47:00.005522
32			\N	2	2016-02-02 00:47:17.621431	2016-02-02 00:47:17.621431	1537689_899915630046857_8491315900173936309_o.jpg	image/jpeg	133163	2016-02-02 00:47:00.303733
33			\N	2	2016-02-02 00:47:18.678914	2016-02-02 00:47:18.678914	1596811_891681727536914_8131097220218342052_o.jpg	image/jpeg	121578	2016-02-02 00:47:00.725425
34			\N	2	2016-02-02 00:47:19.655723	2016-02-02 00:47:19.655723	10669076_938521702852916_284565058646649747_o.jpg	image/jpeg	271398	2016-02-02 00:47:01.150525
35			\N	2	2016-02-02 00:47:20.742783	2016-02-02 00:47:20.742783	10921632_893675934004160_5889740440626059329_o.jpg	image/jpeg	160940	2016-02-02 00:47:01.4331
36			\N	2	2016-02-02 00:47:21.843579	2016-02-02 00:47:21.843579	10986442_906494769388943_4745490530665240055_o.jpg	image/jpeg	133798	2016-02-02 00:47:01.865185
37			\N	2	2016-02-02 00:47:22.84129	2016-02-02 00:47:22.84129	11017016_902625263109227_2271827033953929147_o.jpg	image/jpeg	138185	2016-02-02 00:47:02.308693
38			\N	2	2016-02-02 00:47:23.922228	2016-02-02 00:47:23.922228	11036529_984002201638199_1561080810100639179_o.jpg	image/jpeg	207666	2016-02-02 00:47:02.736298
39			\N	2	2016-02-02 00:47:25.082148	2016-02-02 00:47:25.082148	11119536_902624779775942_8721118126890036273_o.jpg	image/jpeg	149792	2016-02-02 00:47:03.183812
40			\N	2	2016-02-02 00:47:25.960627	2016-02-02 00:47:25.960627	11212705_899915523380201_2014992782636012919_o.jpg	image/jpeg	154766	2016-02-02 00:47:03.62435
25			\N	2	2016-02-02 00:47:09.222021	2016-02-02 00:48:21.360933	11149629_891680890870331_2079414180920138126_o.jpg	image/jpeg	77739	2016-02-02 00:48:20.859284
\.


--
-- Name: pictures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmirill
--

SELECT pg_catalog.setval('pictures_id_seq', 40, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: elmirill
--

COPY schema_migrations (version) FROM stdin;
20160121152731
20160125120703
20160126202323
20160129201509
20160129204157
20160130194432
20160130220020
20160130221405
20160131162506
20160131162545
20160131175224
20160131211922
20160131211940
20160131224954
20160201163816
20160201185229
20160201191232
20160201191336
20160202214017
\.


--
-- Data for Name: subscriptions; Type: TABLE DATA; Schema: public; Owner: elmirill
--

COPY subscriptions (id, name, email, phone, created_at, updated_at) FROM stdin;
1	1	2		2016-01-26 20:39:12.200077	2016-01-26 20:39:12.200077
2				2016-01-26 21:17:26.117125	2016-01-26 21:17:26.117125
3				2016-01-26 22:24:25.888812	2016-01-26 22:24:25.888812
4				2016-01-26 22:24:29.982392	2016-01-26 22:24:29.982392
5				2016-01-26 22:24:31.356703	2016-01-26 22:24:31.356703
6				2016-01-26 22:24:37.436188	2016-01-26 22:24:37.436188
7				2016-01-26 22:26:36.881615	2016-01-26 22:26:36.881615
8				2016-01-26 22:26:38.138304	2016-01-26 22:26:38.138304
9				2016-01-26 22:26:38.798376	2016-01-26 22:26:38.798376
10				2016-01-26 22:27:12.206045	2016-01-26 22:27:12.206045
11				2016-01-26 22:27:14.306749	2016-01-26 22:27:14.306749
12	111	222		2016-01-26 22:27:30.013324	2016-01-26 22:27:30.013324
13	1	2		2016-01-26 22:34:47.757222	2016-01-26 22:34:47.757222
14	1	2		2016-01-26 22:35:56.104582	2016-01-26 22:35:56.104582
15	1	2		2016-01-26 22:35:57.537844	2016-01-26 22:35:57.537844
16	1	2		2016-01-26 22:36:01.221693	2016-01-26 22:36:01.221693
17		43		2016-01-26 22:36:20.101672	2016-01-26 22:36:20.101672
18		43		2016-01-26 22:37:13.500931	2016-01-26 22:37:13.500931
19	43	3		2016-01-26 22:37:20.052739	2016-01-26 22:37:20.052739
20				2016-01-26 22:38:00.260044	2016-01-26 22:38:00.260044
21				2016-01-26 22:38:01.50245	2016-01-26 22:38:01.50245
22				2016-01-26 22:38:22.044945	2016-01-26 22:38:22.044945
23	3	43		2016-01-26 22:38:25.65715	2016-01-26 22:38:25.65715
24				2016-01-26 22:38:58.201224	2016-01-26 22:38:58.201224
25				2016-01-26 22:38:59.154945	2016-01-26 22:38:59.154945
26				2016-01-26 22:38:59.677234	2016-01-26 22:38:59.677234
27				2016-01-26 22:39:57.9358	2016-01-26 22:39:57.9358
28				2016-01-26 22:40:02.652375	2016-01-26 22:40:02.652375
29				2016-01-26 22:40:03.177375	2016-01-26 22:40:03.177375
30				2016-01-26 22:41:38.783454	2016-01-26 22:41:38.783454
31				2016-01-26 22:41:39.631092	2016-01-26 22:41:39.631092
32				2016-01-26 22:41:40.053899	2016-01-26 22:41:40.053899
33				2016-01-26 22:41:40.359105	2016-01-26 22:41:40.359105
34				2016-01-26 22:41:53.45772	2016-01-26 22:41:53.45772
35				2016-01-26 22:42:06.591062	2016-01-26 22:42:06.591062
36				2016-01-26 22:42:52.413948	2016-01-26 22:42:52.413948
37	1	2		2016-01-26 22:42:57.225324	2016-01-26 22:42:57.225324
38	1	222		2016-01-26 22:43:08.879373	2016-01-26 22:43:08.879373
39	43	43		2016-01-26 22:46:41.327566	2016-01-26 22:46:41.327566
40	43	43		2016-01-26 22:47:10.408334	2016-01-26 22:47:10.408334
41				2016-01-26 22:47:15.04438	2016-01-26 22:47:15.04438
42				2016-01-26 22:47:15.979408	2016-01-26 22:47:15.979408
43				2016-01-26 22:47:16.19776	2016-01-26 22:47:16.19776
44				2016-01-26 22:47:16.40579	2016-01-26 22:47:16.40579
45				2016-01-26 22:47:16.595432	2016-01-26 22:47:16.595432
46				2016-01-26 22:47:16.786979	2016-01-26 22:47:16.786979
47				2016-01-26 22:47:16.956661	2016-01-26 22:47:16.956661
48				2016-01-26 22:47:17.130926	2016-01-26 22:47:17.130926
49				2016-01-26 22:47:17.288516	2016-01-26 22:47:17.288516
50				2016-01-26 22:47:17.45081	2016-01-26 22:47:17.45081
51				2016-01-26 22:47:17.654041	2016-01-26 22:47:17.654041
52				2016-01-26 22:47:17.816036	2016-01-26 22:47:17.816036
53				2016-01-26 22:47:55.810173	2016-01-26 22:47:55.810173
54				2016-01-26 22:47:57.406834	2016-01-26 22:47:57.406834
55	3	3		2016-01-26 22:48:00.908268	2016-01-26 22:48:00.908268
56	3	3		2016-01-26 22:48:03.079003	2016-01-26 22:48:03.079003
57				2016-01-26 22:48:24.114803	2016-01-26 22:48:24.114803
58		ew		2016-01-26 22:48:25.997331	2016-01-26 22:48:25.997331
59				2016-01-26 22:50:15.494333	2016-01-26 22:50:15.494333
60				2016-01-26 22:51:07.964452	2016-01-26 22:51:07.964452
61				2016-01-26 22:51:21.40226	2016-01-26 22:51:21.40226
62				2016-01-26 22:51:23.521753	2016-01-26 22:51:23.521753
63				2016-01-26 22:51:34.854166	2016-01-26 22:51:34.854166
64				2016-01-26 22:51:35.277198	2016-01-26 22:51:35.277198
65				2016-01-26 22:52:44.10824	2016-01-26 22:52:44.10824
66	1	2		2016-01-26 22:53:40.858779	2016-01-26 22:53:40.858779
67	1	2		2016-01-26 22:53:41.91715	2016-01-26 22:53:41.91715
68	12	2		2016-01-26 22:54:12.420378	2016-01-26 22:54:12.420378
69	2	2		2016-01-26 22:55:04.158287	2016-01-26 22:55:04.158287
70	43	43		2016-01-26 22:56:02.332378	2016-01-26 22:56:02.332378
71				2016-01-26 22:56:29.264065	2016-01-26 22:56:29.264065
72				2016-01-26 22:57:24.669961	2016-01-26 22:57:24.669961
73				2016-01-26 22:59:18.315261	2016-01-26 22:59:18.315261
74				2016-01-26 22:59:27.645609	2016-01-26 22:59:27.645609
75				2016-01-26 22:59:44.619762	2016-01-26 22:59:44.619762
76				2016-01-26 23:00:54.666979	2016-01-26 23:00:54.666979
77				2016-01-26 23:01:09.165782	2016-01-26 23:01:09.165782
78				2016-01-26 23:02:15.075542	2016-01-26 23:02:15.075542
79				2016-01-26 23:04:19.665944	2016-01-26 23:04:19.665944
80				2016-01-26 23:06:30.787079	2016-01-26 23:06:30.787079
81				2016-01-26 23:06:48.608306	2016-01-26 23:06:48.608306
82				2016-01-26 23:07:23.497106	2016-01-26 23:07:23.497106
83				2016-01-26 23:08:38.848013	2016-01-26 23:08:38.848013
84				2016-01-26 23:09:13.744681	2016-01-26 23:09:13.744681
85				2016-01-26 23:12:43.844679	2016-01-26 23:12:43.844679
86				2016-01-26 23:13:13.849758	2016-01-26 23:13:13.849758
87				2016-01-26 23:14:19.158894	2016-01-26 23:14:19.158894
88				2016-01-26 23:14:45.996646	2016-01-26 23:14:45.996646
89				2016-01-26 23:15:08.032268	2016-01-26 23:15:08.032268
90				2016-01-26 23:15:43.195594	2016-01-26 23:15:43.195594
91				2016-01-26 23:15:52.730477	2016-01-26 23:15:52.730477
92	Anton Khaybulaev	ant.khay@gmail.com		2016-01-26 23:16:17.668485	2016-01-26 23:16:17.668485
93	1			2016-01-28 20:54:08.850847	2016-01-28 20:54:08.850847
94				2016-01-28 20:54:15.866071	2016-01-28 20:54:15.866071
95		1		2016-01-28 20:55:16.177527	2016-01-28 20:55:16.177527
96		1		2016-01-28 20:56:50.237653	2016-01-28 20:56:50.237653
97		1		2016-01-28 20:58:04.745851	2016-01-28 20:58:04.745851
98				2016-01-28 21:00:12.680379	2016-01-28 21:00:12.680379
99		1		2016-01-28 21:01:56.443243	2016-01-28 21:01:56.443243
100				2016-01-28 21:02:37.094255	2016-01-28 21:02:37.094255
101	42342424	25454545		2016-01-28 21:05:16.615668	2016-01-28 21:05:16.615668
102	Anton Khaybulaev	ant.khay@gmail.com1		2016-01-28 21:27:54.795427	2016-01-28 21:27:54.795427
103	Anton Khaybulaev	ant.khay@gmail.co11		2016-01-28 21:28:40.417511	2016-01-28 21:28:40.417511
104	Anton Khaybulaev	ant.khay@gmail.com111		2016-01-28 21:32:13.109091	2016-01-28 21:32:13.109091
105	Anton Khaybulaev	an1t.khay@gmail.com		2016-01-28 21:32:41.95084	2016-01-28 21:32:41.95084
106	Anton Khaybulaev	ant.khay@gm1.com		2016-01-28 21:37:37.035488	2016-01-28 21:37:37.035488
107	42324	42343@43		2016-02-02 22:58:05.429237	2016-02-02 22:58:05.429237
108	t3563456t3	tertert@gdgd		2016-02-02 22:58:30.17809	2016-02-02 22:58:30.17809
109	333333	3333@3333		2016-02-02 22:59:31.876492	2016-02-02 22:59:31.876492
\.


--
-- Name: subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmirill
--

SELECT pg_catalog.setval('subscriptions_id_seq', 109, true);


--
-- Data for Name: surf_courses; Type: TABLE DATA; Schema: public; Owner: elmirill
--

COPY surf_courses (id, title, content, price_1, price_2, price_3, created_at, updated_at, thumbnail_file_name, thumbnail_content_type, thumbnail_file_size, thumbnail_updated_at, subtitle, "position") FROM stdin;
11	Kids Club: Level 1 — Grommet	<ul><li>Intro to Surfing and Surf Safety;</li><li>Kids learn beach and surf safety and awareness;</li><li>Basic board skills, paddling, catching waves and surfstance;</li><li>Stand up and surf assisted by our professional coachesin your first lesson.</li></ul>	1 lesson — $45			2016-01-30 21:37:46.638736	2016-01-31 16:19:59.598831	kidscourse001.jpg	image/jpeg	50792	2016-01-30 21:37:46.563569	Under 12 years — 2h group lesson	5
12	Kids Club: Level 2 — Dolphin	<ul><li>In this course kids learn about rules in the surf and being <strong>safe in the surf</strong>;</li><li>Preparing them to feel safe and confident, catching waves assisted by our <strong>professional surf coaches</strong>;</li><li>They will learn how to ride and turn on a wave and have heaps of fun and make new friends</li></ul>	3 lessons — $120			2016-01-30 21:40:26.131791	2016-01-31 16:20:04.896653	kidscourse002.jpg	image/jpeg	96906	2016-01-30 21:40:26.073641	Under 12 years — 2 hour group lesson	6
13	Kids Club: Level 3 — Pro Surfer	<p>Become a real surfer in this course. Learn how the pro surf tricks, turns and safety tips from our professional surf coaches.</p><p>Surf certificate and photo are included in this course.</p>	6 lessons — $180			2016-01-30 21:42:45.340064	2016-01-31 16:20:08.607549	kidscourse003.jpg	image/jpeg	82532	2016-01-30 21:42:45.2751	Under 12 years — 2 hour group lesson	7
6	Level 1 — Intro To Surfing	<p>During this lesson you will learn <strong>basic board skills, padding, take off, riding a wave, surf safety, surf etiquette</strong> and you will be <strong>standing and surfing</strong> by the end of this lesson.</p>	2.5h — $45			2016-01-29 21:50:12.855189	2016-01-31 16:19:37.810783	surfcourse001.jpg	image/jpeg	133826	2016-01-30 19:43:06.139079		1
8	Level 2 — Nomad	<p>You will be <strong>surfing waves in 3 lessons</strong>. We teach you in this course board handling and boardcontrol, surf awareness understanding beach, wave and ocean conditions and surf safety. Preparing you too feel safe and confident in the surf.</p>	3 lessons — $120			2016-01-30 21:11:20.407991	2016-01-31 16:19:42.305303	surfcourse002.jpg	image/jpeg	137734	2016-01-30 21:11:20.33709		2
9	Level 3 — Surfer	<p>In this course we progress you through levels and skills to have you catching and <strong>surfing unbroken waves, taking the drop, ridding the wave face, bottom and top turns</strong>, positioning in the line upand advanced surf safety. This is the course for anyone serious about becoming a surfer.</p><p>Photo and surf certificate are included in this course</p>	6 lessons — $180			2016-01-30 21:26:23.321835	2016-01-31 16:19:48.429868	surfcourse003.jpg	image/jpeg	73648	2016-01-30 21:26:23.263063		3
10	Level 3 — Soul Surfer	<p>Fast Track Your Surfing</p><p>Success with personal one to one Coaching.</p>	1 student for 2h — $80 	2 student for 2h — $140		2016-01-30 21:34:46.323895	2016-01-31 16:19:54.864351	surfcourse004.jpg	image/jpeg	77400	2016-01-30 21:34:46.261464		4
\.


--
-- Name: surf_courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmirill
--

SELECT pg_catalog.setval('surf_courses_id_seq', 18, true);


--
-- Data for Name: surfaris; Type: TABLE DATA; Schema: public; Owner: elmirill
--

COPY surfaris (id, title, subtitle, content, price_1, price_2, price_3, "position", created_at, updated_at, thumbnail_file_name, thumbnail_content_type, thumbnail_file_size, thumbnail_updated_at) FROM stdin;
1	Dry season best spot		<ul><li>Beginner: Kuta Beach</li><li>Intermediate: Canggu, Medewi, Kuta Reef, Balian</li><li>Advanced: Uluwatu, Padang, Bingin, Airport Lefts and Rights</li></ul>	Half day — $100	Full day — $120		1	2016-01-31 18:34:35.534883	2016-01-31 18:37:51.981755	surfari_1.jpg	image/jpeg	126725	2016-01-31 18:37:51.685235
2	Wet season best spot		<ul><li>Beginner: Kuta Beach</li><li>Intermediate and Advanced: Nusa Dua and Sanur reefs, Serangan</li></ul>	Half day — $100	Half day — $120		2	2016-01-31 18:41:42.972176	2016-01-31 18:41:55.897441	surfari_2.jpg	image/jpeg	71539	2016-01-31 18:41:55.644643
\.


--
-- Name: surfaris_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmirill
--

SELECT pg_catalog.setval('surfaris_id_seq', 2, true);


--
-- Data for Name: testimonials; Type: TABLE DATA; Schema: public; Owner: elmirill
--

COPY testimonials (id, name, email, content, created_at, updated_at) FROM stdin;
3	John	\N	I booked 3 lessons for my kids at Bali Learn to Surf. They are 6 and 11 years old. They both loved it. For sure we will come back!	2016-02-01 16:53:34.267299	2016-02-01 16:53:34.267299
4	Elisa	\N	Saya mencoba belajar surfing disini.Sangat menyenangkan, instructor yang ramah dan sangat membantu untuk pertama kali belajar.Liburan selanjutnya saya pasti kembali disekolah surfing ini.	2016-02-01 16:55:08.991731	2016-02-01 16:55:08.991731
5	Anna	\N	Thank you Bali Learn To Surf I've always wanted to learn to surf and had lessons with surf schools in Australia but could never stand up. You guys taught me how and got me standing in my first lesson and made my dream come true. I cant wait to tell all my mates I learnt to surf in Bali.	2016-02-01 16:55:22.565559	2016-02-01 16:55:22.565559
6	Igor	\N	Отлично провел время в серф школе Bali Learn to Surf, делая свои первые шаги в качестве серфера. Школа находится в одном из самый модных отелей острова, в отеле всемирно известного бренда Hard Rock. Один из прекраснейших пляжей находиться прям через дорогу, где и проходит обучение. Персонал школы очень приветливый, русские инструктора мне всё доходчиво объяснили и значительно ускорили процесс освоения этого прекрасного вида спорта.	2016-02-01 16:55:34.206211	2016-02-01 16:55:34.206211
7	Monica	\N	So cool place to learn...	2016-02-01 16:55:45.456864	2016-02-01 16:55:45.456864
8	Flo	\N	Die surfschule hat mir sehr gut gefallen, ich habe viel gelernt und konnte meine surfskills verbessern. Wir hatten viel spass und ich würde jeder zeit wieder in diese surfschule gehen!	2016-02-01 16:56:00.488686	2016-02-01 16:56:00.488686
9	Nico	\N	One of the best days of my holiday so far, could not believe I was standing up so quickly, awesome fun, and great staff.	2016-02-01 16:56:26.669308	2016-02-01 16:56:26.669308
\.


--
-- Name: testimonials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmirill
--

SELECT pg_catalog.setval('testimonials_id_seq', 9, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: elmirill
--

COPY users (id, created_at, updated_at, email, encrypted_password, confirmation_token, remember_token) FROM stdin;
1	2016-02-02 22:03:30.669224	2016-02-03 04:05:36.72241	ant.khay@gmail.com	$2a$10$erq8ePlNBb9JYJL.MENYzO3rrFApWNEjQIqXylUOnkDVzWF2pCP/C	87b2a8a750b59c40fe0eb9add00a6d95496e7ffc	bcab235a7545dcd408c9740288fd7f66df714aeb
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmirill
--

SELECT pg_catalog.setval('users_id_seq', 2, true);


--
-- Name: accommodations_pkey; Type: CONSTRAINT; Schema: public; Owner: elmirill; Tablespace: 
--

ALTER TABLE ONLY accommodations
    ADD CONSTRAINT accommodations_pkey PRIMARY KEY (id);


--
-- Name: galleries_pkey; Type: CONSTRAINT; Schema: public; Owner: elmirill; Tablespace: 
--

ALTER TABLE ONLY galleries
    ADD CONSTRAINT galleries_pkey PRIMARY KEY (id);


--
-- Name: pages_pkey; Type: CONSTRAINT; Schema: public; Owner: elmirill; Tablespace: 
--

ALTER TABLE ONLY pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: pictures_pkey; Type: CONSTRAINT; Schema: public; Owner: elmirill; Tablespace: 
--

ALTER TABLE ONLY pictures
    ADD CONSTRAINT pictures_pkey PRIMARY KEY (id);


--
-- Name: subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: elmirill; Tablespace: 
--

ALTER TABLE ONLY subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (id);


--
-- Name: surf_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: elmirill; Tablespace: 
--

ALTER TABLE ONLY surf_courses
    ADD CONSTRAINT surf_courses_pkey PRIMARY KEY (id);


--
-- Name: surfaris_pkey; Type: CONSTRAINT; Schema: public; Owner: elmirill; Tablespace: 
--

ALTER TABLE ONLY surfaris
    ADD CONSTRAINT surfaris_pkey PRIMARY KEY (id);


--
-- Name: testimonials_pkey; Type: CONSTRAINT; Schema: public; Owner: elmirill; Tablespace: 
--

ALTER TABLE ONLY testimonials
    ADD CONSTRAINT testimonials_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: elmirill; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_pages_on_permalink; Type: INDEX; Schema: public; Owner: elmirill; Tablespace: 
--

CREATE INDEX index_pages_on_permalink ON pages USING btree (permalink);


--
-- Name: index_pictures_on_gallery_id; Type: INDEX; Schema: public; Owner: elmirill; Tablespace: 
--

CREATE INDEX index_pictures_on_gallery_id ON pictures USING btree (gallery_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: elmirill; Tablespace: 
--

CREATE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_remember_token; Type: INDEX; Schema: public; Owner: elmirill; Tablespace: 
--

CREATE INDEX index_users_on_remember_token ON users USING btree (remember_token);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: elmirill; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: fk_rails_4d090b44f9; Type: FK CONSTRAINT; Schema: public; Owner: elmirill
--

ALTER TABLE ONLY pictures
    ADD CONSTRAINT fk_rails_4d090b44f9 FOREIGN KEY (gallery_id) REFERENCES galleries(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

