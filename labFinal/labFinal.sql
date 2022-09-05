PGDMP     "                    z            aero    14.5    14.5 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    27592    aero    DATABASE     O   CREATE DATABASE aero WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE aero;
                postgres    false            �            1259    27593    avion    TABLE     �   CREATE TABLE public.avion (
    id bigint NOT NULL,
    id_modelo integer NOT NULL,
    id_compania integer NOT NULL,
    capacidad integer NOT NULL,
    dia integer NOT NULL,
    mes integer NOT NULL,
    anno integer NOT NULL
);
    DROP TABLE public.avion;
       public         heap    postgres    false            �            1259    27596    avion_id_seq    SEQUENCE     u   CREATE SEQUENCE public.avion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.avion_id_seq;
       public          postgres    false    209            �           0    0    avion_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.avion_id_seq OWNED BY public.avion.id;
          public          postgres    false    210            �            1259    27597    cargo    TABLE     [   CREATE TABLE public.cargo (
    id integer NOT NULL,
    nombre character(100) NOT NULL
);
    DROP TABLE public.cargo;
       public         heap    postgres    false            �            1259    27600    cargo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cargo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.cargo_id_seq;
       public          postgres    false    211            �           0    0    cargo_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.cargo_id_seq OWNED BY public.cargo.id;
          public          postgres    false    212            �            1259    27601    clase    TABLE     c   CREATE TABLE public.clase (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);
    DROP TABLE public.clase;
       public         heap    postgres    false            �            1259    27604    clase_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clase_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.clase_id_seq;
       public          postgres    false    213            �           0    0    clase_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.clase_id_seq OWNED BY public.clase.id;
          public          postgres    false    214            �            1259    27605    cliente    TABLE     �   CREATE TABLE public.cliente (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    id_pais integer NOT NULL,
    dni character varying(100) NOT NULL
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    27608    cliente_id_seq    SEQUENCE     w   CREATE SEQUENCE public.cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.cliente_id_seq;
       public          postgres    false    215            �           0    0    cliente_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;
          public          postgres    false    216            �            1259    27609    compania    TABLE     f   CREATE TABLE public.compania (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);
    DROP TABLE public.compania;
       public         heap    postgres    false            �            1259    27612    compania_id_seq    SEQUENCE     �   CREATE SEQUENCE public.compania_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.compania_id_seq;
       public          postgres    false    217            �           0    0    compania_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.compania_id_seq OWNED BY public.compania.id;
          public          postgres    false    218            �            1259    27613    compra    TABLE     �   CREATE TABLE public.compra (
    id bigint NOT NULL,
    monto integer NOT NULL,
    id_cliente integer NOT NULL,
    id_pasaje integer NOT NULL,
    dia integer NOT NULL,
    mes integer NOT NULL,
    anno integer NOT NULL
);
    DROP TABLE public.compra;
       public         heap    postgres    false            �            1259    27616    compra_id_seq    SEQUENCE     v   CREATE SEQUENCE public.compra_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.compra_id_seq;
       public          postgres    false    219            �           0    0    compra_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.compra_id_seq OWNED BY public.compra.id;
          public          postgres    false    220            �            1259    27617    empleado    TABLE     ;  CREATE TABLE public.empleado (
    id bigint NOT NULL,
    dni character varying(100) NOT NULL,
    nombre character varying(100) NOT NULL,
    sueldo integer NOT NULL,
    id_cargo integer NOT NULL,
    id_compania integer NOT NULL,
    dia integer NOT NULL,
    mes integer NOT NULL,
    anno integer NOT NULL
);
    DROP TABLE public.empleado;
       public         heap    postgres    false            �            1259    27620    empleado_cargo    TABLE     �   CREATE TABLE public.empleado_cargo (
    id bigint NOT NULL,
    id_empleado integer NOT NULL,
    id_cargo integer NOT NULL
);
 "   DROP TABLE public.empleado_cargo;
       public         heap    postgres    false            �            1259    27623    empleado_cargo_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.empleado_cargo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.empleado_cargo_id_seq;
       public          postgres    false    222            �           0    0    empleado_cargo_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.empleado_cargo_id_seq OWNED BY public.empleado_cargo.id;
          public          postgres    false    223            �            1259    27624    empleado_id_seq    SEQUENCE     x   CREATE SEQUENCE public.empleado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.empleado_id_seq;
       public          postgres    false    221            �           0    0    empleado_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.empleado_id_seq OWNED BY public.empleado.id;
          public          postgres    false    224            �            1259    27625    modelo    TABLE     V   CREATE TABLE public.modelo (
    id integer NOT NULL,
    nombre character varying
);
    DROP TABLE public.modelo;
       public         heap    postgres    false            �            1259    27630    modelo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.modelo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.modelo_id_seq;
       public          postgres    false    225            �           0    0    modelo_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.modelo_id_seq OWNED BY public.modelo.id;
          public          postgres    false    226            �            1259    27647    vuelo    TABLE     �   CREATE TABLE public.vuelo (
    id bigint NOT NULL,
    id_origen integer NOT NULL,
    id_destino integer NOT NULL,
    dia integer NOT NULL,
    mes integer NOT NULL,
    anno integer NOT NULL
);
    DROP TABLE public.vuelo;
       public         heap    postgres    false            �            1259    27650    vuelo_avion    TABLE     z   CREATE TABLE public.vuelo_avion (
    id bigint NOT NULL,
    id_vuelo integer NOT NULL,
    id_avion integer NOT NULL
);
    DROP TABLE public.vuelo_avion;
       public         heap    postgres    false            �            1259    27854    most_ids    VIEW     �  CREATE VIEW public.most_ids AS
 SELECT avion.id AS id_avion,
    count(vuelo_avion.id_vuelo) AS contador
   FROM public.avion,
    public.vuelo_avion,
    public.vuelo
  WHERE ((avion.id = vuelo_avion.id_avion) AND (vuelo_avion.id_vuelo = vuelo.id) AND ((vuelo.anno >= 1950) AND (vuelo.anno <= 2022)) AND ((vuelo.mes >= 1) AND (vuelo.mes <= 12)))
  GROUP BY avion.id
  ORDER BY (count(vuelo_avion.id_vuelo)) DESC;
    DROP VIEW public.most_ids;
       public          postgres    false    234    209    234    235    235    234            �            1259    27631    pago    TABLE     �   CREATE TABLE public.pago (
    id bigint NOT NULL,
    id_empleado integer NOT NULL,
    monto integer NOT NULL,
    dia integer NOT NULL,
    mes integer NOT NULL,
    anno integer NOT NULL
);
    DROP TABLE public.pago;
       public         heap    postgres    false            �            1259    27634    pago_id_seq    SEQUENCE     t   CREATE SEQUENCE public.pago_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.pago_id_seq;
       public          postgres    false    227            �           0    0    pago_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.pago_id_seq OWNED BY public.pago.id;
          public          postgres    false    228            �            1259    27635    pais    TABLE     b   CREATE TABLE public.pais (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);
    DROP TABLE public.pais;
       public         heap    postgres    false            �            1259    27638    pais_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.pais_id_seq;
       public          postgres    false    229            �           0    0    pais_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.pais_id_seq OWNED BY public.pais.id;
          public          postgres    false    230            �            1259    27639    pasaje    TABLE     c   CREATE TABLE public.pasaje (
    id bigint NOT NULL,
    id_vuelo integer,
    id_clase integer
);
    DROP TABLE public.pasaje;
       public         heap    postgres    false            �            1259    27642    pasaje_id_seq    SEQUENCE     v   CREATE SEQUENCE public.pasaje_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.pasaje_id_seq;
       public          postgres    false    231            �           0    0    pasaje_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.pasaje_id_seq OWNED BY public.pasaje.id;
          public          postgres    false    232            �            1259    27643    solo_chilenos    VIEW     �   CREATE VIEW public.solo_chilenos AS
 SELECT cliente.id
   FROM public.cliente,
    public.pais
  WHERE (((pais.nombre)::text = 'Chile'::text) AND (pais.id = cliente.id_pais));
     DROP VIEW public.solo_chilenos;
       public          postgres    false    215    229    229    215            �            1259    28183    suma_aviones    VIEW     M  CREATE VIEW public.suma_aviones AS
 SELECT compania.nombre,
    count(avion.anno) AS cantidad_annio,
    avion.anno
   FROM public.avion,
    public.compania
  WHERE ((avion.id_compania = compania.id) AND ((avion.anno >= 2012) AND (avion.anno <= 2022)))
  GROUP BY avion.anno, compania.nombre
  ORDER BY compania.nombre, avion.anno;
    DROP VIEW public.suma_aviones;
       public          postgres    false    217    209    209    217            �            1259    28255    suma_empleados    VIEW     B  CREATE VIEW public.suma_empleados AS
 SELECT compania.nombre,
    pago.anno,
    empleado.sueldo
   FROM public.compania,
    public.empleado,
    public.pago
  WHERE ((compania.id = empleado.id_compania) AND (empleado.id = pago.id_empleado) AND (pago.anno > 2011))
  ORDER BY pago.anno, compania.nombre, empleado.sueldo;
 !   DROP VIEW public.suma_empleados;
       public          postgres    false    221    227    227    221    221    217    217            �            1259    28159    suma_montos    VIEW       CREATE VIEW public.suma_montos AS
 SELECT avion.id AS avion_id,
    compania.id AS compania_id,
    compania.nombre,
    vuelo.id AS vuelo_id,
    compra.monto
   FROM public.avion,
    public.compania,
    public.pasaje,
    public.vuelo_avion,
    public.vuelo,
    public.compra
  WHERE ((avion.id_compania = compania.id) AND (vuelo_avion.id_avion = avion.id) AND (vuelo_avion.id_vuelo = pasaje.id_vuelo) AND (vuelo_avion.id_vuelo = vuelo.id) AND (compra.id_pasaje = pasaje.id))
  ORDER BY compania.nombre, compra.monto DESC;
    DROP VIEW public.suma_montos;
       public          postgres    false    217    219    219    231    234    231    209    209    235    235    217            �            1259    27653    vuelo_avion_id_seq    SEQUENCE     {   CREATE SEQUENCE public.vuelo_avion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.vuelo_avion_id_seq;
       public          postgres    false    235            �           0    0    vuelo_avion_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.vuelo_avion_id_seq OWNED BY public.vuelo_avion.id;
          public          postgres    false    236            �            1259    27654    vuelo_empleado    TABLE     �   CREATE TABLE public.vuelo_empleado (
    id bigint NOT NULL,
    id_vuelo integer NOT NULL,
    id_empleado integer NOT NULL
);
 "   DROP TABLE public.vuelo_empleado;
       public         heap    postgres    false            �            1259    27657    vuelo_empleado_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.vuelo_empleado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.vuelo_empleado_id_seq;
       public          postgres    false    237            �           0    0    vuelo_empleado_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.vuelo_empleado_id_seq OWNED BY public.vuelo_empleado.id;
          public          postgres    false    238            �            1259    27658    vuelo_id_seq    SEQUENCE     u   CREATE SEQUENCE public.vuelo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.vuelo_id_seq;
       public          postgres    false    234            �           0    0    vuelo_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.vuelo_id_seq OWNED BY public.vuelo.id;
          public          postgres    false    239            �           2604    27659    avion id    DEFAULT     d   ALTER TABLE ONLY public.avion ALTER COLUMN id SET DEFAULT nextval('public.avion_id_seq'::regclass);
 7   ALTER TABLE public.avion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            �           2604    27660    cargo id    DEFAULT     d   ALTER TABLE ONLY public.cargo ALTER COLUMN id SET DEFAULT nextval('public.cargo_id_seq'::regclass);
 7   ALTER TABLE public.cargo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            �           2604    27661    clase id    DEFAULT     d   ALTER TABLE ONLY public.clase ALTER COLUMN id SET DEFAULT nextval('public.clase_id_seq'::regclass);
 7   ALTER TABLE public.clase ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            �           2604    27662 
   cliente id    DEFAULT     h   ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);
 9   ALTER TABLE public.cliente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    27663    compania id    DEFAULT     j   ALTER TABLE ONLY public.compania ALTER COLUMN id SET DEFAULT nextval('public.compania_id_seq'::regclass);
 :   ALTER TABLE public.compania ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    27664 	   compra id    DEFAULT     f   ALTER TABLE ONLY public.compra ALTER COLUMN id SET DEFAULT nextval('public.compra_id_seq'::regclass);
 8   ALTER TABLE public.compra ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    27665    empleado id    DEFAULT     j   ALTER TABLE ONLY public.empleado ALTER COLUMN id SET DEFAULT nextval('public.empleado_id_seq'::regclass);
 :   ALTER TABLE public.empleado ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    221            �           2604    27666    empleado_cargo id    DEFAULT     v   ALTER TABLE ONLY public.empleado_cargo ALTER COLUMN id SET DEFAULT nextval('public.empleado_cargo_id_seq'::regclass);
 @   ALTER TABLE public.empleado_cargo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    27667 	   modelo id    DEFAULT     f   ALTER TABLE ONLY public.modelo ALTER COLUMN id SET DEFAULT nextval('public.modelo_id_seq'::regclass);
 8   ALTER TABLE public.modelo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            �           2604    27668    pago id    DEFAULT     b   ALTER TABLE ONLY public.pago ALTER COLUMN id SET DEFAULT nextval('public.pago_id_seq'::regclass);
 6   ALTER TABLE public.pago ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            �           2604    27669    pais id    DEFAULT     b   ALTER TABLE ONLY public.pais ALTER COLUMN id SET DEFAULT nextval('public.pais_id_seq'::regclass);
 6   ALTER TABLE public.pais ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    27670 	   pasaje id    DEFAULT     f   ALTER TABLE ONLY public.pasaje ALTER COLUMN id SET DEFAULT nextval('public.pasaje_id_seq'::regclass);
 8   ALTER TABLE public.pasaje ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            �           2604    27671    vuelo id    DEFAULT     d   ALTER TABLE ONLY public.vuelo ALTER COLUMN id SET DEFAULT nextval('public.vuelo_id_seq'::regclass);
 7   ALTER TABLE public.vuelo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    234            �           2604    27672    vuelo_avion id    DEFAULT     p   ALTER TABLE ONLY public.vuelo_avion ALTER COLUMN id SET DEFAULT nextval('public.vuelo_avion_id_seq'::regclass);
 =   ALTER TABLE public.vuelo_avion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235            �           2604    27673    vuelo_empleado id    DEFAULT     v   ALTER TABLE ONLY public.vuelo_empleado ALTER COLUMN id SET DEFAULT nextval('public.vuelo_empleado_id_seq'::regclass);
 @   ALTER TABLE public.vuelo_empleado ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237            �          0    27593    avion 
   TABLE DATA           V   COPY public.avion (id, id_modelo, id_compania, capacidad, dia, mes, anno) FROM stdin;
    public          postgres    false    209   �       �          0    27597    cargo 
   TABLE DATA           +   COPY public.cargo (id, nombre) FROM stdin;
    public          postgres    false    211   �       �          0    27601    clase 
   TABLE DATA           +   COPY public.clase (id, nombre) FROM stdin;
    public          postgres    false    213   /�       �          0    27605    cliente 
   TABLE DATA           ;   COPY public.cliente (id, nombre, id_pais, dni) FROM stdin;
    public          postgres    false    215   z�       �          0    27609    compania 
   TABLE DATA           .   COPY public.compania (id, nombre) FROM stdin;
    public          postgres    false    217   �       �          0    27613    compra 
   TABLE DATA           R   COPY public.compra (id, monto, id_cliente, id_pasaje, dia, mes, anno) FROM stdin;
    public          postgres    false    219   f�       �          0    27617    empleado 
   TABLE DATA           b   COPY public.empleado (id, dni, nombre, sueldo, id_cargo, id_compania, dia, mes, anno) FROM stdin;
    public          postgres    false    221   a�       �          0    27620    empleado_cargo 
   TABLE DATA           C   COPY public.empleado_cargo (id, id_empleado, id_cargo) FROM stdin;
    public          postgres    false    222   ��       �          0    27625    modelo 
   TABLE DATA           ,   COPY public.modelo (id, nombre) FROM stdin;
    public          postgres    false    225   �       �          0    27631    pago 
   TABLE DATA           F   COPY public.pago (id, id_empleado, monto, dia, mes, anno) FROM stdin;
    public          postgres    false    227   I�       �          0    27635    pais 
   TABLE DATA           *   COPY public.pais (id, nombre) FROM stdin;
    public          postgres    false    229   <�       �          0    27639    pasaje 
   TABLE DATA           8   COPY public.pasaje (id, id_vuelo, id_clase) FROM stdin;
    public          postgres    false    231   R�       �          0    27647    vuelo 
   TABLE DATA           J   COPY public.vuelo (id, id_origen, id_destino, dia, mes, anno) FROM stdin;
    public          postgres    false    234   ��       �          0    27650    vuelo_avion 
   TABLE DATA           =   COPY public.vuelo_avion (id, id_vuelo, id_avion) FROM stdin;
    public          postgres    false    235   �       �          0    27654    vuelo_empleado 
   TABLE DATA           C   COPY public.vuelo_empleado (id, id_vuelo, id_empleado) FROM stdin;
    public          postgres    false    237   �       �           0    0    avion_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.avion_id_seq', 1, false);
          public          postgres    false    210            �           0    0    cargo_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.cargo_id_seq', 1, false);
          public          postgres    false    212            �           0    0    clase_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.clase_id_seq', 1, false);
          public          postgres    false    214            �           0    0    cliente_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cliente_id_seq', 1, false);
          public          postgres    false    216            �           0    0    compania_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.compania_id_seq', 1, false);
          public          postgres    false    218            �           0    0    compra_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.compra_id_seq', 1, false);
          public          postgres    false    220            �           0    0    empleado_cargo_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.empleado_cargo_id_seq', 1, false);
          public          postgres    false    223            �           0    0    empleado_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.empleado_id_seq', 1, false);
          public          postgres    false    224            �           0    0    modelo_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.modelo_id_seq', 1, false);
          public          postgres    false    226            �           0    0    pago_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.pago_id_seq', 1, false);
          public          postgres    false    228            �           0    0    pais_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.pais_id_seq', 1, false);
          public          postgres    false    230            �           0    0    pasaje_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.pasaje_id_seq', 1, false);
          public          postgres    false    232            �           0    0    vuelo_avion_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.vuelo_avion_id_seq', 1, false);
          public          postgres    false    236            �           0    0    vuelo_empleado_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.vuelo_empleado_id_seq', 1, false);
          public          postgres    false    238            �           0    0    vuelo_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.vuelo_id_seq', 1, false);
          public          postgres    false    239            �           2606    27675    compania compania_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.compania
    ADD CONSTRAINT compania_pkey PRIMARY KEY (id) INCLUDE (id);
 @   ALTER TABLE ONLY public.compania DROP CONSTRAINT compania_pkey;
       public            postgres    false    217            �           2606    27677    avion id_avion 
   CONSTRAINT     Y   ALTER TABLE ONLY public.avion
    ADD CONSTRAINT id_avion PRIMARY KEY (id) INCLUDE (id);
 8   ALTER TABLE ONLY public.avion DROP CONSTRAINT id_avion;
       public            postgres    false    209            �           2606    27679    cargo id_cargo 
   CONSTRAINT     Y   ALTER TABLE ONLY public.cargo
    ADD CONSTRAINT id_cargo PRIMARY KEY (id) INCLUDE (id);
 8   ALTER TABLE ONLY public.cargo DROP CONSTRAINT id_cargo;
       public            postgres    false    211            �           2606    27681    clase id_clase 
   CONSTRAINT     Y   ALTER TABLE ONLY public.clase
    ADD CONSTRAINT id_clase PRIMARY KEY (id) INCLUDE (id);
 8   ALTER TABLE ONLY public.clase DROP CONSTRAINT id_clase;
       public            postgres    false    213            �           2606    27683    cliente id_cliente 
   CONSTRAINT     ]   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT id_cliente PRIMARY KEY (id) INCLUDE (id);
 <   ALTER TABLE ONLY public.cliente DROP CONSTRAINT id_cliente;
       public            postgres    false    215            �           2606    27685    compra id_compra 
   CONSTRAINT     [   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT id_compra PRIMARY KEY (id) INCLUDE (id);
 :   ALTER TABLE ONLY public.compra DROP CONSTRAINT id_compra;
       public            postgres    false    219            �           2606    27687    empleado id_empleado 
   CONSTRAINT     _   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT id_empleado PRIMARY KEY (id) INCLUDE (id);
 >   ALTER TABLE ONLY public.empleado DROP CONSTRAINT id_empleado;
       public            postgres    false    221            �           2606    27689     empleado_cargo id_empleado_cargo 
   CONSTRAINT     k   ALTER TABLE ONLY public.empleado_cargo
    ADD CONSTRAINT id_empleado_cargo PRIMARY KEY (id) INCLUDE (id);
 J   ALTER TABLE ONLY public.empleado_cargo DROP CONSTRAINT id_empleado_cargo;
       public            postgres    false    222            �           2606    27691    modelo id_modelo 
   CONSTRAINT     [   ALTER TABLE ONLY public.modelo
    ADD CONSTRAINT id_modelo PRIMARY KEY (id) INCLUDE (id);
 :   ALTER TABLE ONLY public.modelo DROP CONSTRAINT id_modelo;
       public            postgres    false    225            �           2606    27693    pasaje id_paasje 
   CONSTRAINT     [   ALTER TABLE ONLY public.pasaje
    ADD CONSTRAINT id_paasje PRIMARY KEY (id) INCLUDE (id);
 :   ALTER TABLE ONLY public.pasaje DROP CONSTRAINT id_paasje;
       public            postgres    false    231            �           2606    27695    pago id_pago 
   CONSTRAINT     W   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT id_pago PRIMARY KEY (id) INCLUDE (id);
 6   ALTER TABLE ONLY public.pago DROP CONSTRAINT id_pago;
       public            postgres    false    227            �           2606    27697    vuelo id_vuelo 
   CONSTRAINT     Y   ALTER TABLE ONLY public.vuelo
    ADD CONSTRAINT id_vuelo PRIMARY KEY (id) INCLUDE (id);
 8   ALTER TABLE ONLY public.vuelo DROP CONSTRAINT id_vuelo;
       public            postgres    false    234            �           2606    27699    vuelo_avion id_vuelo_avion 
   CONSTRAINT     e   ALTER TABLE ONLY public.vuelo_avion
    ADD CONSTRAINT id_vuelo_avion PRIMARY KEY (id) INCLUDE (id);
 D   ALTER TABLE ONLY public.vuelo_avion DROP CONSTRAINT id_vuelo_avion;
       public            postgres    false    235            �           2606    27701     vuelo_empleado id_vuelo_empleado 
   CONSTRAINT     k   ALTER TABLE ONLY public.vuelo_empleado
    ADD CONSTRAINT id_vuelo_empleado PRIMARY KEY (id) INCLUDE (id);
 J   ALTER TABLE ONLY public.vuelo_empleado DROP CONSTRAINT id_vuelo_empleado;
       public            postgres    false    237            �           2606    27703    pais pais_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.pais
    ADD CONSTRAINT pais_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.pais DROP CONSTRAINT pais_pkey;
       public            postgres    false    229            �           2606    27704    vuelo_avion id_avion    FK CONSTRAINT     t   ALTER TABLE ONLY public.vuelo_avion
    ADD CONSTRAINT id_avion FOREIGN KEY (id_avion) REFERENCES public.avion(id);
 >   ALTER TABLE ONLY public.vuelo_avion DROP CONSTRAINT id_avion;
       public          postgres    false    235    3536    209            �           2606    27709    empleado_cargo id_cargo    FK CONSTRAINT     w   ALTER TABLE ONLY public.empleado_cargo
    ADD CONSTRAINT id_cargo FOREIGN KEY (id_cargo) REFERENCES public.cargo(id);
 A   ALTER TABLE ONLY public.empleado_cargo DROP CONSTRAINT id_cargo;
       public          postgres    false    211    3538    222            �           2606    27734    empleado id_cargo    FK CONSTRAINT     q   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT id_cargo FOREIGN KEY (id_cargo) REFERENCES public.cargo(id);
 ;   ALTER TABLE ONLY public.empleado DROP CONSTRAINT id_cargo;
       public          postgres    false    221    211    3538            �           2606    27714    pasaje id_clase    FK CONSTRAINT     o   ALTER TABLE ONLY public.pasaje
    ADD CONSTRAINT id_clase FOREIGN KEY (id_clase) REFERENCES public.clase(id);
 9   ALTER TABLE ONLY public.pasaje DROP CONSTRAINT id_clase;
       public          postgres    false    3540    213    231            �           2606    27719    compra id_cliente    FK CONSTRAINT     u   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT id_cliente FOREIGN KEY (id_cliente) REFERENCES public.cliente(id);
 ;   ALTER TABLE ONLY public.compra DROP CONSTRAINT id_cliente;
       public          postgres    false    215    219    3542            �           2606    27724    avion id_compania    FK CONSTRAINT     w   ALTER TABLE ONLY public.avion
    ADD CONSTRAINT id_compania FOREIGN KEY (id_compania) REFERENCES public.compania(id);
 ;   ALTER TABLE ONLY public.avion DROP CONSTRAINT id_compania;
       public          postgres    false    3544    209    217            �           2606    27729    empleado id_compania    FK CONSTRAINT     z   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT id_compania FOREIGN KEY (id_compania) REFERENCES public.compania(id);
 >   ALTER TABLE ONLY public.empleado DROP CONSTRAINT id_compania;
       public          postgres    false    221    3544    217            �           2606    27739    vuelo_empleado id_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY public.vuelo_empleado
    ADD CONSTRAINT id_empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id);
 D   ALTER TABLE ONLY public.vuelo_empleado DROP CONSTRAINT id_empleado;
       public          postgres    false    237    3548    221            �           2606    27744    empleado_cargo id_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY public.empleado_cargo
    ADD CONSTRAINT id_empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id);
 D   ALTER TABLE ONLY public.empleado_cargo DROP CONSTRAINT id_empleado;
       public          postgres    false    3548    222    221            �           2606    27749    pago id_empleado    FK CONSTRAINT     v   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT id_empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id);
 :   ALTER TABLE ONLY public.pago DROP CONSTRAINT id_empleado;
       public          postgres    false    221    227    3548            �           2606    27754    avion id_modelo    FK CONSTRAINT     q   ALTER TABLE ONLY public.avion
    ADD CONSTRAINT id_modelo FOREIGN KEY (id_modelo) REFERENCES public.modelo(id);
 9   ALTER TABLE ONLY public.avion DROP CONSTRAINT id_modelo;
       public          postgres    false    209    3552    225            �           2606    27759    cliente id_pais    FK CONSTRAINT     w   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT id_pais FOREIGN KEY (id_pais) REFERENCES public.pais(id) NOT VALID;
 9   ALTER TABLE ONLY public.cliente DROP CONSTRAINT id_pais;
       public          postgres    false    229    215    3556            �           2606    27764    vuelo id_pais_destino    FK CONSTRAINT     v   ALTER TABLE ONLY public.vuelo
    ADD CONSTRAINT id_pais_destino FOREIGN KEY (id_destino) REFERENCES public.pais(id);
 ?   ALTER TABLE ONLY public.vuelo DROP CONSTRAINT id_pais_destino;
       public          postgres    false    229    234    3556            �           2606    27769    vuelo id_pais_origen    FK CONSTRAINT     t   ALTER TABLE ONLY public.vuelo
    ADD CONSTRAINT id_pais_origen FOREIGN KEY (id_origen) REFERENCES public.pais(id);
 >   ALTER TABLE ONLY public.vuelo DROP CONSTRAINT id_pais_origen;
       public          postgres    false    229    234    3556            �           2606    27774    compra id_pasaje    FK CONSTRAINT     r   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT id_pasaje FOREIGN KEY (id_pasaje) REFERENCES public.pasaje(id);
 :   ALTER TABLE ONLY public.compra DROP CONSTRAINT id_pasaje;
       public          postgres    false    219    3558    231            �           2606    27779    pasaje id_vuelo    FK CONSTRAINT     o   ALTER TABLE ONLY public.pasaje
    ADD CONSTRAINT id_vuelo FOREIGN KEY (id_vuelo) REFERENCES public.vuelo(id);
 9   ALTER TABLE ONLY public.pasaje DROP CONSTRAINT id_vuelo;
       public          postgres    false    234    231    3560            �           2606    27784    vuelo_avion id_vuelo    FK CONSTRAINT     t   ALTER TABLE ONLY public.vuelo_avion
    ADD CONSTRAINT id_vuelo FOREIGN KEY (id_vuelo) REFERENCES public.vuelo(id);
 >   ALTER TABLE ONLY public.vuelo_avion DROP CONSTRAINT id_vuelo;
       public          postgres    false    3560    235    234            �           2606    27789    vuelo_empleado id_vuelo    FK CONSTRAINT     w   ALTER TABLE ONLY public.vuelo_empleado
    ADD CONSTRAINT id_vuelo FOREIGN KEY (id_vuelo) REFERENCES public.vuelo(id);
 A   ALTER TABLE ONLY public.vuelo_empleado DROP CONSTRAINT id_vuelo;
       public          postgres    false    237    3560    234            �   �   x�5�ۭ�@C���+`x�l�u\��*�B���)	���:iW���d���
<R�Td"�N}��}̄ce�VA0{��_�����M�_��
9�ږڛנ�?�Pno]֑�vy���&cj�����I��i#��Y>�0��ș�i����!�=E0����/��V���Ú{٩Y�97�R��S<8a���?�9t+��:[���3�̷<�      �   3   x�3�,���/�W�)�2��MMN��L��E\F��ŉi�%���E�+F��� ��,�      �   ;   x�3�tM���ϭ�2�(J��,�UH��q:�g�ss�e�($�$y1z\\\ *�      �   z  x�=QKj#1]�N�*��[g��q��d��5nA[u'�9}�!x��������1�<��-�����Y���<�e�@)�(4�za�9ױ}'@��� 8�N����ƣ�"T��SZ�]�r-k���)����*ϥ^& �ޙ�����kh5/�V�E���]��g��*��T�ƕNS���h�6"�.��ԓ��v���)p8�wM����ZC&�\�΅�e�	<Y�s5s���\���y�}��OC����!햙�mC��%�:�*_'�b�4�қ���髌����1(l�p�kRE06�O�t������U)�c�S�ig��0x2�~�����-h�#��}p<��!�[؋�      �   R   x�3��qq�Up�,���K-�2�ή�q��8�RK�s�J��9C�2KRSJM8sS�2��b��@��[Qb^r*W� ��      �   �   x�-Qɕ�0;�b��@/��:F$y9$hs\�	S8<`Wq�U'	?(ش�;�x�ݫ}M��V�������˥	���촤񳞪)~>$�	/��K�p�(Gmn�_�Q�kD��D׻�4_�L�͂	l�CO�
�X�n��`V�%���ct�Y�*a"����[g���n�/��K����T�l�h��z�;e�s��0��F���"���~q�z�1`x'�U���D��F1      �   '  x�EU�n�8}}��`Ar8�<6�6'�8h���06i#K��$�~�Rn
?zf8snRd��AyM�.}��u����M2$�i2J�F�2"JyO7s~��s��?~��4�d%0�-i���Ɛg�u��oC���4�k-*�� *mä}A���ty���n�y&�4FRi�RK",[E��|��C{=��w�������h�al𐖹����Ks�uZQ�i&G:F�8��X�qt�S�޽��<���P�ELE�k<��N;��Cq��������Z�u��~F��X�O��hw�~�p�D� �r�j"fc��~�F�p�>�\�AUxM�¨����E���m�m�s��mʃ�B\6� /*XK�>xә��\UiS2�\D��
��=��%�8�U����b$(qtӏ�����-�'rQ�v�܇��T�c��i����}���e!k���@�/z�A{Ǟ��1���>��0�dLd�,K=0�@G!r`ec�8Nc��\Ec��NF1(Tֳ��sZ2����M����QlL(@g�e�N���k/�'�\���y�Z�FG�Q��b�o�~��v��ƪ�`��EԪf�F�7��m��~���ϙ�U���u񉁣 �x���՜C>�8W�c��)]N1v��~ߥ<@��(���+ܱ�?`6�������^��n����n�^,X:�_La���^u��oȲ���j��+0'Y㽣����.������s�D�}"}I3������#FեW=I�Do V�~��b�|�x_V$l1�RX8`-����c�>ۿ����f��_.f@��\d�=�����}7'�]���+����Z/���<�S{�b�C��W��H=M�#�"���F	�Xz��f�T��>#P|*8u�����������
�U�̄�����U�MGH�n��dע�j�[��B=�[��0ÀxѾ�V��)b�@<lVCoi�����޿���ьY��_:m��w����ԏK�P��C�b=�׏�n�W�|�L�+�j�3z�U�8~�� ���Y5����'�K8	�h���^4p"��e���j���i��gy�^      �   Z   x����0��0L��I�����(΋�
hB$a(�&�^������n�1�{*p�4%�}�Bv�8gמmk|Q�Ou����?��P      �   7   x�3�t�O��KW076�2�sL̹�83��J��-���#.ǐ+F��� �;�      �   �  x�MW[��:�Ns�`l�^f�븒pz�N��n�,�D�c���~̟���5|�5���l���Y�q�c�؋�zl�c*����ҙ�j��N�w�%f�c��Ż���?����L)�7�^�-�i�뱩�����c
H3O����u\CZ�k�ϴĒ�W���3+�BX=��c`m�5_��,�<b��ò���8~\��~���1?�YX�30��<Y�%X�8���S	��cD|��b�n�sc�&�_7�S
��p�H�|�p�|}gB*����b^b�s�_�:v;�ٱRѮ�U��.��Y����i�(���
�|�0��z�4rm�t�[��v�.ŵ���*g�s�3_��QұR����̡n����nF*�X�LX����Y��F��2l���A�D7�2xI����=���l~�F:x�9;D�^o��Ŝ�C�7���K�x�o,5�ԣ��|c%`t���1�{n��4b�J����~CW*���&+�5X��*�&�b����`�K�5YR4AAn�3Y-�0��cx/R�G�:��.Ix<Ȩݕ�RK�>��U���dc�=�9<��2J�d/���)ʴ��w��g���qe;��6?�*,���%�֜���=[��.{1�3��Ӣ�����:9(�-P��|���8QU3�ǝf�"�%1Gϫ�� �u9J��;�uY򣓀��u�sa�Z�2G��]�'I57X�M��׾�)E�v���o�U�L�M,��DIP����o1C�x�j��j�A��f�S�0-�X:;�#���LR�w�j�Up�3P��0��o���E�lЀ�ЩT����nè�]]AޣG��#�w
<��<��R��us
�lh�=S�m-��I=Lz��U�Y?O�Nn���$��(p�btM�d�"6���F�H����$����`���fm�Iǒ�+١<��6KUE� ȣ�9�ԏ�Rw�q�y���Q��oH�@uȣȒ��_��ɿ�iV�2iCZ�W��\�m��a`�x���ld�����g�ȫ&-V5>�NNm�<�܈�v���+\F��Ĩ�+� 6��n��t:���W�#I�AWPH<��<.�m\J]���7U�@ư�i�g���	U�<�Qy�m�mo�Kyc9��?ju�G�����je4՚V�6|#c��#c�����6�SLC���q�rBuoT�~J��}	SJ�G�Vѯ{#8jS�uM=^���[����da�35H�Fd~a�b�vU؏�S���F�m��N��L���v��<u�6s�����g��R�'�=��·Xm����hh�o�t1=$�qAِ-�j�d�'��_�4C���m�$��Zg�
�҇�����as���ƃ-����������י�R)A�J�ȣG`L�S]��7Q�����z�I�rD��N�-m�;�/N6	��^����e�K����o�P;�O�	\7}}(3�M��ST��6]&��_}B�7�Ny�w9�����>��Y #/m�*��@����Ԓ�����#��W��7\/����=liOW!�V� �K\>��"	�,R�nif�*�~ގh�G���ڶ%c���myA~3�B{�"6��jW�e�Ǝ�����Ė��z/;�:�.ۚJ�*�����惈ju���/AJ��A���J�;)�~�>ۺ|�=�����rr��e���*�^w{r�k![?��">��ɏ�;:�C�Ց,dw�v!��+��Vg����d�)��;��Js.��:`�z��W��{@k%O��������/ }�      �     x�=P�N�@<�_�'��I�m���
Dz�2IV���n��TJ�W .�l��3�hջQ�9�fo�����tR�V!y���ͫ�Wۄ�x�
K]��K�Oi��Ԛ��o<�ո�Q�!�~ݢ	I��V��i��3*.p%bm�̛�w�7���^�9m%J�N���m�ԝ��Ƽ��U5@�g�U�\�Xo8�G���6u7��2�OD4=ΧTD1��G��8�Q~���LwA"�!�p�����ثUe��G�~d�uk2      �   [   x����0�K17F�c���_ǡ<lfX@CfQ*<"�b���+�	�����ÕT
��ɶd���)9#^t�Y��&$��g�ݎޟ�?>�      �   �   x�5P� {�bv/�e��c������k1̷M�7'<,O~�FXZ�6�A��1mIq�,Z�º[/��w=7����.x=ŒYe!���Jǁ"�h�~!�d���ש�&,�ګZ ��>=�H����+��4�_I�3��Z��|)�ǫ� �
��骑�=Bj!�֣�zA��S����4h      �   `   x����0�C1���^�!��Јa�T����jɸ�ね��]�N�Jd)3t�a��(ȓ�4��P�,�ft�y���?jS�B��#�aB      �   e   x���E1�P�;A�1����x�%:����̀b0����\Po��O�d�zY��V��CG�._j��j�PQ˦��(<��Tv��{$��H�P��     