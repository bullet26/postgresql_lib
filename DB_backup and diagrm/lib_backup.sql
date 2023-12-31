PGDMP     #    (                {           library    15.3    15.3 D    6           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            7           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            8           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            9           1262    16398    library    DATABASE     �   CREATE DATABASE library WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1251';
    DROP DATABASE library;
                postgres    false            �            1259    16400    authors    TABLE     �   CREATE TABLE public.authors (
    id integer NOT NULL,
    surname character varying(255) NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.authors;
       public         heap    postgres    false            :           0    0    COLUMN authors.id    COMMENT     g   COMMENT ON COLUMN public.authors.id IS 'Унікальний ідентифікатор автора';
          public          postgres    false    215            ;           0    0    COLUMN authors.surname    COMMENT     M   COMMENT ON COLUMN public.authors.surname IS 'Прізвище автора';
          public          postgres    false    215            <           0    0    COLUMN authors.name    COMMENT     B   COMMENT ON COLUMN public.authors.name IS 'Ім''я автора';
          public          postgres    false    215            �            1259    16399    authors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.authors_id_seq;
       public          postgres    false    215            =           0    0    authors_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;
          public          postgres    false    214            �            1259    16409    books    TABLE     0  CREATE TABLE public.books (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(255),
    "bookCover" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "authorId" integer
);
    DROP TABLE public.books;
       public         heap    postgres    false            >           0    0    COLUMN books.id    COMMENT     c   COMMENT ON COLUMN public.books.id IS 'Унікальний ідентифікатор книги';
          public          postgres    false    217            ?           0    0    COLUMN books.title    COMMENT     A   COMMENT ON COLUMN public.books.title IS 'Назва книги';
          public          postgres    false    217            @           0    0    COLUMN books.description    COMMENT     E   COMMENT ON COLUMN public.books.description IS 'Опис книги';
          public          postgres    false    217            A           0    0    COLUMN books."bookCover"    COMMENT     i   COMMENT ON COLUMN public.books."bookCover" IS 'Посилання на обкладинку книги';
          public          postgres    false    217            �            1259    16408    books_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.books_id_seq;
       public          postgres    false    217            B           0    0    books_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;
          public          postgres    false    216            �            1259    16483    ratings    TABLE     �   CREATE TABLE public.ratings (
    id integer NOT NULL,
    rate integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "bookId" integer
);
    DROP TABLE public.ratings;
       public         heap    postgres    false            �            1259    16482    ratings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ratings_id_seq;
       public          postgres    false    225            C           0    0    ratings_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;
          public          postgres    false    224            �            1259    16464    reader_books    TABLE     �   CREATE TABLE public.reader_books (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "readerId" integer,
    "bookId" integer
);
     DROP TABLE public.reader_books;
       public         heap    postgres    false            �            1259    16463    reader_books_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reader_books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.reader_books_id_seq;
       public          postgres    false    223            D           0    0    reader_books_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.reader_books_id_seq OWNED BY public.reader_books.id;
          public          postgres    false    222            �            1259    16423    readers    TABLE     {  CREATE TABLE public.readers (
    id integer NOT NULL,
    surname character varying(255) NOT NULL,
    name character varying(255),
    email character varying(255),
    password character varying(255),
    status character varying(255) DEFAULT 'active'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.readers;
       public         heap    postgres    false            E           0    0    COLUMN readers.id    COMMENT     g   COMMENT ON COLUMN public.readers.id IS 'Унікальний ідентифікатор читача';
          public          postgres    false    219            F           0    0    COLUMN readers.surname    COMMENT     M   COMMENT ON COLUMN public.readers.surname IS 'Прізвище читача';
          public          postgres    false    219            G           0    0    COLUMN readers.name    COMMENT     B   COMMENT ON COLUMN public.readers.name IS 'Ім''я читача';
          public          postgres    false    219            H           0    0    COLUMN readers.email    COMMENT     Z   COMMENT ON COLUMN public.readers.email IS 'Електронна пошта читача';
          public          postgres    false    219            I           0    0    COLUMN readers.password    COMMENT     J   COMMENT ON COLUMN public.readers.password IS 'Пароль читача';
          public          postgres    false    219            J           0    0    COLUMN readers.status    COMMENT     H   COMMENT ON COLUMN public.readers.status IS 'Статус читача';
          public          postgres    false    219            �            1259    16422    readers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.readers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.readers_id_seq;
       public          postgres    false    219            K           0    0    readers_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.readers_id_seq OWNED BY public.readers.id;
          public          postgres    false    218            �            1259    16452    tags    TABLE     �   CREATE TABLE public.tags (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "bookId" integer
);
    DROP TABLE public.tags;
       public         heap    postgres    false            L           0    0    COLUMN tags.id    COMMENT     b   COMMENT ON COLUMN public.tags.id IS 'Унікальний ідентифікатор мітки';
          public          postgres    false    221            M           0    0    COLUMN tags.title    COMMENT     @   COMMENT ON COLUMN public.tags.title IS 'Назва мітки';
          public          postgres    false    221            �            1259    16451    tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.tags_id_seq;
       public          postgres    false    221            N           0    0    tags_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;
          public          postgres    false    220            ~           2604    16403 
   authors id    DEFAULT     h   ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);
 9   ALTER TABLE public.authors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215                       2604    16412    books id    DEFAULT     d   ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);
 7   ALTER TABLE public.books ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16486 
   ratings id    DEFAULT     h   ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);
 9   ALTER TABLE public.ratings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    16467    reader_books id    DEFAULT     r   ALTER TABLE ONLY public.reader_books ALTER COLUMN id SET DEFAULT nextval('public.reader_books_id_seq'::regclass);
 >   ALTER TABLE public.reader_books ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16426 
   readers id    DEFAULT     h   ALTER TABLE ONLY public.readers ALTER COLUMN id SET DEFAULT nextval('public.readers_id_seq'::regclass);
 9   ALTER TABLE public.readers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    16455    tags id    DEFAULT     b   ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);
 6   ALTER TABLE public.tags ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            )          0    16400    authors 
   TABLE DATA           N   COPY public.authors (id, surname, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   �J       +          0    16409    books 
   TABLE DATA           j   COPY public.books (id, title, description, "bookCover", "createdAt", "updatedAt", "authorId") FROM stdin;
    public          postgres    false    217   �J       3          0    16483    ratings 
   TABLE DATA           O   COPY public.ratings (id, rate, "createdAt", "updatedAt", "bookId") FROM stdin;
    public          postgres    false    225   �N       1          0    16464    reader_books 
   TABLE DATA           Z   COPY public.reader_books (id, "createdAt", "updatedAt", "readerId", "bookId") FROM stdin;
    public          postgres    false    223   �N       -          0    16423    readers 
   TABLE DATA           g   COPY public.readers (id, surname, name, email, password, status, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    219   EO       /          0    16452    tags 
   TABLE DATA           M   COPY public.tags (id, title, "createdAt", "updatedAt", "bookId") FROM stdin;
    public          postgres    false    221   �O       O           0    0    authors_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.authors_id_seq', 2, true);
          public          postgres    false    214            P           0    0    books_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.books_id_seq', 4, true);
          public          postgres    false    216            Q           0    0    ratings_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.ratings_id_seq', 2, true);
          public          postgres    false    224            R           0    0    reader_books_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.reader_books_id_seq', 5, true);
          public          postgres    false    222            S           0    0    readers_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.readers_id_seq', 13, true);
          public          postgres    false    218            T           0    0    tags_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.tags_id_seq', 4, true);
          public          postgres    false    220            �           2606    16407    authors authors_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_pkey;
       public            postgres    false    215            �           2606    16416    books books_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public            postgres    false    217            �           2606    16488    ratings ratings_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_pkey;
       public            postgres    false    225            �           2606    16469    reader_books reader_books_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.reader_books
    ADD CONSTRAINT reader_books_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.reader_books DROP CONSTRAINT reader_books_pkey;
       public            postgres    false    223            �           2606    16471 -   reader_books reader_books_readerId_bookId_key 
   CONSTRAINT     z   ALTER TABLE ONLY public.reader_books
    ADD CONSTRAINT "reader_books_readerId_bookId_key" UNIQUE ("readerId", "bookId");
 Y   ALTER TABLE ONLY public.reader_books DROP CONSTRAINT "reader_books_readerId_bookId_key";
       public            postgres    false    223    223            �           2606    16433    readers readers_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.readers
    ADD CONSTRAINT readers_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.readers DROP CONSTRAINT readers_email_key;
       public            postgres    false    219            �           2606    16431    readers readers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.readers
    ADD CONSTRAINT readers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.readers DROP CONSTRAINT readers_pkey;
       public            postgres    false    219            �           2606    16457    tags tags_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.tags DROP CONSTRAINT tags_pkey;
       public            postgres    false    221            �           2606    16417    books books_authorId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.books
    ADD CONSTRAINT "books_authorId_fkey" FOREIGN KEY ("authorId") REFERENCES public.authors(id) ON UPDATE CASCADE ON DELETE SET NULL;
 E   ALTER TABLE ONLY public.books DROP CONSTRAINT "books_authorId_fkey";
       public          postgres    false    3206    217    215            �           2606    16489    ratings ratings_bookId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT "ratings_bookId_fkey" FOREIGN KEY ("bookId") REFERENCES public.books(id) ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY public.ratings DROP CONSTRAINT "ratings_bookId_fkey";
       public          postgres    false    3208    225    217            �           2606    16477 %   reader_books reader_books_bookId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reader_books
    ADD CONSTRAINT "reader_books_bookId_fkey" FOREIGN KEY ("bookId") REFERENCES public.books(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.reader_books DROP CONSTRAINT "reader_books_bookId_fkey";
       public          postgres    false    217    3208    223            �           2606    16472 '   reader_books reader_books_readerId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reader_books
    ADD CONSTRAINT "reader_books_readerId_fkey" FOREIGN KEY ("readerId") REFERENCES public.readers(id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.reader_books DROP CONSTRAINT "reader_books_readerId_fkey";
       public          postgres    false    223    3212    219            �           2606    16458    tags tags_bookId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tags
    ADD CONSTRAINT "tags_bookId_fkey" FOREIGN KEY ("bookId") REFERENCES public.books(id) ON UPDATE CASCADE ON DELETE SET NULL;
 A   ALTER TABLE ONLY public.tags DROP CONSTRAINT "tags_bookId_fkey";
       public          postgres    false    217    3208    221            )   Z   x�3�J�M,*,M�t-�L�P�M,�L�4202�5��54P02�2��24�315�60�#�e��Z���镏�����R����HR\1z\\\ ��      +   �  x����r[���go20@L��r�B��UVM��@j0X�U �$5~l,K�t�na�$C �
缂O��߇��^�p����ݧ?~ݸ)��t���=��t����NR����#6ϕ��9ԗ��Q�D�z�{�2'���y�G�xk^Ф�%8�c=6���v����8��S��w#j@t��7���%p�1]�����G�/�)��⳧��L�{��B�D.{�#�Ss��f��E��A��'�̻xT�a�Pfߗ cd��AČVx8^�O�鑎�:3H�vD�)|v$�R�'O��b&�[Σ���^m���y�oe��a�i��Z-S�*m�3�ͺ_Zϴݛ����R>��Y��Z��.��A���-հ��/o�����iՂ��S��4�^�+���fs#����ٕE�Un����egi�p#���+7�K��!��PI%إ�Ȥ�[��h-�5��xO�P�:�&�`!@P�(��8�����}���>��	_�<��PHt� �d-�
J����{���`s�����1fo��}�6�)1��P��>��}�����C˧���&�b��C��#!��ٜ�tj:�d��_V�@�9��5#�zf�D]�O����d��	�}��?��dJ��{i��ӳ���\�)����,�	�[�r�7=�\��j^�����Ce��]-�����T�r�)����eBU���. �_"k�D٪K#s�j��o���g�҃�~%|\~N�9b��}~������l}v���-�HBL���tqj��0���ө�׳�L��H GN�,L����c��8�ѹ�|2E �C �K�/��
;�=�O\H������t\�0*�=Vx��#6�A�ۖ<��:W��1�������Bn���{��ڦ�y��]�y�f3����ť��]�\��J?t���O�1�      3   =   x�3�4�4202�5��54T04�20�24ѳ�4�60�'e�e�M������V�HR\1z\\\ �W      1   P   x��λ�0C�:��%z~�͒���R��>��\�Z$�au���x��)�m3փ�u�π�����+��|m[�L nTl7D      -   �   x����
�0F��?O�^:d2�i�RpQ��M�A	�"^�^�^�>�q=vc��O%���X V�[D.�a��ʴ��Bj��W-K�4���E�r�&�;d�x�v\w���L�ؾ����@9δE�:V���{��^a@�      /   {   x���=
�@��z���a�tuo�	ll$���X69�.����e8ܼ��lB�--sÖH��(�_H����y�����Z=�������j[�w>���"�Y��';���(�֎`A �Ob=�     