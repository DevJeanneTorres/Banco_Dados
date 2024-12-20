PGDMP  
    &            
    |           restaurante    12.20    16.4 )    G           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            H           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            I           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            J           1262    24589    restaurante    DATABASE     �   CREATE DATABASE restaurante WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE restaurante;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            K           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    6            �            1259    24667    comissoes_id_seq    SEQUENCE     y   CREATE SEQUENCE public.comissoes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.comissoes_id_seq;
       public          postgres    false    6            �            1259    24639 	   comissoes    TABLE     P  CREATE TABLE public.comissoes (
    id integer DEFAULT nextval('public.comissoes_id_seq'::regclass) NOT NULL,
    funcionario_id integer,
    comissao_valor real,
    comissao_situacao character varying(1) DEFAULT 'A'::character varying,
    data_criacao timestamp without time zone,
    data_atualizacao timestamp without time zone
);
    DROP TABLE public.comissoes;
       public         heap    postgres    false    213    6            �            1259    24665    funcionarios_id_seq    SEQUENCE     |   CREATE SEQUENCE public.funcionarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.funcionarios_id_seq;
       public          postgres    false    6            �            1259    24596    funcionarios    TABLE     0  CREATE TABLE public.funcionarios (
    id integer DEFAULT nextval('public.funcionarios_id_seq'::regclass) NOT NULL,
    funcionario_codigo character varying(20),
    funcionario_nome character varying(100),
    funcionario_situacao character varying(1) DEFAULT 'A'::character varying,
    funcionario_comissao real,
    funcionario_cargo character varying(30),
    data_criacao timestamp without time zone,
    data_atualizacao timestamp without time zone,
    CONSTRAINT funcionarios_funcionario_nome_check CHECK (((funcionario_nome)::text <> NULL::text))
);
     DROP TABLE public.funcionarios;
       public         heap    postgres    false    212    6            �            1259    24661    itens_vendas_id_seq    SEQUENCE     |   CREATE SEQUENCE public.itens_vendas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.itens_vendas_id_seq;
       public          postgres    false    6            �            1259    24624    itens_vendas    TABLE     _  CREATE TABLE public.itens_vendas (
    id integer DEFAULT nextval('public.itens_vendas_id_seq'::regclass) NOT NULL,
    produto_id integer NOT NULL,
    vendas_id integer NOT NULL,
    item_valo0r real,
    item_quantidade integer,
    item_total real,
    data_criacao timestamp without time zone,
    data_atualizacao timestamp without time zone
);
     DROP TABLE public.itens_vendas;
       public         heap    postgres    false    210    6            �            1259    24657    mesa_id_seq    SEQUENCE     t   CREATE SEQUENCE public.mesa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.mesa_id_seq;
       public          postgres    false    6            �            1259    24590    mesas    TABLE     6  CREATE TABLE public.mesas (
    id integer DEFAULT nextval('public.mesa_id_seq'::regclass) NOT NULL,
    mesas_codigo character varying(20),
    mesa_situacao character varying(1) DEFAULT 'A'::character varying,
    data_criacao timestamp without time zone,
    data_atualizacao timestamp without time zone
);
    DROP TABLE public.mesas;
       public         heap    postgres    false    208    6            �            1259    24663    produtos_id_seq    SEQUENCE     x   CREATE SEQUENCE public.produtos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.produtos_id_seq;
       public          postgres    false    6            �            1259    24618    produtos    TABLE     �  CREATE TABLE public.produtos (
    id integer DEFAULT nextval('public.produtos_id_seq'::regclass) NOT NULL,
    produto_codigo character varying(20),
    produto_nome character varying(60),
    produto_valor real,
    produto_situacao character varying(1) DEFAULT 'A'::character varying,
    data_criacao timestamp without time zone,
    data_atualizacao timestamp without time zone
);
    DROP TABLE public.produtos;
       public         heap    postgres    false    211    6            �            1259    24659    vendas_id_seq    SEQUENCE     v   CREATE SEQUENCE public.vendas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.vendas_id_seq;
       public          postgres    false    6            �            1259    24602    vendas    TABLE       CREATE TABLE public.vendas (
    id integer DEFAULT nextval('public.vendas_id_seq'::regclass) NOT NULL,
    funcionario_id integer,
    mesas_id integer,
    venda_codigo character varying(20),
    venda_valor real,
    venda_total real,
    venda_desconto real,
    venda_situacao character varying(1) DEFAULT 'A'::character varying,
    data_criacao timestamp without time zone,
    data_atualizacao timestamp without time zone,
    CONSTRAINT vendas_venda_total_check CHECK ((venda_total > (0)::double precision))
);
    DROP TABLE public.vendas;
       public         heap    postgres    false    209    6            >          0    24639 	   comissoes 
   TABLE DATA           z   COPY public.comissoes (id, funcionario_id, comissao_valor, comissao_situacao, data_criacao, data_atualizacao) FROM stdin;
    public          postgres    false    207   �4       :          0    24596    funcionarios 
   TABLE DATA           �   COPY public.funcionarios (id, funcionario_codigo, funcionario_nome, funcionario_situacao, funcionario_comissao, funcionario_cargo, data_criacao, data_atualizacao) FROM stdin;
    public          postgres    false    203   �4       =          0    24624    itens_vendas 
   TABLE DATA           �   COPY public.itens_vendas (id, produto_id, vendas_id, item_valo0r, item_quantidade, item_total, data_criacao, data_atualizacao) FROM stdin;
    public          postgres    false    206   �6       9          0    24590    mesas 
   TABLE DATA           `   COPY public.mesas (id, mesas_codigo, mesa_situacao, data_criacao, data_atualizacao) FROM stdin;
    public          postgres    false    202   �6       <          0    24618    produtos 
   TABLE DATA           �   COPY public.produtos (id, produto_codigo, produto_nome, produto_valor, produto_situacao, data_criacao, data_atualizacao) FROM stdin;
    public          postgres    false    205   �7       ;          0    24602    vendas 
   TABLE DATA           �   COPY public.vendas (id, funcionario_id, mesas_id, venda_codigo, venda_valor, venda_total, venda_desconto, venda_situacao, data_criacao, data_atualizacao) FROM stdin;
    public          postgres    false    204   �7       L           0    0    comissoes_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.comissoes_id_seq', 1, false);
          public          postgres    false    213            M           0    0    funcionarios_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.funcionarios_id_seq', 1, false);
          public          postgres    false    212            N           0    0    itens_vendas_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.itens_vendas_id_seq', 1, false);
          public          postgres    false    210            O           0    0    mesa_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.mesa_id_seq', 1, false);
          public          postgres    false    208            P           0    0    produtos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.produtos_id_seq', 1, false);
          public          postgres    false    211            Q           0    0    vendas_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.vendas_id_seq', 1, false);
          public          postgres    false    209            �
           2606    24644    comissoes comissoes_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.comissoes
    ADD CONSTRAINT comissoes_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.comissoes DROP CONSTRAINT comissoes_pkey;
       public            postgres    false    207            �
           2606    24601    funcionarios funcionarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT funcionarios_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.funcionarios DROP CONSTRAINT funcionarios_pkey;
       public            postgres    false    203            �
           2606    24628    itens_vendas itens_vendas_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.itens_vendas
    ADD CONSTRAINT itens_vendas_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.itens_vendas DROP CONSTRAINT itens_vendas_pkey;
       public            postgres    false    206            �
           2606    24595    mesas mesas_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.mesas
    ADD CONSTRAINT mesas_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.mesas DROP CONSTRAINT mesas_pkey;
       public            postgres    false    202            �
           2606    24623    produtos produtos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.produtos DROP CONSTRAINT produtos_pkey;
       public            postgres    false    205            �
           2606    24607    vendas vendas_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.vendas DROP CONSTRAINT vendas_pkey;
       public            postgres    false    204            �
           2606    24650 (   comissoes comissoes_funcionario_id_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.comissoes
    ADD CONSTRAINT comissoes_funcionario_id_fkey1 FOREIGN KEY (funcionario_id) REFERENCES public.funcionarios(id);
 R   ALTER TABLE ONLY public.comissoes DROP CONSTRAINT comissoes_funcionario_id_fkey1;
       public          postgres    false    203    207    2733            �
           2606    24629 )   itens_vendas itens_vendas_produto_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.itens_vendas
    ADD CONSTRAINT itens_vendas_produto_id_fkey FOREIGN KEY (produto_id) REFERENCES public.produtos(id);
 S   ALTER TABLE ONLY public.itens_vendas DROP CONSTRAINT itens_vendas_produto_id_fkey;
       public          postgres    false    206    2737    205            �
           2606    24634 (   itens_vendas itens_vendas_vendas_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.itens_vendas
    ADD CONSTRAINT itens_vendas_vendas_id_fkey FOREIGN KEY (vendas_id) REFERENCES public.vendas(id);
 R   ALTER TABLE ONLY public.itens_vendas DROP CONSTRAINT itens_vendas_vendas_id_fkey;
       public          postgres    false    204    206    2735            �
           2606    24608 !   vendas vendas_funcionario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_funcionario_id_fkey FOREIGN KEY (funcionario_id) REFERENCES public.funcionarios(id);
 K   ALTER TABLE ONLY public.vendas DROP CONSTRAINT vendas_funcionario_id_fkey;
       public          postgres    false    204    203    2733            �
           2606    24613    vendas vendas_mesas_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_mesas_id_fkey FOREIGN KEY (mesas_id) REFERENCES public.funcionarios(id);
 E   ALTER TABLE ONLY public.vendas DROP CONSTRAINT vendas_mesas_id_fkey;
       public          postgres    false    203    2733    204            >      x������ � �      :     x����n�0E��W�𡗳S�6@ࠆ]d��TbS4YP�����U�6w#����Ñd_�����B���M�j&s!�3�6\�*{��A*.��\<)�(*�J��O;E\�j�h��q�֛��I�D��%���1�K7`�Ќ�&z��o�Nˡ��.r�����	�0���Q�`����!���Z	Bc��npI��a����kw1���2����;�-�k��	��O�'�5��̇҉�!�1�0�k�YjRV����i�a."�`2$)��!v��l/�"�hIb�l;�k7���&JR㓡��XmQ�J�㻅��O��=s��]���-���+�E��B�s���qs�Zn1!�!��O���͗�U�%��'�a�����
i��oFkP�e8t�|��T�8�t��Uo!�"1>��ƭ�.�V�!B�{yAt�\5y�Q;���>��}��o��v�UG���")Lh�u�d"�m���]471Kވ�T�h�b��!S[tM2Rg����,u'j��l�]�b�����n�F[      =      x������ � �      9   �   x��Ա�0D�ښ"�Н$[N��A��#�R� �w���U�ksuߥ]~�?�fs^u�?N�ɍ��'�8����'ί��g��;��s�կ�{���x��y��z��{��|��}��~���������ş�?ǟ�?ǟ�?ǟ�?ǟ�?ǟ�?ǟ�?ǟ�������/�QeL      <      x������ � �      ;   �   x���1��0�z���@.EJv��D���;���4�a	�00 D���6�a�A���ǃ|��/������9Y:dy�kTd0��i]+P�2�L��Z�����m/��DE֔Q=ٞA[�[�(4�յNTd��,]�ٵ.Td]��ڈ�k�.��m��3j�w�#R�M-��w������M5=-�.yS�-́���]�B롱jl?R&XY���^{���8�X%�A     