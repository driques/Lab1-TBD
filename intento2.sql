-- This script was generated by a beta version of the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public.avion
(
    id_avion integer NOT NULL,
    id_modelo integer NOT NULL,
    capacidad integer NOT NULL,
    "id_compañia" integer NOT NULL,
    CONSTRAINT avion_pkey PRIMARY KEY (id_avion)
);

CREATE TABLE IF NOT EXISTS public.clase
(
    id_clase integer NOT NULL,
    nombre character varying(30) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT clase_pkey PRIMARY KEY (id_clase)
);

CREATE TABLE IF NOT EXISTS public.cliente
(
    id_cliente integer NOT NULL,
    nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    dni character varying(30) COLLATE pg_catalog."default" NOT NULL,
    pais character varying(80) NOT NULL,
    id_vuelo integer,
    CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente)
);

CREATE TABLE IF NOT EXISTS public.compania
(
    id_compania integer NOT NULL,
    nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    id_cliente integer NOT NULL,
    fecha date NOT NULL,
    CONSTRAINT compania_pkey PRIMARY KEY (id_compania)
);

CREATE TABLE IF NOT EXISTS public.compra
(
    monto numeric NOT NULL,
    fecha date NOT NULL,
    id_compra integer NOT NULL,
    id_cliente integer NOT NULL,
    id_pasaje integer NOT NULL,
    CONSTRAINT compra_pkey PRIMARY KEY (id_compra)
);

CREATE TABLE IF NOT EXISTS public.empleado
(
    id_empleado integer NOT NULL,
    dni character varying(30) COLLATE pg_catalog."default" NOT NULL,
    nombre character varying(80) COLLATE pg_catalog."default" NOT NULL,
    id_compania integer NOT NULL,
    id_avion integer NOT NULL,
    cargo "char" NOT NULL,
    CONSTRAINT empleado_pkey PRIMARY KEY (id_empleado)
);

CREATE TABLE IF NOT EXISTS public.modelo
(
    id_modelo integer NOT NULL,
    nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT modelo_pkey PRIMARY KEY (id_modelo)
);

CREATE TABLE IF NOT EXISTS public.pasaje
(
    id_pasaje integer NOT NULL,
    id_clase integer NOT NULL,
    valor numeric NOT NULL,
    CONSTRAINT pasaje_pkey PRIMARY KEY (id_pasaje)
);

CREATE TABLE IF NOT EXISTS public.vuelo
(
    id_vuelo integer NOT NULL,
    embarque date NOT NULL,
    id_pasaje integer NOT NULL,
    pais_destino character varying(80) NOT NULL,
    pais_origen character varying(80) NOT NULL,
    CONSTRAINT vuelo_pkey PRIMARY KEY (id_vuelo)
);

CREATE TABLE IF NOT EXISTS public.sueldo
(
    id_empleado integer,
    monto integer,
    PRIMARY KEY (id_empleado)
);

CREATE TABLE IF NOT EXISTS public.vuelo_cliente
(
    id_vuelo integer NOT NULL,
    id_cliente integer NOT NULL
);

CREATE TABLE IF NOT EXISTS public.empleado_vuelo
(
    id_empleado integer NOT NULL,
    id_vuelo integer NOT NULL
);

ALTER TABLE IF EXISTS public.avion
    ADD FOREIGN KEY (id_modelo)
    REFERENCES public.modelo (id_modelo) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.avion
    ADD FOREIGN KEY ("id_compañia")
    REFERENCES public.compania (id_compania) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.compania
    ADD FOREIGN KEY (id_cliente)
    REFERENCES public.cliente (id_cliente) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.compra
    ADD FOREIGN KEY (id_pasaje)
    REFERENCES public.pasaje (id_pasaje) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.empleado
    ADD FOREIGN KEY (id_avion)
    REFERENCES public.avion (id_avion) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.pasaje
    ADD FOREIGN KEY (id_clase)
    REFERENCES public.clase (id_clase) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.vuelo
    ADD FOREIGN KEY (id_pasaje)
    REFERENCES public.pasaje (id_pasaje) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.sueldo
    ADD FOREIGN KEY (id_empleado)
    REFERENCES public.empleado (id_empleado) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.vuelo_cliente
    ADD FOREIGN KEY (id_vuelo)
    REFERENCES public.vuelo (id_vuelo) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.vuelo_cliente
    ADD FOREIGN KEY (id_cliente)
    REFERENCES public.cliente (id_cliente) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.empleado_vuelo
    ADD FOREIGN KEY (id_empleado)
    REFERENCES public.empleado (id_empleado) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.empleado_vuelo
    ADD FOREIGN KEY (id_vuelo)
    REFERENCES public.vuelo (id_vuelo) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;