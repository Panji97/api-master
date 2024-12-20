PGDMP  $                
    |            emr     16.5 (Ubuntu 16.5-1.pgdg22.04+1)     17.1 (Ubuntu 17.1-1.pgdg22.04+1) Y    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16388    emr    DATABASE     o   CREATE DATABASE emr WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE emr;
                     postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4            �            1259    16436 
   ms_mparent    TABLE     3  CREATE TABLE public.ms_mparent (
    id integer NOT NULL,
    label character varying(255) NOT NULL,
    icon character varying(255),
    to_path character varying(255),
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone,
    "deletedAt" timestamp without time zone
);
    DROP TABLE public.ms_mparent;
       public         heap r       postgres    false    4            �            1259    16435    menus_header_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menus_header_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.menus_header_id_seq;
       public               postgres    false    218    4            �           0    0    menus_header_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.menus_header_id_seq OWNED BY public.ms_mparent.id;
          public               postgres    false    217            �            1259    16445    ms_mmain    TABLE     �  CREATE TABLE public.ms_mmain (
    id integer NOT NULL,
    header_id integer,
    label character varying(255),
    icon character varying(255),
    to_path character varying(255),
    url character varying(255),
    target character varying(50),
    badge character varying(50),
    class character varying(50),
    preventexact boolean,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone,
    "deletedAt" timestamp without time zone
);
    DROP TABLE public.ms_mmain;
       public         heap r       postgres    false    4            �            1259    16444    menus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.menus_id_seq;
       public               postgres    false    4    220            �           0    0    menus_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.menus_id_seq OWNED BY public.ms_mmain.id;
          public               postgres    false    219            �            1259    16459 	   ms_mchild    TABLE     �  CREATE TABLE public.ms_mchild (
    id integer NOT NULL,
    menu_id integer,
    label character varying(255),
    icon character varying(255),
    to_path character varying(255),
    url character varying(255),
    target character varying(50),
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone,
    "deletedAt" timestamp without time zone
);
    DROP TABLE public.ms_mchild;
       public         heap r       postgres    false    4            �            1259    16458    menus_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menus_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.menus_item_id_seq;
       public               postgres    false    4    222            �           0    0    menus_item_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.menus_item_id_seq OWNED BY public.ms_mchild.id;
          public               postgres    false    221            �            1259    16668    ms_roles    TABLE     �   CREATE TABLE public.ms_roles (
    id integer NOT NULL,
    name character varying NOT NULL,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone,
    "deletedAt" timestamp without time zone
);
    DROP TABLE public.ms_roles;
       public         heap r       postgres    false    4            �            1259    16667    ms_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ms_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.ms_roles_id_seq;
       public               postgres    false    4    225            �           0    0    ms_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.ms_roles_id_seq OWNED BY public.ms_roles.id;
          public               postgres    false    224            �            1259    16396    resetpassword    TABLE     *  CREATE TABLE public.resetpassword (
    tokenresetpassword text NOT NULL,
    email character varying,
    tokenexpirytime timestamp without time zone NOT NULL,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone,
    "deletedAt" timestamp without time zone
);
 !   DROP TABLE public.resetpassword;
       public         heap r       postgres    false    4            �            1259    16751    roles_has_mchild    TABLE     �  CREATE TABLE public.roles_has_mchild (
    id integer NOT NULL,
    role_id integer NOT NULL,
    mparent_id integer NOT NULL,
    mmain_id integer NOT NULL,
    role_parent_id integer NOT NULL,
    mchild_id integer NOT NULL,
    role_main_id integer NOT NULL,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone,
    "deletedAt" timestamp without time zone
);
 $   DROP TABLE public.roles_has_mchild;
       public         heap r       postgres    false    4            �            1259    16750    roles_has_mchild_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_has_mchild_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.roles_has_mchild_id_seq;
       public               postgres    false    231    4            �           0    0    roles_has_mchild_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.roles_has_mchild_id_seq OWNED BY public.roles_has_mchild.id;
          public               postgres    false    230            �            1259    16739    roles_has_mmain    TABLE     K  CREATE TABLE public.roles_has_mmain (
    id integer NOT NULL,
    role_id integer NOT NULL,
    mparent_id integer NOT NULL,
    mmain_id integer NOT NULL,
    role_parent_id integer NOT NULL,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone,
    "deletedAt" timestamp without time zone
);
 #   DROP TABLE public.roles_has_mmain;
       public         heap r       postgres    false    4            �            1259    16738    roles_has_mmain_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_has_mmain_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.roles_has_mmain_id_seq;
       public               postgres    false    229    4            �           0    0    roles_has_mmain_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.roles_has_mmain_id_seq OWNED BY public.roles_has_mmain.id;
          public               postgres    false    228            �            1259    16679    roles_has_mparent    TABLE     	  CREATE TABLE public.roles_has_mparent (
    id integer NOT NULL,
    role_id integer NOT NULL,
    mparent_id integer NOT NULL,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone,
    "deletedAt" timestamp without time zone
);
 %   DROP TABLE public.roles_has_mparent;
       public         heap r       postgres    false    4            �            1259    16678    roles_has_mparent_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_has_mparent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.roles_has_mparent_id_seq;
       public               postgres    false    227    4            �           0    0    roles_has_mparent_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.roles_has_mparent_id_seq OWNED BY public.roles_has_mparent.id;
          public               postgres    false    226            �            1259    16818    user_has_roles    TABLE       CREATE TABLE public.user_has_roles (
    id integer NOT NULL,
    user_id integer NOT NULL,
    role_id integer NOT NULL,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone,
    "deletedAt" timestamp without time zone
);
 "   DROP TABLE public.user_has_roles;
       public         heap r       postgres    false    4            �            1259    16817    user_has_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_has_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.user_has_roles_id_seq;
       public               postgres    false    233    4            �           0    0    user_has_roles_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.user_has_roles_id_seq OWNED BY public.user_has_roles.id;
          public               postgres    false    232            �            1259    16389    users    TABLE     w  CREATE TABLE public.users (
    email character varying NOT NULL,
    username character varying,
    password character varying NOT NULL,
    token text,
    rememberme boolean,
    verify boolean DEFAULT false,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone,
    "deletedAt" timestamp without time zone,
    id integer NOT NULL
);
    DROP TABLE public.users;
       public         heap r       postgres    false    4            �            1259    16497    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public               postgres    false    4    215            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               postgres    false    223            �           2604    16462    ms_mchild id    DEFAULT     m   ALTER TABLE ONLY public.ms_mchild ALTER COLUMN id SET DEFAULT nextval('public.menus_item_id_seq'::regclass);
 ;   ALTER TABLE public.ms_mchild ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    222    221    222            �           2604    16448    ms_mmain id    DEFAULT     g   ALTER TABLE ONLY public.ms_mmain ALTER COLUMN id SET DEFAULT nextval('public.menus_id_seq'::regclass);
 :   ALTER TABLE public.ms_mmain ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    220    219    220            �           2604    16439    ms_mparent id    DEFAULT     p   ALTER TABLE ONLY public.ms_mparent ALTER COLUMN id SET DEFAULT nextval('public.menus_header_id_seq'::regclass);
 <   ALTER TABLE public.ms_mparent ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            �           2604    16671    ms_roles id    DEFAULT     j   ALTER TABLE ONLY public.ms_roles ALTER COLUMN id SET DEFAULT nextval('public.ms_roles_id_seq'::regclass);
 :   ALTER TABLE public.ms_roles ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    225    224    225            �           2604    16754    roles_has_mchild id    DEFAULT     z   ALTER TABLE ONLY public.roles_has_mchild ALTER COLUMN id SET DEFAULT nextval('public.roles_has_mchild_id_seq'::regclass);
 B   ALTER TABLE public.roles_has_mchild ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    231    230    231            �           2604    16742    roles_has_mmain id    DEFAULT     x   ALTER TABLE ONLY public.roles_has_mmain ALTER COLUMN id SET DEFAULT nextval('public.roles_has_mmain_id_seq'::regclass);
 A   ALTER TABLE public.roles_has_mmain ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    229    228    229            �           2604    16682    roles_has_mparent id    DEFAULT     |   ALTER TABLE ONLY public.roles_has_mparent ALTER COLUMN id SET DEFAULT nextval('public.roles_has_mparent_id_seq'::regclass);
 C   ALTER TABLE public.roles_has_mparent ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    226    227    227            �           2604    16821    user_has_roles id    DEFAULT     v   ALTER TABLE ONLY public.user_has_roles ALTER COLUMN id SET DEFAULT nextval('public.user_has_roles_id_seq'::regclass);
 @   ALTER TABLE public.user_has_roles ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    233    232    233            �           2604    16498    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    223    215            �          0    16459 	   ms_mchild 
   TABLE DATA           z   COPY public.ms_mchild (id, menu_id, label, icon, to_path, url, target, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public               postgres    false    222   �v       �          0    16445    ms_mmain 
   TABLE DATA           �   COPY public.ms_mmain (id, header_id, label, icon, to_path, url, target, badge, class, preventexact, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public               postgres    false    220   :w       �          0    16436 
   ms_mparent 
   TABLE DATA           e   COPY public.ms_mparent (id, label, icon, to_path, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public               postgres    false    218   �w       �          0    16668    ms_roles 
   TABLE DATA           S   COPY public.ms_roles (id, name, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public               postgres    false    225   x       �          0    16396    resetpassword 
   TABLE DATA           z   COPY public.resetpassword (tokenresetpassword, email, tokenexpirytime, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public               postgres    false    216   rx       �          0    16751    roles_has_mchild 
   TABLE DATA           �   COPY public.roles_has_mchild (id, role_id, mparent_id, mmain_id, role_parent_id, mchild_id, role_main_id, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public               postgres    false    231   .y       �          0    16739    roles_has_mmain 
   TABLE DATA           �   COPY public.roles_has_mmain (id, role_id, mparent_id, mmain_id, role_parent_id, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public               postgres    false    229   |y       �          0    16679    roles_has_mparent 
   TABLE DATA           k   COPY public.roles_has_mparent (id, role_id, mparent_id, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public               postgres    false    227   �y       �          0    16818    user_has_roles 
   TABLE DATA           e   COPY public.user_has_roles (id, user_id, role_id, "createdAt", "updatedAt", "deletedAt") FROM stdin;
    public               postgres    false    233   Vz                 0    16389    users 
   TABLE DATA           �   COPY public.users (email, username, password, token, rememberme, verify, "createdAt", "updatedAt", "deletedAt", id) FROM stdin;
    public               postgres    false    215   d{       �           0    0    menus_header_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.menus_header_id_seq', 18, true);
          public               postgres    false    217            �           0    0    menus_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.menus_id_seq', 39, true);
          public               postgres    false    219            �           0    0    menus_item_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.menus_item_id_seq', 9, true);
          public               postgres    false    221            �           0    0    ms_roles_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.ms_roles_id_seq', 113, true);
          public               postgres    false    224            �           0    0    roles_has_mchild_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.roles_has_mchild_id_seq', 104, true);
          public               postgres    false    230            �           0    0    roles_has_mmain_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.roles_has_mmain_id_seq', 862, true);
          public               postgres    false    228            �           0    0    roles_has_mparent_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.roles_has_mparent_id_seq', 271, true);
          public               postgres    false    226            �           0    0    user_has_roles_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.user_has_roles_id_seq', 130, true);
          public               postgres    false    232            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 41, true);
          public               postgres    false    223            �           2606    16443    ms_mparent menus_header_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.ms_mparent
    ADD CONSTRAINT menus_header_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.ms_mparent DROP CONSTRAINT menus_header_pkey;
       public                 postgres    false    218            �           2606    16466    ms_mchild menus_item_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.ms_mchild
    ADD CONSTRAINT menus_item_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.ms_mchild DROP CONSTRAINT menus_item_pkey;
       public                 postgres    false    222            �           2606    16452    ms_mmain menus_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.ms_mmain
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.ms_mmain DROP CONSTRAINT menus_pkey;
       public                 postgres    false    220            �           2606    16675    ms_roles ms_roles_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.ms_roles
    ADD CONSTRAINT ms_roles_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ms_roles DROP CONSTRAINT ms_roles_pk;
       public                 postgres    false    225            �           2606    16677    ms_roles ms_roles_unique 
   CONSTRAINT     S   ALTER TABLE ONLY public.ms_roles
    ADD CONSTRAINT ms_roles_unique UNIQUE (name);
 B   ALTER TABLE ONLY public.ms_roles DROP CONSTRAINT ms_roles_unique;
       public                 postgres    false    225            �           2606    16402    resetpassword resetpassword_pk 
   CONSTRAINT     l   ALTER TABLE ONLY public.resetpassword
    ADD CONSTRAINT resetpassword_pk PRIMARY KEY (tokenresetpassword);
 H   ALTER TABLE ONLY public.resetpassword DROP CONSTRAINT resetpassword_pk;
       public                 postgres    false    216            �           2606    16684 &   roles_has_mparent roles_has_mparent_pk 
   CONSTRAINT     d   ALTER TABLE ONLY public.roles_has_mparent
    ADD CONSTRAINT roles_has_mparent_pk PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.roles_has_mparent DROP CONSTRAINT roles_has_mparent_pk;
       public                 postgres    false    227            �           2606    16744 &   roles_has_mmain roles_has_mparent_pk_1 
   CONSTRAINT     d   ALTER TABLE ONLY public.roles_has_mmain
    ADD CONSTRAINT roles_has_mparent_pk_1 PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.roles_has_mmain DROP CONSTRAINT roles_has_mparent_pk_1;
       public                 postgres    false    229            �           2606    16756 )   roles_has_mchild roles_has_mparent_pk_1_1 
   CONSTRAINT     g   ALTER TABLE ONLY public.roles_has_mchild
    ADD CONSTRAINT roles_has_mparent_pk_1_1 PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.roles_has_mchild DROP CONSTRAINT roles_has_mparent_pk_1_1;
       public                 postgres    false    231            �           2606    16879 $   user_has_roles user_has_roles_unique 
   CONSTRAINT     b   ALTER TABLE ONLY public.user_has_roles
    ADD CONSTRAINT user_has_roles_unique UNIQUE (user_id);
 N   ALTER TABLE ONLY public.user_has_roles DROP CONSTRAINT user_has_roles_unique;
       public                 postgres    false    233            �           2606    16505    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    215            �           2606    16453    ms_mmain menus_header_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ms_mmain
    ADD CONSTRAINT menus_header_id_fkey FOREIGN KEY (header_id) REFERENCES public.ms_mparent(id);
 G   ALTER TABLE ONLY public.ms_mmain DROP CONSTRAINT menus_header_id_fkey;
       public               postgres    false    218    220    3279            �           2606    16467 !   ms_mchild menus_item_menu_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ms_mchild
    ADD CONSTRAINT menus_item_menu_id_fkey FOREIGN KEY (menu_id) REFERENCES public.ms_mmain(id);
 K   ALTER TABLE ONLY public.ms_mchild DROP CONSTRAINT menus_item_menu_id_fkey;
       public               postgres    false    3281    222    220            �           2606    16807 .   roles_has_mchild roles_has_mchild_ms_mchild_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.roles_has_mchild
    ADD CONSTRAINT roles_has_mchild_ms_mchild_fk FOREIGN KEY (mchild_id) REFERENCES public.ms_mchild(id) ON UPDATE RESTRICT ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.roles_has_mchild DROP CONSTRAINT roles_has_mchild_ms_mchild_fk;
       public               postgres    false    231    222    3283            �           2606    16797 -   roles_has_mchild roles_has_mchild_ms_mmain_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.roles_has_mchild
    ADD CONSTRAINT roles_has_mchild_ms_mmain_fk FOREIGN KEY (mmain_id) REFERENCES public.ms_mmain(id) ON UPDATE RESTRICT ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.roles_has_mchild DROP CONSTRAINT roles_has_mchild_ms_mmain_fk;
       public               postgres    false    231    3281    220            �           2606    16792 /   roles_has_mchild roles_has_mchild_ms_mparent_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.roles_has_mchild
    ADD CONSTRAINT roles_has_mchild_ms_mparent_fk FOREIGN KEY (mparent_id) REFERENCES public.ms_mparent(id) ON UPDATE RESTRICT ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.roles_has_mchild DROP CONSTRAINT roles_has_mchild_ms_mparent_fk;
       public               postgres    false    231    3279    218            �           2606    16787 -   roles_has_mchild roles_has_mchild_ms_roles_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.roles_has_mchild
    ADD CONSTRAINT roles_has_mchild_ms_roles_fk FOREIGN KEY (role_id) REFERENCES public.ms_roles(id) ON UPDATE RESTRICT ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.roles_has_mchild DROP CONSTRAINT roles_has_mchild_ms_roles_fk;
       public               postgres    false    225    231    3285            �           2606    16812 4   roles_has_mchild roles_has_mchild_roles_has_mmain_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.roles_has_mchild
    ADD CONSTRAINT roles_has_mchild_roles_has_mmain_fk FOREIGN KEY (role_main_id) REFERENCES public.roles_has_mmain(id) ON UPDATE RESTRICT ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.roles_has_mchild DROP CONSTRAINT roles_has_mchild_roles_has_mmain_fk;
       public               postgres    false    231    229    3291            �           2606    16802 6   roles_has_mchild roles_has_mchild_roles_has_mparent_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.roles_has_mchild
    ADD CONSTRAINT roles_has_mchild_roles_has_mparent_fk FOREIGN KEY (role_parent_id) REFERENCES public.roles_has_mparent(id) ON UPDATE RESTRICT ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.roles_has_mchild DROP CONSTRAINT roles_has_mchild_roles_has_mparent_fk;
       public               postgres    false    3289    227    231            �           2606    16880 +   roles_has_mmain roles_has_mmain_ms_mmain_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.roles_has_mmain
    ADD CONSTRAINT roles_has_mmain_ms_mmain_fk FOREIGN KEY (mmain_id) REFERENCES public.ms_mmain(id) ON UPDATE RESTRICT ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.roles_has_mmain DROP CONSTRAINT roles_has_mmain_ms_mmain_fk;
       public               postgres    false    220    3281    229            �           2606    16885 -   roles_has_mmain roles_has_mmain_ms_mparent_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.roles_has_mmain
    ADD CONSTRAINT roles_has_mmain_ms_mparent_fk FOREIGN KEY (mparent_id) REFERENCES public.ms_mparent(id) ON UPDATE RESTRICT ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.roles_has_mmain DROP CONSTRAINT roles_has_mmain_ms_mparent_fk;
       public               postgres    false    229    218    3279            �           2606    16772 +   roles_has_mmain roles_has_mmain_ms_roles_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.roles_has_mmain
    ADD CONSTRAINT roles_has_mmain_ms_roles_fk FOREIGN KEY (role_id) REFERENCES public.ms_roles(id) ON UPDATE RESTRICT ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.roles_has_mmain DROP CONSTRAINT roles_has_mmain_ms_roles_fk;
       public               postgres    false    229    3285    225            �           2606    16767 4   roles_has_mmain roles_has_mmain_roles_has_mparent_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.roles_has_mmain
    ADD CONSTRAINT roles_has_mmain_roles_has_mparent_fk FOREIGN KEY (role_parent_id) REFERENCES public.roles_has_mparent(id) ON UPDATE RESTRICT ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.roles_has_mmain DROP CONSTRAINT roles_has_mmain_roles_has_mparent_fk;
       public               postgres    false    227    3289    229            �           2606    16762 1   roles_has_mparent roles_has_mparent_ms_mparent_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.roles_has_mparent
    ADD CONSTRAINT roles_has_mparent_ms_mparent_fk FOREIGN KEY (mparent_id) REFERENCES public.ms_mparent(id) ON UPDATE RESTRICT ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.roles_has_mparent DROP CONSTRAINT roles_has_mparent_ms_mparent_fk;
       public               postgres    false    218    3279    227            �           2606    16757 /   roles_has_mparent roles_has_mparent_ms_roles_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.roles_has_mparent
    ADD CONSTRAINT roles_has_mparent_ms_roles_fk FOREIGN KEY (role_id) REFERENCES public.ms_roles(id) ON UPDATE RESTRICT ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.roles_has_mparent DROP CONSTRAINT roles_has_mparent_ms_roles_fk;
       public               postgres    false    3285    227    225            �           2606    16890 )   user_has_roles user_has_roles_ms_roles_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_has_roles
    ADD CONSTRAINT user_has_roles_ms_roles_fk FOREIGN KEY (role_id) REFERENCES public.ms_roles(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 S   ALTER TABLE ONLY public.user_has_roles DROP CONSTRAINT user_has_roles_ms_roles_fk;
       public               postgres    false    233    3285    225            �           2606    16868 &   user_has_roles user_has_roles_users_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_has_roles
    ADD CONSTRAINT user_has_roles_users_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE RESTRICT ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.user_has_roles DROP CONSTRAINT user_has_roles_users_fk;
       public               postgres    false    3275    215    233            �   V   x���46���I-VPSH-��,.����,�T(��M+�٩����)��y��%E�%@y��Ԓ�̼�b�"�^���?d����� �!N      �   p   x�36�44�N-)��K/�,�T(��-.��������)��y��%E�%��y��0�1~X�����KbqFR~bQ
�Ȝ��lN}ܺ,A�-N-�9��ư�� �!1z\\\ Y�=�      �   G   x�34�tL����,.)J,�����!##]C]#3CK+C+#=s��1~\��������� �3      �   Q   x��4�prt����4202�54�5�P04�24�26�3�0C�[*�M�,�L,�8c��,�9C�]�kEj����� �;i      �   �   x���;ND1 ��)��Fv�O�*B�؎D��@{^��b�)FS�pRf���8�w4t��0��ڗ;�S1���L�	c������3n�o�?Z��vi��xE}:PN*���]��O�9Ah�J�=�m�@@*i'���Y�X-A�������I�����H奖R�J[q      �   >   x�u�A !��'���o�M`���9	,�^�FG��c�N�0=;��
�����D�[�      �   g   x�u�� !D�3T�h@�"���c������5W`��P��Pi�)�F�A��[����B�c�c���Ѷ�}���5D��=,c�5�z��2fF�>�2T      �   S   x�u��� Ek�����p'p�9bl���~Ԍ�&8�h͐��`үV���`mB��E��ºx�K����g��L���<3?ë"�      �   �   x�u��q�0E�5T�0���HPXD�H���)�j������Vy�|)�y�p_�쟟C��Nk|-jam��U�ě��[�K{�q�r�I.t��I��)����iT��&���5<ʞX����D�tZ��F�/<^��l���V�;y{��Ͳ'y��}B�<F�7�qǶ��y�ʞ���G�������z��o��'A�v.Z��'^}�S��s?�y=ǿ+�B�ҿv��{�v���2��V         j  x���I��X��u?E-j{�Wʨ�Ȥ��
�2� *|�ƺ�V���M�#���9�����7~T��_��W$��/k_�a�7�}sxo����� ��7�PϬΑ�L�p�&+j����:�2g�}�{%	�0�SE�h����������Y(2*W8��@(:���^|�!�ܼ��x"8)�M���gU�h�H���Zǻf�n�Ro��䬾k��jKז!<Ho�
�.y�-���R쮞k_W6���E&6�nǹ�/����w��
���F ����w@}E�9s� $�~�ͯ���G#K��~���ק�O�'OW�Z
�<�茎3B�6����$e̞uc�4�������(Pk�q|�ȯ���pũ��x	�'؎d�#�nv�i��ڤ�CD]�Q(��(.���t�W_VB|!l�|EF�QA�'�����y�ڸyaT��x7�tn�S�q�C�G�XC��lLQl[nh?�1b
������dcc��}hO	������S���f>�Ƅ�(��>J��&���ʐzC��Q%�ł��SFF��޽�8��
�9
ޑ֑S	�M�a�, �(���X��w}o�ZTμu��,ӱ�����f���!�*���`~��O}���hEWtm���+J�ϥ��f�B��:oJ-��#u�W��]�lA_���Q�Wh�cB�K���M�u�k�s��ް��}��c�H��01�2�aPT"�d���nu�9U{�ϯ� ��|�?��	�v
̈́K^�ۦ����"4�|/nlL�ԁ��;��P�9_Y�M����:O,���+�$�(��r2$�4Y'�ܘo���j�{���|����N�z�C�{����M97q������Y7)��!ZW~2��p���3�E���Q?z�|c���sTR�X��2��c��HW�"O�V���jה(;}���L?� �� ��`S#���'pL8�)L�뽾s𦅘iw��N��0��l)3�ufpM֊�ݩ��-
ɺԮ�)?���A�q�����
(4����P������@�ե� r��a�\f�P_���B�O²c/���ݲb3��t��B �Y�cGD�+N�C��srR�G(�1���ܵW}w���m�0�&�M��)����:�'���<� J#��_�l�Q��鉫���]�\#��0g��2
�t'�iR����HZ�هRv�63D87yŅ�uA"4�J~PQ�T�y�[�c���������t69�M�(6|����4`3�� ~��L��� .�_�ljY������3a;���n	�'�n!��+�����ޅ�V]VIjtG�^���Z�P8�R�1o���ѯ.qu��_&�(�qq�Jg�=�a��,�*;�.�}�V��K�+9_��&��r�?�I�>d��0��D���ʨ�x�����B��?G|�?�j>�3׈8��.��i�$����]����H�[-�BZ����1��3A�q!�_	t��~�W��GC�d�����:�sDQ��rN�j�qI0\͎�Mm
���
�}��{C~��,:����V�k���E��s����W�Է��X'!c�j���I_�9�;��	|���������.�     