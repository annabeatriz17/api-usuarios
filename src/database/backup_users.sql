PGDMP  ,                    }            users    17.4    17.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16409    users    DATABASE     k   CREATE DATABASE users WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'pt-BR';
    DROP DATABASE users;
                     postgres    false            �            1259    16420    post    TABLE     �   CREATE TABLE public.post (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.post;
       public         heap r       postgres    false            �            1259    16419    post_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.post_id_seq;
       public               postgres    false    220            �           0    0    post_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.post_id_seq OWNED BY public.post.id;
          public               postgres    false    219            �            1259    16411    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    photo text
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    16410    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public               postgres    false    218            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               postgres    false    217            ]           2604    16423    post id    DEFAULT     b   ALTER TABLE ONLY public.post ALTER COLUMN id SET DEFAULT nextval('public.post_id_seq'::regclass);
 6   ALTER TABLE public.post ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    220    220            \           2604    16414    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            �          0    16420    post 
   TABLE DATA           ;   COPY public.post (id, title, content, user_id) FROM stdin;
    public               postgres    false    220   [       �          0    16411    users 
   TABLE DATA           A   COPY public.users (id, name, email, password, photo) FROM stdin;
    public               postgres    false    218   �                   0    0    post_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.post_id_seq', 6, true);
          public               postgres    false    219                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 54, true);
          public               postgres    false    217            a           2606    16427    post post_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.post DROP CONSTRAINT post_pkey;
       public                 postgres    false    220            _           2606    16418    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    218            b           2606    16428    post post_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.post DROP CONSTRAINT post_user_id_fkey;
       public               postgres    false    4703    220    218            �   :   x�3��/.Q0�t��+I=�8%_�
 b�\�i#,�F�F\fic,�Ɯ�\1z\\\ �I      �   �  x�uVKr�8]�O��D ��8�J�3q9����$XA�*�rMe��bv��Ĺɜd� ����g�E�{���3�Go�nnl�ag�ÿO���.��-��T��+7g�ip�� �V{��Sx�6(�1���������o�Y���s��l�'�oݞ����:�K�S{�7o�}0�kh��E�����k�]?ln���=���pQ�K:WO;���Q���j�������[s�؂��~�S �@`Q��e(ȷ����>�����}F�iF�"%�(�^,�ˌT�}w�Q��%F�F�A倳��N[�����Nw�?�pa6���ۊ�\;����B~�:�a��Qִ��Wz�qQ�#���*v���w����{��΢�sK�Q���!��nBCl �'债�74�œ���i�^zg�fA-���J4T�Ý�����	$inj:���ֺ���W�V��ph^{?��"X1M�s����}�w�τL i�̀(�����Ú<X\�=V���?6i� ���U�<�,�m�M:^r�����EH�5%sA����d=~��i Na�&�Q�&��̟�~�fЊ4����yp�=���$K��}i�=�(�=��<�!�H	w�ӣ�F�@R�Bp?
^���z��� �OSSj�"$)ʴ9FI�D��*�N&�b/i�jN5YAp���6\�� �bVŁc����Xkj��p�`u���cEټ�w�-�8�)��=� ��
��?N�yFI�b*s��A!��''y���y �O���IP�L�M|�u:$�/���/\}	h�()�T�l3n{�Y29kʯ�3
9�OpE~U��^�?�Psz�;��!k���x����%=F�k��	�t�)<m�I�Ė��L�s�,�)H��R��7����&!~YP���]��0s62^#-'
5q���$s����]]]�����     