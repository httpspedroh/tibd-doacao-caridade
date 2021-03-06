--
-- PostgreSQL database dump
--

-- Dumped from database version 12.10 (Ubuntu 12.10-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.10 (Ubuntu 12.10-0ubuntu0.20.04.1)

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
-- Name: news; Type: TABLE; Schema: public; Owner: ti2cc
--

CREATE TABLE public.news (
    id integer NOT NULL,
    inst_id smallint NOT NULL,
    title character varying(100) NOT NULL,
    description character varying(1000) NOT NULL,
    date timestamp with time zone NOT NULL,
    image_url character varying(100) NOT NULL
);


ALTER TABLE public.news OWNER TO ti2cc;

--
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: ti2cc
--

CREATE SEQUENCE public.news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_id_seq OWNER TO ti2cc;

--
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ti2cc
--

ALTER SEQUENCE public.news_id_seq OWNED BY public.news.id;


--
-- Name: news id; Type: DEFAULT; Schema: public; Owner: ti2cc
--

ALTER TABLE ONLY public.news ALTER COLUMN id SET DEFAULT nextval('public.news_id_seq'::regclass);


--
-- Name: news news_pkey; Type: CONSTRAINT; Schema: public; Owner: ti2cc
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

INSERT INTO institutions (username, name, password, image_url, category, address, phone, description) VALUES ('casacaminho', 'Instituto Casa do Caminho', '1234567', 'assets/images/inst-profile/inst_9.png', 6, 'R. Padre Rolim, 222 - Santa Efigênia, Belo Horizonte - MG, 30130-090', '(31) 3586-3856', 'Instituição de apoio às pessoas com Câncer. Vivem de doações, inclusive o salário dos funcionários são providos por doações. Promovem bazares para angariar fundos e sempre precisam de ajuda.');
INSERT INTO institutions (username, name, password, image_url, category, address, phone, description) VALUES ('familiasCarentes', 'Associação Das Famílias Carentes De Belo Horizonte', '12345678', 'assets/images/inst-profile/inst_3.png', 0, 'R. Islândia, 196 - Sala 6 - Europa, Belo Horizonte - MG, 31620-430', '(31) 3458-9070', 'A Associação das Famílias Carentes de Belo Horizonte é uma entidade de direito privado, sem fins lucrativos, de caráter assistencial e filantrópico, que tem como principal finalidade amparar as famílias carentes, por meio do desenvolvimento e execução de programas sociais.');
INSERT INTO institutions (username, name, password, image_url, category, address, phone, description) VALUES ('fundacao_sara', 'Fundação Sara', '12345678', 'assets/images/inst-profile/inst_2.png', 1, 'R. André Luís, 415 - Canelas II, Montes Claros - MG, 39402-384', '(38) 3214-5500', 'Prestar assistência social às crianças e adolescentes com câncer e ser agente de promoção de conhecimentos e de melhorias do tratamento oncológico.');
INSERT INTO institutions (username, name, password, image_url, category, address, phone, description) VALUES ('salvação_army', 'Exército de Salvação', '12345678', 'assets/images/inst-profile/inst_2.png', 0, 'R. Maravilhas, 25 - Providência, Belo Horizonte - MG, 31814-040', '(31) 3433-3563', 'O Exército de Salvação existe para salvar almas, edificar os santos e servir a humanidade sofredora, motivado pelo amor a Deus, em nome de Jesus, sem discriminação.');
INSERT INTO institutions (username, name, password, image_url, category, address, phone, description) VALUES ('SantaBernadete', 'Casa Santa Bernadete', '123456778', 'assets/images/inst-profile/inst_6.png', 3, 'R. Gentil Gonzaga, 181 - Canelas, Montes Claros - MG, 39402-661', '(38) 3222-6055', ' A instituição acolhe jovens e adultos em situação de vulnerabilidade social com diagnóstico de câncer e em tratamento ambulatorial de radioterapia e/ou quimioterapia.');
INSERT INTO institutions (username, name, password, image_url, category, address, phone, description) VALUES ('salvação_army', 'Exército de Salvação', '12345678', 'assets/images/inst-profile/inst_5.png', 4, 'R. Maravilhas, 25 - Providência, Belo Horizonte - MG, 31814-040', '(31) 3433-3563', '');
INSERT INTO institutions (username, name, password, image_url, category, address, phone, description) VALUES ('doce_lar', 'Fundação da Terceira Idade Doce Lar', '1234562278', 'assets/images/inst-profile/inst_6.png', 5, 'Rua do Campo s/n - Agrovila, Porto Seguro - BA, 45810-000', '(73) 99819-0151', 'Casa de acolhimento da terceira idade, que vive de doações e sempre realiza campanhas para o recebimento de doações e divulgação do projeto');
INSERT INTO institutions (username, name, password, image_url, category, address, phone, description) VALUES ('apae_bahia', 'APAE PORTO SEGURO - BAHIA', '1234567', 'assets/images/inst-profile/inst_9.png', 6, 'Av. do Trab., 53 - Campinho, Porto Seguro - BA, 45810-000', '(73) 98109-2161', 'Somos uma rede sem fins lucrativos que, há mais de 60 anos, se dedica na defesa dos direitos e na prestação de serviços à pessoa com deficiência no Brasil. A APAE é responsável pela inclusão social em diversos níveis de milhares de pessoas ao longo de sua história. ');
INSERT INTO institutions (username, name, password, image_url, category, address, phone, description) VALUES ('velha_lar', 'Lar das velhinhas', '12345678', 'assets/images/inst-profile/inst_5.png', 5, 'R. Dom João Pimenta, 65 - Centro, Montes Claros - MG, 39400-003', '(38) 3221-1299', 'O Centro Feminino de Longa Permanecia “Lar das Velhinhas” é uma entidade civil, filantrópica, sem fins lucrativos, de cunho social, que presta Serviço de Acolhimento Institucional para pessoas idosas gênero feminino dando-lhes assistência alimentar, fornecendo-lhes atividades recreativas, abrigo e proteção.');

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.10 (Ubuntu 12.10-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.10 (Ubuntu 12.10-0ubuntu0.20.04.1)

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
-- Name: carousel; Type: TABLE; Schema: public; Owner: ti2cc
--

CREATE TABLE public.carousel (
    id integer NOT NULL,
    image_url character varying(100) NOT NULL,
    description character varying(100) NOT NULL
);


ALTER TABLE public.carousel OWNER TO ti2cc;

--
-- Name: carousel_id_seq; Type: SEQUENCE; Schema: public; Owner: ti2cc
--

CREATE SEQUENCE public.carousel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.carousel_id_seq OWNER TO ti2cc;

--
-- Name: carousel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ti2cc
--

ALTER SEQUENCE public.carousel_id_seq OWNED BY public.carousel.id;


--
-- Name: carousel id; Type: DEFAULT; Schema: public; Owner: ti2cc
--

ALTER TABLE ONLY public.carousel ALTER COLUMN id SET DEFAULT nextval('public.carousel_id_seq'::regclass);


--
-- Name: carousel carousel_pkey; Type: CONSTRAINT; Schema: public; Owner: ti2cc
--

ALTER TABLE ONLY public.carousel
    ADD CONSTRAINT carousel_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

INSERT INTO carousel (image_url, description) VALUES ('assets/images/img-car/car_2.jpg', 'Mão estendida');
INSERT INTO carousel (image_url, description) VALUES ('assets/images/img-car/car_3.jpg', 'Mantimentos');
INSERT INTO carousel (image_url, description) VALUES ('assets/images/img-car/car_1.jpg', 'Criança carente');

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.10 (Ubuntu 12.10-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.10 (Ubuntu 12.10-0ubuntu0.20.04.1)

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
-- Name: news; Type: TABLE; Schema: public; Owner: ti2cc
--

CREATE TABLE public.news (
    id integer NOT NULL,
    inst_id smallint NOT NULL,
    title character varying(100) NOT NULL,
    description character varying(1000) NOT NULL,
    date timestamp with time zone NOT NULL,
    image_url character varying(100) NOT NULL
);


ALTER TABLE public.news OWNER TO ti2cc;

--
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: ti2cc
--

CREATE SEQUENCE public.news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_id_seq OWNER TO ti2cc;

--
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ti2cc
--

ALTER SEQUENCE public.news_id_seq OWNED BY public.news.id;


--
-- Name: news id; Type: DEFAULT; Schema: public; Owner: ti2cc
--

ALTER TABLE ONLY public.news ALTER COLUMN id SET DEFAULT nextval('public.news_id_seq'::regclass);


--
-- Name: news news_pkey; Type: CONSTRAINT; Schema: public; Owner: ti2cc
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO news (inst_id, date, title, description, image_url) VALUES (1, 'Mon Nov 29 14:22:00 BRT 2021', 'He hated that he loved what she hated about hate.', 'Ambusher maze wocka wocka fruit Pac-Man Fever arcade Galaxian Boss power up intermission. He hated that he loved what she hated about hate. Pac-Man Namco Toru Iwatani Pac-Man Fever maze dots. The external scars tell only part of the story. Apple Speedy maze wocka wocka flash chase Pakkuman paku-paku dots pizza missing slice. Fluffy pink unicorns are a popular status symbol among macho men. Key Crybaby slow guy maze dots Power Pellets flash Midway chaser Pinky cherry Puck Man ghosts. Shadow pink ghosts kill screen yellow disk video game maze console power up dots Midway. He found his art never progressed when he literally used his sweat and tears. Clyde blue enemies flash dots wocka maze monsters ghosts red chaser.', 'assets/images/news/new_1.jpg');

INSERT INTO news (inst_id, date, title, description, image_url) VALUES (1, 'Mon Nov 29 19:26:04 BRT 2021', 'Fluffy pink unicorns are a popular men.', 'She was disgusted he couldn’t tell the difference between lemonade and limeade. Shadow dots strawberry Pac-Man Midway chaser Pinky kill screen. Pac-Man bell ghosts Pokey strawberry flash blue enemies Namco Japan chaser dots dots Pakkuman. He had a hidden stash underneath the floorboards in the back room of the house. I think I will buy the red car, or I will lease the blue one. She had the gift of being able to paint songs. Ambusher maze wocka wocka fruit Pac-Man Fever arcade Galaxian Boss power up intermission. I hear that Nancy is very pretty. She learned that water bottles are no longer just to hold liquid, but they''re also status symbols. The external scars tell only part of the story.', 'assets/images/news/new_2.jpg');

INSERT INTO news (inst_id, date, title, description, image_url) VALUES (2, 'Mon Nov 29 13:15:55 BRT 2021', 'I hear that Nancy is very pretty.', 'He found his art never progressed when he literally used his sweat and tears. I hear that Nancy is very pretty. I think I will buy the red car, or I will lease the blue one. He had a hidden stash underneath the floorboards in the back room of the house. Ghosts dots cherry Blinky Pac-Man Power Pellets fruit. Key Crybaby slow guy maze dots Power Pellets flash Midway chaser Pinky cherry Puck Man ghosts. Don''t put peanut butter on the dog''s nose. Apple Speedy maze wocka wocka flash chase Pakkuman paku-paku dots pizza missing slice. Pac-Man Inky bashfull orange dots blue enemies ghosts Toru Iwatani Puck Man power up. He was willing to find the depths of the rabbit hole in order to be with her.', 'assets/images/news/new_3.jpg');

INSERT INTO news (inst_id, date, title, description, image_url) VALUES (2, 'Mon Nov 29 15:26:04 BRT 2021', 'The old apple revels in its authority.', 'Patricia loves the sound of nails strongly pressed against the chalkboard. Flying fish few by the space station. Orange fickle blue guy maze chase. He found his art never progressed when he literally used his sweat and tears. She was disgusted he couldn’t tell the difference between lemonade and limeade. Shadow dots strawberry Pac-Man Midway chaser Pinky kill screen. The external scars tell only part of the story. Pac-Man Namco Toru Iwatani Pac-Man Fever maze dots. Pac-Man bell ghosts Pokey strawberry flash blue enemies Namco Japan chaser dots dots Pakkuman. I think I will buy the red car, or I will lease the blue one.', 'assets/images/news/new_4.jpg');

INSERT INTO news (inst_id, date, title, description, image_url) VALUES (3, 'Mon Nov 29 09:26:04 BRT 2021', 'The external scars tell only part of the story.', 'Orange fickle blue guy maze chase. Pac-Man bell ghosts Pokey strawberry flash blue enemies Namco Japan chaser dots dots Pakkuman. The external scars tell only part of the story. Don''t put peanut butter on the dog''s nose. Ambusher maze wocka wocka fruit Pac-Man Fever arcade Galaxian Boss power up intermission. He hated that he loved what she hated about hate. Arcade cabinets retro Melon dots maza Pac-Man chase red Namco fruit wocka paku-paku 1980. She learned that water bottles are no longer just to hold liquid, but they''re also status symbols. Clyde blue enemies flash dots wocka maze monsters ghosts red chaser. I think I will buy the red car, or I will lease the blue one.', 'assets/images/news/new_5.jpg');

INSERT INTO news (inst_id, date, title, description, image_url) VALUES (3, 'Mon Nov 29 15:26:04 BRT 2021', 'Orange fickle blue guy maze chase.', 'Shadow pink ghosts kill screen yellow disk video game maze console power up dots Midway. She had the gift of being able to paint songs. Don''t put peanut butter on the dog''s nose. The old apple revels in its authority. She learned that water bottles are no longer just to hold liquid, but they''re also status symbols. Ghosts dots cherry Blinky Pac-Man Power Pellets fruit. I hear that Nancy is very pretty. The external scars tell only part of the story. Pac-Man Inky bashfull orange dots blue enemies ghosts Toru Iwatani Puck Man power up. Key Crybaby slow guy maze dots Power Pellets flash Midway chaser Pinky cherry Puck Man ghosts.', 'assets/images/news/new_6.jpg');

INSERT INTO news (inst_id, date, title, description, image_url) VALUES (4, 'Mon Nov 29 10:15:05 BRT 2021', 'I hear that Nancy is very pretty.', 'He hated that he loved what she hated about hate. Don''t put peanut butter on the dog''s nose. She had the gift of being able to paint songs. He found his art never progressed when he literally used his sweat and tears. Flying fish few by the space station. Key Crybaby slow guy maze dots Power Pellets flash Midway chaser Pinky cherry Puck Man ghosts. The external scars tell only part of the story. Clyde blue enemies flash dots wocka maze monsters ghosts red chaser. Pac-Man Namco Toru Iwatani Pac-Man Fever maze dots. Shadow dots strawberry Pac-Man Midway chaser Pinky kill screen.', 'assets/images/news/new_7.jpg');

INSERT INTO news (inst_id, date, title, description, image_url) VALUES (4, 'Mon Nov 29 19:21:07 BRT 2021', 'The old apple revels in its authority.', 'Orange fickle blue guy maze chase. Ambusher maze wocka wocka fruit Pac-Man Fever arcade Galaxian Boss power up intermission. Pac-Man Namco Toru Iwatani Pac-Man Fever maze dots. Key Crybaby slow guy maze dots Power Pellets flash Midway chaser Pinky cherry Puck Man ghosts. He was willing to find the depths of the rabbit hole in order to be with her. She was disgusted he couldn’t tell the difference between lemonade and limeade. She learned that water bottles are no longer just to hold liquid, but they''re also status symbols. Clyde blue enemies flash dots wocka maze monsters ghosts red chaser. I hear that Nancy is very pretty. I think I will buy the red car, or I will lease the blue one.', 'assets/images/news/new_8.jpg');

INSERT INTO news (inst_id, date, title, description, image_url) VALUES (5, 'Mon Nov 29 05:26:13 BRT 2021', 'I hear that Nancy is very pretty.', 'Ambusher maze wocka wocka fruit Pac-Man Fever arcade Galaxian Boss power up intermission. Pac-Man Namco Toru Iwatani Pac-Man Fever maze dots. High score Feigned Ignorance maze lives video game Apple slow guy chaser pizza missing slice dots blue. She was disgusted he couldn’t tell the difference between lemonade and limeade. Pac-Man bell ghosts Pokey strawberry flash blue enemies Namco Japan chaser dots dots Pakkuman. Poison ivy grew through the fence they said was impenetrable. Patricia loves the sound of nails strongly pressed against the chalkboard. The beauty of the sunset was obscured by the industrial cranes. Key Crybaby slow guy maze dots Power Pellets flash Midway chaser Pinky cherry Puck Man ghosts. Fluffy pink unicorns are a popular status symbol among macho men.', 'assets/images/news/new_9.jpg');

INSERT INTO news (inst_id, date, title, description, image_url) VALUES (5, 'Mon Nov 29 14:54:55 BRT 2021', 'The old apple revels in its authority.', 'Patricia loves the sound of nails strongly pressed against the chalkboard. She had the gift of being able to paint songs. Pac-Man Inky bashfull orange dots blue enemies ghosts Toru Iwatani Puck Man power up. Clyde blue enemies flash dots wocka maze monsters ghosts red chaser. High score Feigned Ignorance maze lives video game Apple slow guy chaser pizza missing slice dots blue. Fluffy pink unicorns are a popular status symbol among macho men. She was disgusted he couldn’t tell the difference between lemonade and limeade. He hated that he loved what she hated about hate. I hear that Nancy is very pretty. He was willing to find the depths of the rabbit hole in order to be with her.', 'assets/images/news/new_10.jpg');

INSERT INTO news (inst_id, date, title, description, image_url) VALUES (6, 'Mon Nov 29 23:26:15 BRT 2021', 'I hear that Nancy is very pretty.', 'She was disgusted he couldn’t tell the difference between lemonade and limeade. Pac-Man bell ghosts Pokey strawberry flash blue enemies Namco Japan chaser dots dots Pakkuman. Patricia loves the sound of nails strongly pressed against the chalkboard. Orange fickle blue guy maze chase. She had the gift of being able to paint songs. Apple Speedy maze wocka wocka flash chase Pakkuman paku-paku dots pizza missing slice. Flying fish few by the space station. Don''t put peanut butter on the dog''s nose. Ghosts dots cherry Blinky Pac-Man Power Pellets fruit. Ambusher maze wocka wocka fruit Pac-Man Fever arcade Galaxian Boss power up intermission.', 'assets/images/news/new_11.jpg');

INSERT INTO news (inst_id, date, title, description, image_url) VALUES (6, 'Mon Nov 29 23:54:13 BRT 2021', 'The old apple revels in its authority.', 'Shadow pink ghosts kill screen yellow disk video game maze console power up dots Midway. Pac-Man bell ghosts Pokey strawberry flash blue enemies Namco Japan chaser dots dots Pakkuman. As she walked along the street and looked in the gutter, she realized facemasks had become the new cigarette butts. Clyde blue enemies flash dots wocka maze monsters ghosts red chaser. He found his art never progressed when he literally used his sweat and tears. The beauty of the sunset was obscured by the industrial cranes. Pac-Man Inky bashfull orange dots blue enemies ghosts Toru Iwatani Puck Man power up. Poison ivy grew through the fence they said was impenetrable. She was disgusted he couldn’t tell the difference between lemonade and limeade. The external scars tell only part of the story.', 'assets/images/news/new_12.jpg');

INSERT INTO news (inst_id, date, title, description, image_url) VALUES (7, 'Mon Nov 29 16:05:34 BRT 2021', 'I hear that Nancy is very pretty.', 'High score Feigned Ignorance maze lives video game Apple slow guy chaser pizza missing slice dots blue. Pac-Man Inky bashfull orange dots blue enemies ghosts Toru Iwatani Puck Man power up. Don''t put peanut butter on the dog''s nose. Clyde blue enemies flash dots wocka maze monsters ghosts red chaser. Ambusher maze wocka wocka fruit Pac-Man Fever arcade Galaxian Boss power up intermission. Ghosts dots cherry Blinky Pac-Man Power Pellets fruit. Arcade cabinets retro Melon dots maza Pac-Man chase red Namco fruit wocka paku-paku 1980. I hear that Nancy is very pretty. He hated that he loved what she hated about hate. Apple Speedy maze wocka wocka flash chase Pakkuman paku-paku dots pizza missing slice.', 'assets/images/news/new_13.jpg');

INSERT INTO news (inst_id, date, title, description, image_url) VALUES (7, 'Mon Nov 29 17:26:31 BRT 2021', 'The old apple revels in its authority.', 'Shadow dots strawberry Pac-Man Midway chaser Pinky kill screen. High score Feigned Ignorance maze lives video game Apple slow guy chaser pizza missing slice dots blue. The old apple revels in its authority. He hated that he loved what she hated about hate. I think I will buy the red car, or I will lease the blue one. Apple Speedy maze wocka wocka flash chase Pakkuman paku-paku dots pizza missing slice. The beauty of the sunset was obscured by the industrial cranes. He had a hidden stash underneath the floorboards in the back room of the house. Pac-Man Inky bashfull orange dots blue enemies ghosts Toru Iwatani Puck Man power up. The external scars tell only part of the story.', 'assets/images/news/new_14.jpg');

INSERT INTO news (inst_id, date, title, description, image_url) VALUES (8, 'Mon Nov 29 07:20:05 BRT 2021', 'I hear that Nancy is very pretty.', 'Pac-Man Namco Toru Iwatani Pac-Man Fever maze dots. He had a hidden stash underneath the floorboards in the back room of the house. She learned that water bottles are no longer just to hold liquid, but they''re also status symbols. Patricia loves the sound of nails strongly pressed against the chalkboard. Shadow dots strawberry Pac-Man Midway chaser Pinky kill screen. Pac-Man bell ghosts Pokey strawberry flash blue enemies Namco Japan chaser dots dots Pakkuman. Fluffy pink unicorns are a popular status symbol among macho men. I hear that Nancy is very pretty. Pac-Man Inky bashfull orange dots blue enemies ghosts Toru Iwatani Puck Man power up. Poison ivy grew through the fence they said was impenetrable.', 'assets/images/news/new_15.jpg');

INSERT INTO news (inst_id, date, title, description, image_url) VALUES (8, 'Mon Nov 29 08:34:00 BRT 2021', 'The old apple revels in its authority.', 'Shadow dots strawberry Pac-Man Midway chaser Pinky kill screen. The external scars tell only part of the story. He was willing to find the depths of the rabbit hole in order to be with her. He found his art never progressed when he literally used his sweat and tears. Ghosts dots cherry Blinky Pac-Man Power Pellets fruit. Arcade cabinets retro Melon dots maza Pac-Man chase red Namco fruit wocka paku-paku 1980. She learned that water bottles are no longer just to hold liquid, but they''re also status symbols. Fluffy pink unicorns are a popular status symbol among macho men. She was disgusted he couldn’t tell the difference between lemonade and limeade. Clyde blue enemies flash dots wocka maze monsters ghosts red chaser.', 'assets/images/news/new_16.jpg');

INSERT INTO news (inst_id, date, title, description, image_url) VALUES (9, 'Mon Nov 29 10:35:13 BRT 2021', 'I hear that Nancy is very pretty.', 'He was willing to find the depths of the rabbit hole in order to be with her. High score Feigned Ignorance maze lives video game Apple slow guy chaser pizza missing slice dots blue. I think I will buy the red car, or I will lease the blue one. Orange fickle blue guy maze chase. The external scars tell only part of the story. I hear that Nancy is very pretty. Don''t put peanut butter on the dog''s nose. As she walked along the street and looked in the gutter, she realized facemasks had become the new cigarette butts. He hated that he loved what she hated about hate. She was disgusted he couldn’t tell the difference between lemonade and limeade.', 'assets/images/news/new_17.jpg');

INSERT INTO news (inst_id, date, title, description, image_url) VALUES (9, 'Mon Nov 29 21:26:43 BRT 2021', 'The old apple revels in its authority.', 'Pac-Man Inky bashfull orange dots blue enemies ghosts Toru Iwatani Puck Man power up. As she walked along the street and looked in the gutter, she realized facemasks had become the new cigarette butts. He was willing to find the depths of the rabbit hole in order to be with her. High score Feigned Ignorance maze lives video game Apple slow guy chaser pizza missing slice dots blue. Poison ivy grew through the fence they said was impenetrable. Don''t put peanut butter on the dog''s nose. Pac-Man Namco Toru Iwatani Pac-Man Fever maze dots. Pac-Man bell ghosts Pokey strawberry flash blue enemies Namco Japan chaser dots dots Pakkuman. She had the gift of being able to paint songs. I hear that Nancy is very pretty.', 'assets/images/news/new_18.jpg');