PGDMP                          z        	   aerolinea    14.3    14.3 g    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    30762 	   aerolinea    DATABASE     e   CREATE DATABASE aerolinea WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Chile.1252';
    DROP DATABASE aerolinea;
                postgres    false            �            1259    30763    avion    TABLE     �   CREATE TABLE public.avion (
    id bigint NOT NULL,
    id_modelo integer NOT NULL,
    id_compania integer NOT NULL,
    capacidad integer NOT NULL,
    dia integer NOT NULL,
    mes integer NOT NULL,
    anno integer NOT NULL
);
    DROP TABLE public.avion;
       public         heap    postgres    false            �            1259    30766    avion_id_seq    SEQUENCE     u   CREATE SEQUENCE public.avion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.avion_id_seq;
       public          postgres    false    209            �           0    0    avion_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.avion_id_seq OWNED BY public.avion.id;
          public          postgres    false    210            �            1259    30767    cargo    TABLE     [   CREATE TABLE public.cargo (
    id integer NOT NULL,
    nombre character(100) NOT NULL
);
    DROP TABLE public.cargo;
       public         heap    postgres    false            �            1259    30770    cargo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cargo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.cargo_id_seq;
       public          postgres    false    211            �           0    0    cargo_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.cargo_id_seq OWNED BY public.cargo.id;
          public          postgres    false    212            �            1259    30771    clase    TABLE     c   CREATE TABLE public.clase (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);
    DROP TABLE public.clase;
       public         heap    postgres    false            �            1259    30774    clase_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clase_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.clase_id_seq;
       public          postgres    false    213            �           0    0    clase_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.clase_id_seq OWNED BY public.clase.id;
          public          postgres    false    214            �            1259    30775    cliente    TABLE     �   CREATE TABLE public.cliente (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    id_pais integer NOT NULL,
    dni character varying(100) NOT NULL
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    30778    cliente_id_seq    SEQUENCE     w   CREATE SEQUENCE public.cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.cliente_id_seq;
       public          postgres    false    215            �           0    0    cliente_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;
          public          postgres    false    216            �            1259    30779    compania    TABLE     f   CREATE TABLE public.compania (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);
    DROP TABLE public.compania;
       public         heap    postgres    false            �            1259    30782    compania_id_seq    SEQUENCE     �   CREATE SEQUENCE public.compania_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.compania_id_seq;
       public          postgres    false    217            �           0    0    compania_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.compania_id_seq OWNED BY public.compania.id;
          public          postgres    false    218            �            1259    30783    compra    TABLE     �   CREATE TABLE public.compra (
    id bigint NOT NULL,
    monto integer NOT NULL,
    id_cliente integer NOT NULL,
    id_pasaje integer NOT NULL,
    dia integer NOT NULL,
    mes integer NOT NULL,
    anno integer NOT NULL
);
    DROP TABLE public.compra;
       public         heap    postgres    false            �            1259    30786    compra_id_seq    SEQUENCE     v   CREATE SEQUENCE public.compra_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.compra_id_seq;
       public          postgres    false    219            �           0    0    compra_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.compra_id_seq OWNED BY public.compra.id;
          public          postgres    false    220            �            1259    30787    empleado    TABLE     ;  CREATE TABLE public.empleado (
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
       public         heap    postgres    false            �            1259    30790    empleado_cargo    TABLE     �   CREATE TABLE public.empleado_cargo (
    id bigint NOT NULL,
    id_empleado integer NOT NULL,
    id_cargo integer NOT NULL
);
 "   DROP TABLE public.empleado_cargo;
       public         heap    postgres    false            �            1259    30793    empleado_cargo_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.empleado_cargo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.empleado_cargo_id_seq;
       public          postgres    false    222            �           0    0    empleado_cargo_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.empleado_cargo_id_seq OWNED BY public.empleado_cargo.id;
          public          postgres    false    223            �            1259    30794    empleado_id_seq    SEQUENCE     x   CREATE SEQUENCE public.empleado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.empleado_id_seq;
       public          postgres    false    221            �           0    0    empleado_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.empleado_id_seq OWNED BY public.empleado.id;
          public          postgres    false    224            �            1259    30795    modelo    TABLE     V   CREATE TABLE public.modelo (
    id integer NOT NULL,
    nombre character varying
);
    DROP TABLE public.modelo;
       public         heap    postgres    false            �            1259    30800    modelo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.modelo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.modelo_id_seq;
       public          postgres    false    225            �           0    0    modelo_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.modelo_id_seq OWNED BY public.modelo.id;
          public          postgres    false    226            �            1259    30801    vuelo    TABLE     �   CREATE TABLE public.vuelo (
    id bigint NOT NULL,
    id_origen integer NOT NULL,
    id_destino integer NOT NULL,
    dia integer NOT NULL,
    mes integer NOT NULL,
    anno integer NOT NULL
);
    DROP TABLE public.vuelo;
       public         heap    postgres    false            �            1259    30804    vuelo_avion    TABLE     z   CREATE TABLE public.vuelo_avion (
    id bigint NOT NULL,
    id_vuelo integer NOT NULL,
    id_avion integer NOT NULL
);
    DROP TABLE public.vuelo_avion;
       public         heap    postgres    false            �            1259    31057    most_ids    VIEW     �  CREATE VIEW public.most_ids AS
 SELECT avion.id AS id_avion,
    count(vuelo_avion.id_vuelo) AS contador
   FROM public.avion,
    public.vuelo_avion,
    public.vuelo
  WHERE ((avion.id = vuelo_avion.id_avion) AND (vuelo_avion.id_vuelo = vuelo.id) AND (vuelo.anno = 2021) AND ((vuelo.mes >= 1) AND (vuelo.mes <= 12)))
  GROUP BY avion.id
  ORDER BY (count(vuelo_avion.id_vuelo)) DESC;
    DROP VIEW public.most_ids;
       public          postgres    false    228    228    227    227    227    209            �            1259    30811    pago    TABLE     �   CREATE TABLE public.pago (
    id bigint NOT NULL,
    id_empleado integer NOT NULL,
    monto integer NOT NULL,
    dia integer NOT NULL,
    mes integer NOT NULL,
    anno integer NOT NULL
);
    DROP TABLE public.pago;
       public         heap    postgres    false            �            1259    30814    pago_id_seq    SEQUENCE     t   CREATE SEQUENCE public.pago_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.pago_id_seq;
       public          postgres    false    229            �           0    0    pago_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.pago_id_seq OWNED BY public.pago.id;
          public          postgres    false    230            �            1259    30815    pais    TABLE     b   CREATE TABLE public.pais (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);
    DROP TABLE public.pais;
       public         heap    postgres    false            �            1259    30818    pais_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.pais_id_seq;
       public          postgres    false    231            �           0    0    pais_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.pais_id_seq OWNED BY public.pais.id;
          public          postgres    false    232            �            1259    30819    pasaje    TABLE     c   CREATE TABLE public.pasaje (
    id bigint NOT NULL,
    id_vuelo integer,
    id_clase integer
);
    DROP TABLE public.pasaje;
       public         heap    postgres    false            �            1259    30822    pasaje_id_seq    SEQUENCE     v   CREATE SEQUENCE public.pasaje_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.pasaje_id_seq;
       public          postgres    false    233            �           0    0    pasaje_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.pasaje_id_seq OWNED BY public.pasaje.id;
          public          postgres    false    234            �            1259    30823    solo_chilenos    VIEW     �   CREATE VIEW public.solo_chilenos AS
 SELECT cliente.id
   FROM public.cliente,
    public.pais
  WHERE (((pais.nombre)::text = 'Chile'::text) AND (pais.id = cliente.id_pais));
     DROP VIEW public.solo_chilenos;
       public          postgres    false    231    231    215    215            �            1259    31049    suma_aviones    VIEW     M  CREATE VIEW public.suma_aviones AS
 SELECT compania.nombre,
    count(avion.anno) AS cantidad_annio,
    avion.anno
   FROM public.avion,
    public.compania
  WHERE ((avion.id_compania = compania.id) AND ((avion.anno >= 2012) AND (avion.anno <= 2022)))
  GROUP BY avion.anno, compania.nombre
  ORDER BY compania.nombre, avion.anno;
    DROP VIEW public.suma_aviones;
       public          postgres    false    209    217    217    209            �            1259    31053    suma_empleados    VIEW     B  CREATE VIEW public.suma_empleados AS
 SELECT compania.nombre,
    pago.anno,
    empleado.sueldo
   FROM public.compania,
    public.empleado,
    public.pago
  WHERE ((compania.id = empleado.id_compania) AND (empleado.id = pago.id_empleado) AND (pago.anno > 2011))
  ORDER BY pago.anno, compania.nombre, empleado.sueldo;
 !   DROP VIEW public.suma_empleados;
       public          postgres    false    217    229    221    229    221    221    217            �            1259    31065 
   suma_meses    VIEW     �  CREATE VIEW public.suma_meses AS
 SELECT cliente.id AS cliente_id,
    vuelo.id AS vuelo_id,
    vuelo.anno,
    vuelo.mes
   FROM public.cliente,
    public.compra,
    public.pasaje,
    public.clase,
    public.vuelo
  WHERE ((cliente.id = compra.id_cliente) AND (compra.id_pasaje = pasaje.id) AND (pasaje.id_clase = clase.id) AND (pasaje.id_vuelo = vuelo.id) AND ((clase.nombre)::text = 'First class'::text))
  GROUP BY vuelo.mes, cliente.id, vuelo.id, vuelo.anno;
    DROP VIEW public.suma_meses;
       public          postgres    false    227    227    213    233    213    215    219    233    233    227    219            �            1259    31045    suma_montos    VIEW       CREATE VIEW public.suma_montos AS
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
       public          postgres    false    219    219    217    217    209    209    233    233    228    228    227            �            1259    30839    vuelo_avion_id_seq    SEQUENCE     {   CREATE SEQUENCE public.vuelo_avion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.vuelo_avion_id_seq;
       public          postgres    false    228            �           0    0    vuelo_avion_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.vuelo_avion_id_seq OWNED BY public.vuelo_avion.id;
          public          postgres    false    236            �            1259    30840    vuelo_empleado    TABLE     �   CREATE TABLE public.vuelo_empleado (
    id bigint NOT NULL,
    id_vuelo integer NOT NULL,
    id_empleado integer NOT NULL
);
 "   DROP TABLE public.vuelo_empleado;
       public         heap    postgres    false            �            1259    30843    vuelo_empleado_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.vuelo_empleado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.vuelo_empleado_id_seq;
       public          postgres    false    237            �           0    0    vuelo_empleado_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.vuelo_empleado_id_seq OWNED BY public.vuelo_empleado.id;
          public          postgres    false    238            �            1259    30844    vuelo_id_seq    SEQUENCE     u   CREATE SEQUENCE public.vuelo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.vuelo_id_seq;
       public          postgres    false    227            �           0    0    vuelo_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.vuelo_id_seq OWNED BY public.vuelo.id;
          public          postgres    false    239            �           2604    30845    avion id    DEFAULT     d   ALTER TABLE ONLY public.avion ALTER COLUMN id SET DEFAULT nextval('public.avion_id_seq'::regclass);
 7   ALTER TABLE public.avion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            �           2604    30846    cargo id    DEFAULT     d   ALTER TABLE ONLY public.cargo ALTER COLUMN id SET DEFAULT nextval('public.cargo_id_seq'::regclass);
 7   ALTER TABLE public.cargo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            �           2604    30847    clase id    DEFAULT     d   ALTER TABLE ONLY public.clase ALTER COLUMN id SET DEFAULT nextval('public.clase_id_seq'::regclass);
 7   ALTER TABLE public.clase ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            �           2604    30848 
   cliente id    DEFAULT     h   ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);
 9   ALTER TABLE public.cliente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    30849    compania id    DEFAULT     j   ALTER TABLE ONLY public.compania ALTER COLUMN id SET DEFAULT nextval('public.compania_id_seq'::regclass);
 :   ALTER TABLE public.compania ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    30850 	   compra id    DEFAULT     f   ALTER TABLE ONLY public.compra ALTER COLUMN id SET DEFAULT nextval('public.compra_id_seq'::regclass);
 8   ALTER TABLE public.compra ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    30851    empleado id    DEFAULT     j   ALTER TABLE ONLY public.empleado ALTER COLUMN id SET DEFAULT nextval('public.empleado_id_seq'::regclass);
 :   ALTER TABLE public.empleado ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    221            �           2604    30852    empleado_cargo id    DEFAULT     v   ALTER TABLE ONLY public.empleado_cargo ALTER COLUMN id SET DEFAULT nextval('public.empleado_cargo_id_seq'::regclass);
 @   ALTER TABLE public.empleado_cargo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    30853 	   modelo id    DEFAULT     f   ALTER TABLE ONLY public.modelo ALTER COLUMN id SET DEFAULT nextval('public.modelo_id_seq'::regclass);
 8   ALTER TABLE public.modelo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            �           2604    30854    pago id    DEFAULT     b   ALTER TABLE ONLY public.pago ALTER COLUMN id SET DEFAULT nextval('public.pago_id_seq'::regclass);
 6   ALTER TABLE public.pago ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    30855    pais id    DEFAULT     b   ALTER TABLE ONLY public.pais ALTER COLUMN id SET DEFAULT nextval('public.pais_id_seq'::regclass);
 6   ALTER TABLE public.pais ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            �           2604    30856 	   pasaje id    DEFAULT     f   ALTER TABLE ONLY public.pasaje ALTER COLUMN id SET DEFAULT nextval('public.pasaje_id_seq'::regclass);
 8   ALTER TABLE public.pasaje ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            �           2604    30857    vuelo id    DEFAULT     d   ALTER TABLE ONLY public.vuelo ALTER COLUMN id SET DEFAULT nextval('public.vuelo_id_seq'::regclass);
 7   ALTER TABLE public.vuelo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    227            �           2604    30858    vuelo_avion id    DEFAULT     p   ALTER TABLE ONLY public.vuelo_avion ALTER COLUMN id SET DEFAULT nextval('public.vuelo_avion_id_seq'::regclass);
 =   ALTER TABLE public.vuelo_avion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    228            �           2604    30859    vuelo_empleado id    DEFAULT     v   ALTER TABLE ONLY public.vuelo_empleado ALTER COLUMN id SET DEFAULT nextval('public.vuelo_empleado_id_seq'::regclass);
 @   ALTER TABLE public.vuelo_empleado ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237            �           2606    30861    compania compania_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.compania
    ADD CONSTRAINT compania_pkey PRIMARY KEY (id) INCLUDE (id);
 @   ALTER TABLE ONLY public.compania DROP CONSTRAINT compania_pkey;
       public            postgres    false    217            �           2606    30863    avion id_avion 
   CONSTRAINT     Y   ALTER TABLE ONLY public.avion
    ADD CONSTRAINT id_avion PRIMARY KEY (id) INCLUDE (id);
 8   ALTER TABLE ONLY public.avion DROP CONSTRAINT id_avion;
       public            postgres    false    209            �           2606    30865    cargo id_cargo 
   CONSTRAINT     Y   ALTER TABLE ONLY public.cargo
    ADD CONSTRAINT id_cargo PRIMARY KEY (id) INCLUDE (id);
 8   ALTER TABLE ONLY public.cargo DROP CONSTRAINT id_cargo;
       public            postgres    false    211            �           2606    30867    clase id_clase 
   CONSTRAINT     Y   ALTER TABLE ONLY public.clase
    ADD CONSTRAINT id_clase PRIMARY KEY (id) INCLUDE (id);
 8   ALTER TABLE ONLY public.clase DROP CONSTRAINT id_clase;
       public            postgres    false    213            �           2606    30869    cliente id_cliente 
   CONSTRAINT     ]   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT id_cliente PRIMARY KEY (id) INCLUDE (id);
 <   ALTER TABLE ONLY public.cliente DROP CONSTRAINT id_cliente;
       public            postgres    false    215            �           2606    30871    compra id_compra 
   CONSTRAINT     [   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT id_compra PRIMARY KEY (id) INCLUDE (id);
 :   ALTER TABLE ONLY public.compra DROP CONSTRAINT id_compra;
       public            postgres    false    219            �           2606    30873    empleado id_empleado 
   CONSTRAINT     _   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT id_empleado PRIMARY KEY (id) INCLUDE (id);
 >   ALTER TABLE ONLY public.empleado DROP CONSTRAINT id_empleado;
       public            postgres    false    221            �           2606    30875     empleado_cargo id_empleado_cargo 
   CONSTRAINT     k   ALTER TABLE ONLY public.empleado_cargo
    ADD CONSTRAINT id_empleado_cargo PRIMARY KEY (id) INCLUDE (id);
 J   ALTER TABLE ONLY public.empleado_cargo DROP CONSTRAINT id_empleado_cargo;
       public            postgres    false    222            �           2606    30877    modelo id_modelo 
   CONSTRAINT     [   ALTER TABLE ONLY public.modelo
    ADD CONSTRAINT id_modelo PRIMARY KEY (id) INCLUDE (id);
 :   ALTER TABLE ONLY public.modelo DROP CONSTRAINT id_modelo;
       public            postgres    false    225            �           2606    30879    pasaje id_paasje 
   CONSTRAINT     [   ALTER TABLE ONLY public.pasaje
    ADD CONSTRAINT id_paasje PRIMARY KEY (id) INCLUDE (id);
 :   ALTER TABLE ONLY public.pasaje DROP CONSTRAINT id_paasje;
       public            postgres    false    233            �           2606    30881    pago id_pago 
   CONSTRAINT     W   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT id_pago PRIMARY KEY (id) INCLUDE (id);
 6   ALTER TABLE ONLY public.pago DROP CONSTRAINT id_pago;
       public            postgres    false    229            �           2606    30883    vuelo id_vuelo 
   CONSTRAINT     Y   ALTER TABLE ONLY public.vuelo
    ADD CONSTRAINT id_vuelo PRIMARY KEY (id) INCLUDE (id);
 8   ALTER TABLE ONLY public.vuelo DROP CONSTRAINT id_vuelo;
       public            postgres    false    227            �           2606    30885    vuelo_avion id_vuelo_avion 
   CONSTRAINT     e   ALTER TABLE ONLY public.vuelo_avion
    ADD CONSTRAINT id_vuelo_avion PRIMARY KEY (id) INCLUDE (id);
 D   ALTER TABLE ONLY public.vuelo_avion DROP CONSTRAINT id_vuelo_avion;
       public            postgres    false    228            �           2606    30887     vuelo_empleado id_vuelo_empleado 
   CONSTRAINT     k   ALTER TABLE ONLY public.vuelo_empleado
    ADD CONSTRAINT id_vuelo_empleado PRIMARY KEY (id) INCLUDE (id);
 J   ALTER TABLE ONLY public.vuelo_empleado DROP CONSTRAINT id_vuelo_empleado;
       public            postgres    false    237            �           2606    30889    pais pais_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.pais
    ADD CONSTRAINT pais_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.pais DROP CONSTRAINT pais_pkey;
       public            postgres    false    231            �           2606    30890    vuelo_avion id_avion    FK CONSTRAINT     t   ALTER TABLE ONLY public.vuelo_avion
    ADD CONSTRAINT id_avion FOREIGN KEY (id_avion) REFERENCES public.avion(id);
 >   ALTER TABLE ONLY public.vuelo_avion DROP CONSTRAINT id_avion;
       public          postgres    false    228    3274    209            �           2606    30895    empleado_cargo id_cargo    FK CONSTRAINT     w   ALTER TABLE ONLY public.empleado_cargo
    ADD CONSTRAINT id_cargo FOREIGN KEY (id_cargo) REFERENCES public.cargo(id);
 A   ALTER TABLE ONLY public.empleado_cargo DROP CONSTRAINT id_cargo;
       public          postgres    false    222    211    3276            �           2606    30900    empleado id_cargo    FK CONSTRAINT     q   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT id_cargo FOREIGN KEY (id_cargo) REFERENCES public.cargo(id);
 ;   ALTER TABLE ONLY public.empleado DROP CONSTRAINT id_cargo;
       public          postgres    false    3276    221    211            �           2606    30905    pasaje id_clase    FK CONSTRAINT     o   ALTER TABLE ONLY public.pasaje
    ADD CONSTRAINT id_clase FOREIGN KEY (id_clase) REFERENCES public.clase(id);
 9   ALTER TABLE ONLY public.pasaje DROP CONSTRAINT id_clase;
       public          postgres    false    3278    233    213            �           2606    30910    compra id_cliente    FK CONSTRAINT     u   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT id_cliente FOREIGN KEY (id_cliente) REFERENCES public.cliente(id);
 ;   ALTER TABLE ONLY public.compra DROP CONSTRAINT id_cliente;
       public          postgres    false    215    3280    219            �           2606    30915    avion id_compania    FK CONSTRAINT     w   ALTER TABLE ONLY public.avion
    ADD CONSTRAINT id_compania FOREIGN KEY (id_compania) REFERENCES public.compania(id);
 ;   ALTER TABLE ONLY public.avion DROP CONSTRAINT id_compania;
       public          postgres    false    217    209    3282            �           2606    30920    empleado id_compania    FK CONSTRAINT     z   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT id_compania FOREIGN KEY (id_compania) REFERENCES public.compania(id);
 >   ALTER TABLE ONLY public.empleado DROP CONSTRAINT id_compania;
       public          postgres    false    221    3282    217            �           2606    30925    vuelo_empleado id_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY public.vuelo_empleado
    ADD CONSTRAINT id_empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id);
 D   ALTER TABLE ONLY public.vuelo_empleado DROP CONSTRAINT id_empleado;
       public          postgres    false    3286    237    221            �           2606    30930    empleado_cargo id_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY public.empleado_cargo
    ADD CONSTRAINT id_empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id);
 D   ALTER TABLE ONLY public.empleado_cargo DROP CONSTRAINT id_empleado;
       public          postgres    false    221    222    3286            �           2606    30935    pago id_empleado    FK CONSTRAINT     v   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT id_empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id);
 :   ALTER TABLE ONLY public.pago DROP CONSTRAINT id_empleado;
       public          postgres    false    229    3286    221            �           2606    30940    avion id_modelo    FK CONSTRAINT     q   ALTER TABLE ONLY public.avion
    ADD CONSTRAINT id_modelo FOREIGN KEY (id_modelo) REFERENCES public.modelo(id);
 9   ALTER TABLE ONLY public.avion DROP CONSTRAINT id_modelo;
       public          postgres    false    3290    225    209            �           2606    30945    cliente id_pais    FK CONSTRAINT     w   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT id_pais FOREIGN KEY (id_pais) REFERENCES public.pais(id) NOT VALID;
 9   ALTER TABLE ONLY public.cliente DROP CONSTRAINT id_pais;
       public          postgres    false    231    215    3298            �           2606    30950    vuelo id_pais_destino    FK CONSTRAINT     v   ALTER TABLE ONLY public.vuelo
    ADD CONSTRAINT id_pais_destino FOREIGN KEY (id_destino) REFERENCES public.pais(id);
 ?   ALTER TABLE ONLY public.vuelo DROP CONSTRAINT id_pais_destino;
       public          postgres    false    227    231    3298            �           2606    30955    vuelo id_pais_origen    FK CONSTRAINT     t   ALTER TABLE ONLY public.vuelo
    ADD CONSTRAINT id_pais_origen FOREIGN KEY (id_origen) REFERENCES public.pais(id);
 >   ALTER TABLE ONLY public.vuelo DROP CONSTRAINT id_pais_origen;
       public          postgres    false    227    3298    231            �           2606    30960    compra id_pasaje    FK CONSTRAINT     r   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT id_pasaje FOREIGN KEY (id_pasaje) REFERENCES public.pasaje(id);
 :   ALTER TABLE ONLY public.compra DROP CONSTRAINT id_pasaje;
       public          postgres    false    233    219    3300            �           2606    30965    pasaje id_vuelo    FK CONSTRAINT     o   ALTER TABLE ONLY public.pasaje
    ADD CONSTRAINT id_vuelo FOREIGN KEY (id_vuelo) REFERENCES public.vuelo(id);
 9   ALTER TABLE ONLY public.pasaje DROP CONSTRAINT id_vuelo;
       public          postgres    false    227    3292    233            �           2606    30970    vuelo_avion id_vuelo    FK CONSTRAINT     t   ALTER TABLE ONLY public.vuelo_avion
    ADD CONSTRAINT id_vuelo FOREIGN KEY (id_vuelo) REFERENCES public.vuelo(id);
 >   ALTER TABLE ONLY public.vuelo_avion DROP CONSTRAINT id_vuelo;
       public          postgres    false    228    3292    227            �           2606    30975    vuelo_empleado id_vuelo    FK CONSTRAINT     w   ALTER TABLE ONLY public.vuelo_empleado
    ADD CONSTRAINT id_vuelo FOREIGN KEY (id_vuelo) REFERENCES public.vuelo(id);
 A   ALTER TABLE ONLY public.vuelo_empleado DROP CONSTRAINT id_vuelo;
       public          postgres    false    237    3292    227           