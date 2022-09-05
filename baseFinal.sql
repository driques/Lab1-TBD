PGDMP     1                    z            aero    14.5    14.5 "    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    27592    aero    DATABASE     O   CREATE DATABASE aero WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE aero;
                postgres    false            �          0    27593    avion 
   TABLE DATA           V   COPY public.avion (id, id_modelo, id_compania, capacidad, dia, mes, anno) FROM stdin;
    public          postgres    false    209   �       �          0    27597    cargo 
   TABLE DATA           +   COPY public.cargo (id, nombre) FROM stdin;
    public          postgres    false    211   �       �          0    27601    clase 
   TABLE DATA           +   COPY public.clase (id, nombre) FROM stdin;
    public          postgres    false    213          �          0    27605    cliente 
   TABLE DATA           ;   COPY public.cliente (id, nombre, id_pais, dni) FROM stdin;
    public          postgres    false    215   N       �          0    27609    compania 
   TABLE DATA           .   COPY public.compania (id, nombre) FROM stdin;
    public          postgres    false    217   �       �          0    27613    compra 
   TABLE DATA           R   COPY public.compra (id, monto, id_cliente, id_pasaje, dia, mes, anno) FROM stdin;
    public          postgres    false    219   :       �          0    27617    empleado 
   TABLE DATA           b   COPY public.empleado (id, dni, nombre, sueldo, id_cargo, id_compania, dia, mes, anno) FROM stdin;
    public          postgres    false    221   5       �          0    27620    empleado_cargo 
   TABLE DATA           C   COPY public.empleado_cargo (id, id_empleado, id_cargo) FROM stdin;
    public          postgres    false    222   l#       �          0    27625    modelo 
   TABLE DATA           ,   COPY public.modelo (id, nombre) FROM stdin;
    public          postgres    false    225   �#       �          0    27631    pago 
   TABLE DATA           F   COPY public.pago (id, id_empleado, monto, dia, mes, anno) FROM stdin;
    public          postgres    false    227   $       �          0    27635    pais 
   TABLE DATA           *   COPY public.pais (id, nombre) FROM stdin;
    public          postgres    false    229   +       �          0    27639    pasaje 
   TABLE DATA           8   COPY public.pasaje (id, id_vuelo, id_clase) FROM stdin;
    public          postgres    false    231   &,       �          0    27647    vuelo 
   TABLE DATA           J   COPY public.vuelo (id, id_origen, id_destino, dia, mes, anno) FROM stdin;
    public          postgres    false    234   �,       �          0    27650    vuelo_avion 
   TABLE DATA           =   COPY public.vuelo_avion (id, id_vuelo, id_avion) FROM stdin;
    public          postgres    false    235   S-       �          0    27654    vuelo_empleado 
   TABLE DATA           C   COPY public.vuelo_empleado (id, id_vuelo, id_empleado) FROM stdin;
    public          postgres    false    237   �-       �           0    0    avion_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.avion_id_seq', 1, false);
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
          public          postgres    false    239            �   �   x�5�ۭ�@C���+`x�l�u\��*�B���)	���:iW���d���
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