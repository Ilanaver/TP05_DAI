PGDMP  1    '                |            Tp5    16.2    16.0 v    )           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            *           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            +           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ,           1262    16398    Tp5    DATABASE     |   CREATE DATABASE "Tp5" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Argentina.1252';
    DROP DATABASE "Tp5";
                postgres    false            �            1259    16400    event_categories    TABLE     �   CREATE TABLE public.event_categories (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    display_order integer NOT NULL
);
 $   DROP TABLE public.event_categories;
       public         heap    postgres    false            �            1259    16399    event_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.event_categories_id_seq;
       public          postgres    false    216            -           0    0    event_categories_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.event_categories_id_seq OWNED BY public.event_categories.id;
          public          postgres    false    215            �            1259    16409    event_enrollments    TABLE     J  CREATE TABLE public.event_enrollments (
    id integer NOT NULL,
    id_events integer NOT NULL,
    id_user integer NOT NULL,
    description character varying(250) NOT NULL,
    registration_date_time date NOT NULL,
    attended integer NOT NULL,
    observations character varying(250) NOT NULL,
    rating integer NOT NULL
);
 %   DROP TABLE public.event_enrollments;
       public         heap    postgres    false            �            1259    16407    event_enrollments_id_events_seq    SEQUENCE     �   CREATE SEQUENCE public.event_enrollments_id_events_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.event_enrollments_id_events_seq;
       public          postgres    false    220            .           0    0    event_enrollments_id_events_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.event_enrollments_id_events_seq OWNED BY public.event_enrollments.id_events;
          public          postgres    false    218            �            1259    16406    event_enrollments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_enrollments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.event_enrollments_id_seq;
       public          postgres    false    220            /           0    0    event_enrollments_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.event_enrollments_id_seq OWNED BY public.event_enrollments.id;
          public          postgres    false    217            �            1259    16408    event_enrollments_id_user_seq    SEQUENCE     �   CREATE SEQUENCE public.event_enrollments_id_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.event_enrollments_id_user_seq;
       public          postgres    false    220            0           0    0    event_enrollments_id_user_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.event_enrollments_id_user_seq OWNED BY public.event_enrollments.id_user;
          public          postgres    false    219            �            1259    16422    event_locations    TABLE     M  CREATE TABLE public.event_locations (
    id integer NOT NULL,
    id_location integer NOT NULL,
    name character varying(100) NOT NULL,
    full_address character varying(250) NOT NULL,
    max_capacity character varying(250),
    latitude integer NOT NULL,
    longitude integer NOT NULL,
    id_creator_user integer NOT NULL
);
 #   DROP TABLE public.event_locations;
       public         heap    postgres    false            �            1259    16421 #   event_locations_id_creator_user_seq    SEQUENCE     �   CREATE SEQUENCE public.event_locations_id_creator_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.event_locations_id_creator_user_seq;
       public          postgres    false    224            1           0    0 #   event_locations_id_creator_user_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.event_locations_id_creator_user_seq OWNED BY public.event_locations.id_creator_user;
          public          postgres    false    223            �            1259    16420    event_locations_id_location_seq    SEQUENCE     �   CREATE SEQUENCE public.event_locations_id_location_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.event_locations_id_location_seq;
       public          postgres    false    224            2           0    0    event_locations_id_location_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.event_locations_id_location_seq OWNED BY public.event_locations.id_location;
          public          postgres    false    222            �            1259    16419    event_locations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_locations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.event_locations_id_seq;
       public          postgres    false    224            3           0    0    event_locations_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.event_locations_id_seq OWNED BY public.event_locations.id;
          public          postgres    false    221            �            1259    16435 
   event_tags    TABLE     y   CREATE TABLE public.event_tags (
    id integer NOT NULL,
    id_events integer NOT NULL,
    id_tag integer NOT NULL
);
    DROP TABLE public.event_tags;
       public         heap    postgres    false            �            1259    16433    event_tags_id_events_seq    SEQUENCE     �   CREATE SEQUENCE public.event_tags_id_events_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.event_tags_id_events_seq;
       public          postgres    false    228            4           0    0    event_tags_id_events_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.event_tags_id_events_seq OWNED BY public.event_tags.id_events;
          public          postgres    false    226            �            1259    16432    event_tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.event_tags_id_seq;
       public          postgres    false    228            5           0    0    event_tags_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.event_tags_id_seq OWNED BY public.event_tags.id;
          public          postgres    false    225            �            1259    16434    event_tags_id_tag_seq    SEQUENCE     �   CREATE SEQUENCE public.event_tags_id_tag_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.event_tags_id_tag_seq;
       public          postgres    false    228            6           0    0    event_tags_id_tag_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.event_tags_id_tag_seq OWNED BY public.event_tags.id_tag;
          public          postgres    false    227            �            1259    16447    events    TABLE     �  CREATE TABLE public.events (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    description character varying(250) NOT NULL,
    id_event_category integer NOT NULL,
    id_event_location integer NOT NULL,
    start_date date NOT NULL,
    duration_in_minutes integer NOT NULL,
    price integer NOT NULL,
    enabled_for_enrollment integer NOT NULL,
    max_assistance integer NOT NULL,
    id_creator_user integer NOT NULL
);
    DROP TABLE public.events;
       public         heap    postgres    false            �            1259    16446    events_id_creator_user_seq    SEQUENCE     �   CREATE SEQUENCE public.events_id_creator_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.events_id_creator_user_seq;
       public          postgres    false    233            7           0    0    events_id_creator_user_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.events_id_creator_user_seq OWNED BY public.events.id_creator_user;
          public          postgres    false    232            �            1259    16444    events_id_event_category_seq    SEQUENCE     �   CREATE SEQUENCE public.events_id_event_category_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.events_id_event_category_seq;
       public          postgres    false    233            8           0    0    events_id_event_category_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.events_id_event_category_seq OWNED BY public.events.id_event_category;
          public          postgres    false    230            �            1259    16445    events_id_event_location_seq    SEQUENCE     �   CREATE SEQUENCE public.events_id_event_location_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.events_id_event_location_seq;
       public          postgres    false    233            9           0    0    events_id_event_location_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.events_id_event_location_seq OWNED BY public.events.id_event_location;
          public          postgres    false    231            �            1259    16443    events_id_seq    SEQUENCE     �   CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public          postgres    false    233            :           0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
          public          postgres    false    229            �            1259    16458 	   locations    TABLE     �   CREATE TABLE public.locations (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    id_province integer NOT NULL,
    latitude integer NOT NULL,
    longitude integer NOT NULL
);
    DROP TABLE public.locations;
       public         heap    postgres    false            �            1259    16457    locations_id_province_seq    SEQUENCE     �   CREATE SEQUENCE public.locations_id_province_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.locations_id_province_seq;
       public          postgres    false    236            ;           0    0    locations_id_province_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.locations_id_province_seq OWNED BY public.locations.id_province;
          public          postgres    false    235            �            1259    16456    locations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.locations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.locations_id_seq;
       public          postgres    false    236            <           0    0    locations_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.locations_id_seq OWNED BY public.locations.id;
          public          postgres    false    234            �            1259    16466 	   provinces    TABLE     �   CREATE TABLE public.provinces (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    full_name character varying(250) NOT NULL,
    latitude integer NOT NULL,
    longitude integer NOT NULL,
    display_order integer NOT NULL
);
    DROP TABLE public.provinces;
       public         heap    postgres    false            �            1259    16465    provinces_id_seq    SEQUENCE     �   CREATE SEQUENCE public.provinces_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.provinces_id_seq;
       public          postgres    false    238            =           0    0    provinces_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.provinces_id_seq OWNED BY public.provinces.id;
          public          postgres    false    237            �            1259    16473    tags    TABLE     _   CREATE TABLE public.tags (
    id integer NOT NULL,
    name character varying(30) NOT NULL
);
    DROP TABLE public.tags;
       public         heap    postgres    false            �            1259    16472    tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.tags_id_seq;
       public          postgres    false    240            >           0    0    tags_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;
          public          postgres    false    239            �            1259    16480    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(250) NOT NULL,
    username character varying(250) NOT NULL,
    password character varying(250) NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16479    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    242            ?           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    241            L           2604    16403    event_categories id    DEFAULT     z   ALTER TABLE ONLY public.event_categories ALTER COLUMN id SET DEFAULT nextval('public.event_categories_id_seq'::regclass);
 B   ALTER TABLE public.event_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            M           2604    16412    event_enrollments id    DEFAULT     |   ALTER TABLE ONLY public.event_enrollments ALTER COLUMN id SET DEFAULT nextval('public.event_enrollments_id_seq'::regclass);
 C   ALTER TABLE public.event_enrollments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    217    220            N           2604    16413    event_enrollments id_events    DEFAULT     �   ALTER TABLE ONLY public.event_enrollments ALTER COLUMN id_events SET DEFAULT nextval('public.event_enrollments_id_events_seq'::regclass);
 J   ALTER TABLE public.event_enrollments ALTER COLUMN id_events DROP DEFAULT;
       public          postgres    false    218    220    220            O           2604    16414    event_enrollments id_user    DEFAULT     �   ALTER TABLE ONLY public.event_enrollments ALTER COLUMN id_user SET DEFAULT nextval('public.event_enrollments_id_user_seq'::regclass);
 H   ALTER TABLE public.event_enrollments ALTER COLUMN id_user DROP DEFAULT;
       public          postgres    false    219    220    220            P           2604    16425    event_locations id    DEFAULT     x   ALTER TABLE ONLY public.event_locations ALTER COLUMN id SET DEFAULT nextval('public.event_locations_id_seq'::regclass);
 A   ALTER TABLE public.event_locations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    221    224            Q           2604    16426    event_locations id_location    DEFAULT     �   ALTER TABLE ONLY public.event_locations ALTER COLUMN id_location SET DEFAULT nextval('public.event_locations_id_location_seq'::regclass);
 J   ALTER TABLE public.event_locations ALTER COLUMN id_location DROP DEFAULT;
       public          postgres    false    222    224    224            R           2604    16427    event_locations id_creator_user    DEFAULT     �   ALTER TABLE ONLY public.event_locations ALTER COLUMN id_creator_user SET DEFAULT nextval('public.event_locations_id_creator_user_seq'::regclass);
 N   ALTER TABLE public.event_locations ALTER COLUMN id_creator_user DROP DEFAULT;
       public          postgres    false    223    224    224            S           2604    16438    event_tags id    DEFAULT     n   ALTER TABLE ONLY public.event_tags ALTER COLUMN id SET DEFAULT nextval('public.event_tags_id_seq'::regclass);
 <   ALTER TABLE public.event_tags ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    228    228            T           2604    16439    event_tags id_events    DEFAULT     |   ALTER TABLE ONLY public.event_tags ALTER COLUMN id_events SET DEFAULT nextval('public.event_tags_id_events_seq'::regclass);
 C   ALTER TABLE public.event_tags ALTER COLUMN id_events DROP DEFAULT;
       public          postgres    false    226    228    228            U           2604    16440    event_tags id_tag    DEFAULT     v   ALTER TABLE ONLY public.event_tags ALTER COLUMN id_tag SET DEFAULT nextval('public.event_tags_id_tag_seq'::regclass);
 @   ALTER TABLE public.event_tags ALTER COLUMN id_tag DROP DEFAULT;
       public          postgres    false    227    228    228            V           2604    16450 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    233    233            W           2604    16451    events id_event_category    DEFAULT     �   ALTER TABLE ONLY public.events ALTER COLUMN id_event_category SET DEFAULT nextval('public.events_id_event_category_seq'::regclass);
 G   ALTER TABLE public.events ALTER COLUMN id_event_category DROP DEFAULT;
       public          postgres    false    233    230    233            X           2604    16452    events id_event_location    DEFAULT     �   ALTER TABLE ONLY public.events ALTER COLUMN id_event_location SET DEFAULT nextval('public.events_id_event_location_seq'::regclass);
 G   ALTER TABLE public.events ALTER COLUMN id_event_location DROP DEFAULT;
       public          postgres    false    233    231    233            Y           2604    16453    events id_creator_user    DEFAULT     �   ALTER TABLE ONLY public.events ALTER COLUMN id_creator_user SET DEFAULT nextval('public.events_id_creator_user_seq'::regclass);
 E   ALTER TABLE public.events ALTER COLUMN id_creator_user DROP DEFAULT;
       public          postgres    false    232    233    233            Z           2604    16461    locations id    DEFAULT     l   ALTER TABLE ONLY public.locations ALTER COLUMN id SET DEFAULT nextval('public.locations_id_seq'::regclass);
 ;   ALTER TABLE public.locations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    236    236            [           2604    16462    locations id_province    DEFAULT     ~   ALTER TABLE ONLY public.locations ALTER COLUMN id_province SET DEFAULT nextval('public.locations_id_province_seq'::regclass);
 D   ALTER TABLE public.locations ALTER COLUMN id_province DROP DEFAULT;
       public          postgres    false    236    235    236            \           2604    16469    provinces id    DEFAULT     l   ALTER TABLE ONLY public.provinces ALTER COLUMN id SET DEFAULT nextval('public.provinces_id_seq'::regclass);
 ;   ALTER TABLE public.provinces ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            ]           2604    16476    tags id    DEFAULT     b   ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);
 6   ALTER TABLE public.tags ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            ^           2604    16483    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242                      0    16400    event_categories 
   TABLE DATA           C   COPY public.event_categories (id, name, display_order) FROM stdin;
    public          postgres    false    216   ��                 0    16409    event_enrollments 
   TABLE DATA           �   COPY public.event_enrollments (id, id_events, id_user, description, registration_date_time, attended, observations, rating) FROM stdin;
    public          postgres    false    220   ��                 0    16422    event_locations 
   TABLE DATA           �   COPY public.event_locations (id, id_location, name, full_address, max_capacity, latitude, longitude, id_creator_user) FROM stdin;
    public          postgres    false    224   ύ                 0    16435 
   event_tags 
   TABLE DATA           ;   COPY public.event_tags (id, id_events, id_tag) FROM stdin;
    public          postgres    false    228   �                 0    16447    events 
   TABLE DATA           �   COPY public.events (id, name, description, id_event_category, id_event_location, start_date, duration_in_minutes, price, enabled_for_enrollment, max_assistance, id_creator_user) FROM stdin;
    public          postgres    false    233   	�                  0    16458 	   locations 
   TABLE DATA           O   COPY public.locations (id, name, id_province, latitude, longitude) FROM stdin;
    public          postgres    false    236   &�       "          0    16466 	   provinces 
   TABLE DATA           \   COPY public.provinces (id, name, full_name, latitude, longitude, display_order) FROM stdin;
    public          postgres    false    238   C�       $          0    16473    tags 
   TABLE DATA           (   COPY public.tags (id, name) FROM stdin;
    public          postgres    false    240   `�       &          0    16480    users 
   TABLE DATA           N   COPY public.users (id, first_name, last_name, username, password) FROM stdin;
    public          postgres    false    242   }�       @           0    0    event_categories_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.event_categories_id_seq', 1, false);
          public          postgres    false    215            A           0    0    event_enrollments_id_events_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.event_enrollments_id_events_seq', 1, false);
          public          postgres    false    218            B           0    0    event_enrollments_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.event_enrollments_id_seq', 1, false);
          public          postgres    false    217            C           0    0    event_enrollments_id_user_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.event_enrollments_id_user_seq', 1, false);
          public          postgres    false    219            D           0    0 #   event_locations_id_creator_user_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.event_locations_id_creator_user_seq', 1, false);
          public          postgres    false    223            E           0    0    event_locations_id_location_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.event_locations_id_location_seq', 1, false);
          public          postgres    false    222            F           0    0    event_locations_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.event_locations_id_seq', 1, false);
          public          postgres    false    221            G           0    0    event_tags_id_events_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.event_tags_id_events_seq', 1, false);
          public          postgres    false    226            H           0    0    event_tags_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.event_tags_id_seq', 1, false);
          public          postgres    false    225            I           0    0    event_tags_id_tag_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.event_tags_id_tag_seq', 1, false);
          public          postgres    false    227            J           0    0    events_id_creator_user_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.events_id_creator_user_seq', 1, false);
          public          postgres    false    232            K           0    0    events_id_event_category_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.events_id_event_category_seq', 1, false);
          public          postgres    false    230            L           0    0    events_id_event_location_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.events_id_event_location_seq', 1, false);
          public          postgres    false    231            M           0    0    events_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.events_id_seq', 1, false);
          public          postgres    false    229            N           0    0    locations_id_province_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.locations_id_province_seq', 1, false);
          public          postgres    false    235            O           0    0    locations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.locations_id_seq', 1, false);
          public          postgres    false    234            P           0    0    provinces_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.provinces_id_seq', 1, false);
          public          postgres    false    237            Q           0    0    tags_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.tags_id_seq', 1, false);
          public          postgres    false    239            R           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    241            `           2606    16405 &   event_categories event_categories_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.event_categories
    ADD CONSTRAINT event_categories_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.event_categories DROP CONSTRAINT event_categories_pkey;
       public            postgres    false    216            b           2606    16418 (   event_enrollments event_enrollments_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.event_enrollments
    ADD CONSTRAINT event_enrollments_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.event_enrollments DROP CONSTRAINT event_enrollments_pkey;
       public            postgres    false    220            d           2606    16431 $   event_locations event_locations_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.event_locations
    ADD CONSTRAINT event_locations_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.event_locations DROP CONSTRAINT event_locations_pkey;
       public            postgres    false    224            f           2606    16442    event_tags event_tags_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.event_tags
    ADD CONSTRAINT event_tags_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.event_tags DROP CONSTRAINT event_tags_pkey;
       public            postgres    false    228            h           2606    16455    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public            postgres    false    233            j           2606    16464    locations locations_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.locations DROP CONSTRAINT locations_pkey;
       public            postgres    false    236            l           2606    16471    provinces provinces_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.provinces
    ADD CONSTRAINT provinces_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.provinces DROP CONSTRAINT provinces_pkey;
       public            postgres    false    238            n           2606    16478    tags tags_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.tags DROP CONSTRAINT tags_pkey;
       public            postgres    false    240            p           2606    16487    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    242            q           2606    16488 0   event_enrollments event_enrollments_id_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_enrollments
    ADD CONSTRAINT event_enrollments_id_user_fkey FOREIGN KEY (id_user) REFERENCES public.users(id) NOT VALID;
 Z   ALTER TABLE ONLY public.event_enrollments DROP CONSTRAINT event_enrollments_id_user_fkey;
       public          postgres    false    220    242    4720            r           2606    16493 1   event_enrollments event_enrollments_id_user_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_enrollments
    ADD CONSTRAINT event_enrollments_id_user_fkey1 FOREIGN KEY (id_user) REFERENCES public.users(id) NOT VALID;
 [   ALTER TABLE ONLY public.event_enrollments DROP CONSTRAINT event_enrollments_id_user_fkey1;
       public          postgres    false    220    242    4720            s           2606    16498 0   event_locations event_locations_id_location_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_locations
    ADD CONSTRAINT event_locations_id_location_fkey FOREIGN KEY (id_location) REFERENCES public.locations(id) NOT VALID;
 Z   ALTER TABLE ONLY public.event_locations DROP CONSTRAINT event_locations_id_location_fkey;
       public          postgres    false    224    236    4714            t           2606    16503 $   event_tags event_tags_id_events_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_tags
    ADD CONSTRAINT event_tags_id_events_fkey FOREIGN KEY (id_events) REFERENCES public.events(id) NOT VALID;
 N   ALTER TABLE ONLY public.event_tags DROP CONSTRAINT event_tags_id_events_fkey;
       public          postgres    false    233    4712    228            u           2606    16508 !   event_tags event_tags_id_tag_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_tags
    ADD CONSTRAINT event_tags_id_tag_fkey FOREIGN KEY (id_tag) REFERENCES public.event_tags(id) NOT VALID;
 K   ALTER TABLE ONLY public.event_tags DROP CONSTRAINT event_tags_id_tag_fkey;
       public          postgres    false    4710    228    228            v           2606    16513 "   event_tags event_tags_id_tag_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_tags
    ADD CONSTRAINT event_tags_id_tag_fkey1 FOREIGN KEY (id_tag) REFERENCES public.tags(id) NOT VALID;
 L   ALTER TABLE ONLY public.event_tags DROP CONSTRAINT event_tags_id_tag_fkey1;
       public          postgres    false    4718    240    228            w           2606    16518 )   events events_enabled_for_enrollment_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_enabled_for_enrollment_fkey FOREIGN KEY (enabled_for_enrollment) REFERENCES public.event_enrollments(id) NOT VALID;
 S   ALTER TABLE ONLY public.events DROP CONSTRAINT events_enabled_for_enrollment_fkey;
       public          postgres    false    233    220    4706            x           2606    16528 "   events events_id_creator_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_id_creator_user_fkey FOREIGN KEY (id_creator_user) REFERENCES public.users(id) NOT VALID;
 L   ALTER TABLE ONLY public.events DROP CONSTRAINT events_id_creator_user_fkey;
       public          postgres    false    233    242    4720            y           2606    16523 $   events events_id_event_category_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_id_event_category_fkey FOREIGN KEY (id_event_category) REFERENCES public.event_categories(id) NOT VALID;
 N   ALTER TABLE ONLY public.events DROP CONSTRAINT events_id_event_category_fkey;
       public          postgres    false    4704    233    216            z           2606    16533 $   events events_id_event_location_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_id_event_location_fkey FOREIGN KEY (id_event_location) REFERENCES public.event_locations(id) NOT VALID;
 N   ALTER TABLE ONLY public.events DROP CONSTRAINT events_id_event_location_fkey;
       public          postgres    false    4708    233    224            {           2606    16538 $   locations locations_id_province_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_id_province_fkey FOREIGN KEY (id_province) REFERENCES public.provinces(id) NOT VALID;
 N   ALTER TABLE ONLY public.locations DROP CONSTRAINT locations_id_province_fkey;
       public          postgres    false    4716    236    238                  x������ � �            x������ � �            x������ � �            x������ � �            x������ � �             x������ � �      "      x������ � �      $      x������ � �      &      x������ � �     