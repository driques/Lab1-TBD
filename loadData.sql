PGDMP     6                     z        	   aerolinea    14.3    14.3 "    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    30762 	   aerolinea    DATABASE     e   CREATE DATABASE aerolinea WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Chile.1252';
    DROP DATABASE aerolinea;
                postgres    false            �          0    30779    compania 
   TABLE DATA           .   COPY public.compania (id, nombre) FROM stdin;
    public          postgres    false    217          �          0    30795    modelo 
   TABLE DATA           ,   COPY public.modelo (id, nombre) FROM stdin;
    public          postgres    false    225   h       {          0    30763    avion 
   TABLE DATA           V   COPY public.avion (id, id_modelo, id_compania, capacidad, dia, mes, anno) FROM stdin;
    public          postgres    false    209   �       }          0    30767    cargo 
   TABLE DATA           +   COPY public.cargo (id, nombre) FROM stdin;
    public          postgres    false    211   �                 0    30771    clase 
   TABLE DATA           +   COPY public.clase (id, nombre) FROM stdin;
    public          postgres    false    213   �       �          0    30815    pais 
   TABLE DATA           *   COPY public.pais (id, nombre) FROM stdin;
    public          postgres    false    231          �          0    30775    cliente 
   TABLE DATA           ;   COPY public.cliente (id, nombre, id_pais, dni) FROM stdin;
    public          postgres    false    215   <       �          0    30801    vuelo 
   TABLE DATA           J   COPY public.vuelo (id, id_origen, id_destino, dia, mes, anno) FROM stdin;
    public          postgres    false    227   �       �          0    30819    pasaje 
   TABLE DATA           8   COPY public.pasaje (id, id_vuelo, id_clase) FROM stdin;
    public          postgres    false    233   �        �          0    30783    compra 
   TABLE DATA           R   COPY public.compra (id, monto, id_cliente, id_pasaje, dia, mes, anno) FROM stdin;
    public          postgres    false    219   �!       �          0    30787    empleado 
   TABLE DATA           b   COPY public.empleado (id, dni, nombre, sueldo, id_cargo, id_compania, dia, mes, anno) FROM stdin;
    public          postgres    false    221   #       �          0    30790    empleado_cargo 
   TABLE DATA           C   COPY public.empleado_cargo (id, id_empleado, id_cargo) FROM stdin;
    public          postgres    false    222   8'       �          0    30811    pago 
   TABLE DATA           F   COPY public.pago (id, id_empleado, monto, dia, mes, anno) FROM stdin;
    public          postgres    false    229   �'       �          0    30804    vuelo_avion 
   TABLE DATA           =   COPY public.vuelo_avion (id, id_vuelo, id_avion) FROM stdin;
    public          postgres    false    228   �.       �          0    30840    vuelo_empleado 
   TABLE DATA           C   COPY public.vuelo_empleado (id, id_vuelo, id_empleado) FROM stdin;
    public          postgres    false    237   /       �           0    0    avion_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.avion_id_seq', 1, false);
          public          postgres    false    210            �           0    0    cargo_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.cargo_id_seq', 1, false);
          public          postgres    false    212            �           0    0    clase_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.clase_id_seq', 1, false);
          public          postgres    false    214            �           0    0    cliente_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cliente_id_seq', 1, false);
          public          postgres    false    216            �           0    0    compania_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.compania_id_seq', 1, false);
          public          postgres    false    218            �           0    0    compra_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.compra_id_seq', 1, false);
          public          postgres    false    220            �           0    0    empleado_cargo_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.empleado_cargo_id_seq', 1, false);
          public          postgres    false    223            �           0    0    empleado_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.empleado_id_seq', 1, false);
          public          postgres    false    224            �           0    0    modelo_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.modelo_id_seq', 1, false);
          public          postgres    false    226            �           0    0    pago_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.pago_id_seq', 1, false);
          public          postgres    false    230            �           0    0    pais_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.pais_id_seq', 1, false);
          public          postgres    false    232            �           0    0    pasaje_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.pasaje_id_seq', 1, false);
          public          postgres    false    234            �           0    0    vuelo_avion_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.vuelo_avion_id_seq', 1, false);
          public          postgres    false    236            �           0    0    vuelo_empleado_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.vuelo_empleado_id_seq', 1, false);
          public          postgres    false    238            �           0    0    vuelo_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.vuelo_id_seq', 1, true);
          public          postgres    false    239            �   R   x�3��qq�Up�,���K-�2�ή�q��8�RK�s�J��9C�2KRSJM8sS�2��b��@��[Qb^r*W� ��      �   7   x�3�t�O��KW076�2�sL̹�83��J��-���#.ǐ+F��� �;�      {   �   x�5�ۭ�@C���+`x�l�u\��*�B���)	���:iW���d���
<R�Td"�N}��}̄ce�VA0{��_�����M�_��
9�ږڛנ�?�Pno]֑�vy���&cj�����I��i#��Y>�0��ș�i����!�=E0����/��V���Ú{٩Y�97�R��S<8a���?�9t+��:[���3�̷<�      }   3   x�3�,���/�W�)�2��MMN��L��E\F��ŉi�%���E�+F��� ��,�         ;   x�3�tM���ϭ�2�(J��,�UH��q:�g�ss�e�($�$y1z\\\ *�      �     x�=PMo�0=ۿ"�i�L�Mch��q��6j!AI�T~�R�b������h��A���>e�V��6���R��>:���ԛ	7S��8�r�48��g��:H+�Q[W:��I�`B�}���A�c�/���'�Q~�-*�����8��6�<��)�
/h������%�n���:��w(=�t�q��e=�n85�(�ʄ�Pw�YO)�>�N�3:�('��ӋU9����o�y�z��x�L����O��k���,��?�����p�      �   �  x�}�Mj#1�ץS������3�8�@6�Q���-���~J�`^hSU�W��R?�r� A9���Y��2.�Z��u�A�๞��{+����
�<5�|?Ց:��J۠4���5��7��8���R0`__S[���c�))��Ĝ�MKe��魖R�@�y��s�.Uw)ޥ��ߦHJ�J�t*�2�h�$��}]�k]/����Mq�R�S^��08#�tj���7��5}~�sj&;����^WAo���I{�e[��/�	Z�c����8��<�c�w�Ѳ~�L{>����l���%M�t��fq c4j�%����{��܉C���(إ�_Z>N���}`aH��?��<N_��{G���~ŏ<�]-��(<�~Jw��C�=S��A�1P����^��$ŷ|���`���$�D      �   �   x�]PA!;�c6*���;���$3�1�iU)(i�(I��$%�'ɨ�'�&�I���$���\�,�C,��O��z���d�C�bkb���7��I�M�x�$�*����Sg��Q�g	Z�Ag���V��ŮuҌ*�[U�u�`9���r-t$ �+���J�{5i�p�0�o����x^���_��>�f/�l�n�^y��篼x��3��a�lHS�      �   �   x�-���0�G1�%�����B��n�yh�k),�I�Ҧ���#7�����=򃼚�Ț�[BB�=E%�	��R�T����GKvU��Ӈ_��uQ鼺Ꞵ` ���P�f���HK�\��g4�20φ�\�?���O����1��,�      �   ]  x�U��qD1���M������/�O�a��ј�G���9���8��f
�EIzJٌR��t]��)a�e�5�E�I-Q�^,���Z�����W�	�Mn��$K �"��%1�Q��|�2}��G�C۪ �EX�iUv\�0��,�ԓ�&m�I\pzH�-��u���q����&׍Ƹ:*�K�̺Z��`y?j��D6���<���c:l��{�֍'{���+���-�J�] oh©�7�@�����*��%��K:�/�t�_/� �d���6{/�W��n�}���ڕ�ի��w�5���Py����`6���`1�l�ۃ�`9XV���Η��0�kc�      �   '  x�EU�n�8}}��`Ar8�<6�6'�8h���06i#K��$�~�Rn
?zf8snRd��AyM�.}��u����M2$�i2J�F�2"JyO7s~��s��?~��4�d%0�-i���Ɛg�u��oC���4�k-*�� *mä}A���ty���n�y&�4FRi�RK",[E��|��C{=��w�������h�al𐖹����Ks�uZQ�i&G:F�8��X�qt�S�޽��<���P�ELE�k<��N;��Cq��������Z�u��~F��X�O��hw�~�p�D� �r�j"fc��~�F�p�>�\�AUxM�¨����E���m�m�s��mʃ�B\6� /*XK�>xә��\UiS2�\D��
��=��%�8�U����b$(qtӏ�����-�'rQ�v�܇��T�c��i����}���e!k���@�/z�A{Ǟ��1���>��0�dLd�,K=0�@G!r`ec�8Nc��\Ec��NF1(Tֳ��sZ2����M����QlL(@g�e�N���k/�'�\���y�Z�FG�Q��b�o�~��v��ƪ�`��EԪf�F�7��m��~���ϙ�U���u񉁣 �x���՜C>�8W�c��)]N1v��~ߥ<@��(���+ܱ�?`6�������^��n����n�^,X:�_La���^u��oȲ���j��+0'Y㽣����.������s�D�}"}I3������#FեW=I�Do V�~��b�|�x_V$l1�RX8`-����c�>ۿ����f��_.f@��\d�=�����}7'�]���+����Z/���<�S{�b�C��W��H=M�#�"���F	�Xz��f�T��>#P|*8u�����������
�U�̄�����U�MGH�n��dע�j�[��B=�[��0ÀxѾ�V��)b�@<lVCoi�����޿���ьY��_:m��w����ԏK�P��C�b=�׏�n�W�|�L�+�j�3z�U�8~�� ���Y5����'�K8	�h���^4p"��e���j���i��gy�^      �   Z   x����0��0L��I�����(΋�
hB$a(�&�^������n�1�{*p�4%�}�Bv�8gמmk|Q�Ou����?��P      �   �  x�MW[��:�Ns�`l�^f�븒pz�N��n�,�D�c���~̟���5|�5���l���Y�q�c�؋�zl�c*����ҙ�j��N�w�%f�c��Ż���?����L)�7�^�-�i�뱩�����c
H3O����u\CZ�k�ϴĒ�W���3+�BX=��c`m�5_��,�<b��ò���8~\��~���1?�YX�30��<Y�%X�8���S	��cD|��b�n�sc�&�_7�S
��p�H�|�p�|}gB*����b^b�s�_�:v;�ٱRѮ�U��.��Y����i�(���
�|�0��z�4rm�t�[��v�.ŵ���*g�s�3_��QұR����̡n����nF*�X�LX����Y��F��2l���A�D7�2xI����=���l~�F:x�9;D�^o��Ŝ�C�7���K�x�o,5�ԣ��|c%`t���1�{n��4b�J����~CW*���&+�5X��*�&�b����`�K�5YR4AAn�3Y-�0��cx/R�G�:��.Ix<Ȩݕ�RK�>��U���dc�=�9<��2J�d/���)ʴ��w��g���qe;��6?�*,���%�֜���=[��.{1�3��Ӣ�����:9(�-P��|���8QU3�ǝf�"�%1Gϫ�� �u9J��;�uY򣓀��u�sa�Z�2G��]�'I57X�M��׾�)E�v���o�U�L�M,��DIP����o1C�x�j��j�A��f�S�0-�X:;�#���LR�w�j�Up�3P��0��o���E�lЀ�ЩT����nè�]]AޣG��#�w
<��<��R��us
�lh�=S�m-��I=Lz��U�Y?O�Nn���$��(p�btM�d�"6���F�H����$����`���fm�Iǒ�+١<��6KUE� ȣ�9�ԏ�Rw�q�y���Q��oH�@uȣȒ��_��ɿ�iV�2iCZ�W��\�m��a`�x���ld�����g�ȫ&-V5>�NNm�<�܈�v���+\F��Ĩ�+� 6��n��t:���W�#I�AWPH<��<.�m\J]���7U�@ư�i�g���	U�<�Qy�m�mo�Kyc9��?ju�G�����je4՚V�6|#c��#c�����6�SLC���q�rBuoT�~J��}	SJ�G�Vѯ{#8jS�uM=^���[����da�35H�Fd~a�b�vU؏�S���F�m��N��L���v��<u�6s�����g��R�'�=��·Xm����hh�o�t1=$�qAِ-�j�d�'��_�4C���m�$��Zg�
�҇�����as���ƃ-����������י�R)A�J�ȣG`L�S]��7Q�����z�I�rD��N�-m�;�/N6	��^����e�K����o�P;�O�	\7}}(3�M��ST��6]&��_}B�7�Ny�w9�����>��Y #/m�*��@����Ԓ�����#��W��7\/����=liOW!�V� �K\>��"	�,R�nif�*�~ގh�G���ڶ%c���myA~3�B{�"6��jW�e�Ǝ�����Ė��z/;�:�.ۚJ�*�����惈ju���/AJ��A���J�;)�~�>ۺ|�=�����rr��e���*�^w{r�k![?��">��ɏ�;:�C�Ց,dw�v!��+��Vg����d�)��;��Js.��:`�z��W��{@k%O��������/ }�      �   `   x����0�C1���^�!��Јa�T����jɸ�ね��]�N�Jd)3t�a��(ȓ�4��P�,�ft�y���?jS�B��#�aB      �   e   x���E1�P�;A�1����x�%:����̀b0����\Po��O�d�zY��V��CG�._j��j�PQ˦��(<��Tv��{$��H�P��     