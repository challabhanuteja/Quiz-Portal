PGDMP          %            
    x            QuizPortal1    13.0    13.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17119    QuizPortal1    DATABASE     i   CREATE DATABASE "QuizPortal1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE "QuizPortal1";
                postgres    false            �            1259    17151 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    17149    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            �            1259    17161    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    17159    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            �            1259    17143    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    17141    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            �            1259    17352    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    17350    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    227            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    226            �            1259    17133    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    17131    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            �            1259    17122    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    17120    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            �            1259    17374    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    17426    home_captcha    TABLE     �   CREATE TABLE public.home_captcha (
    id integer NOT NULL,
    captcha_input character varying(5) NOT NULL,
    captcha_img character varying(100) NOT NULL
);
     DROP TABLE public.home_captcha;
       public         heap    postgres    false            �            1259    17424    home_captcha_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_captcha_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.home_captcha_id_seq;
       public          postgres    false    232            �           0    0    home_captcha_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.home_captcha_id_seq OWNED BY public.home_captcha.id;
          public          postgres    false    231            �            1259    17253    home_multiplechoicequestion    TABLE     �  CREATE TABLE public.home_multiplechoicequestion (
    id integer NOT NULL,
    question_no integer NOT NULL,
    question text NOT NULL,
    option1 character varying(100) NOT NULL,
    option2 character varying(100) NOT NULL,
    option3 character varying(100) NOT NULL,
    option4 character varying(100) NOT NULL,
    answer character varying(100) NOT NULL,
    quiz_id integer NOT NULL,
    is_multiple_ans character varying(1) NOT NULL
);
 /   DROP TABLE public.home_multiplechoicequestion;
       public         heap    postgres    false            �            1259    17251 "   home_multiplechoicequestion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_multiplechoicequestion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.home_multiplechoicequestion_id_seq;
       public          postgres    false    223            �           0    0 "   home_multiplechoicequestion_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.home_multiplechoicequestion_id_seq OWNED BY public.home_multiplechoicequestion.id;
          public          postgres    false    222            �            1259    17195    home_qpuser    TABLE     -  CREATE TABLE public.home_qpuser (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    gender character varying(10) NOT NULL,
    mobile_number character varying(10) NOT NULL,
    idno character varying(10) NOT NULL,
    date_of_birth date NOT NULL,
    is_teacher boolean NOT NULL,
    is_student boolean NOT NULL,
    school_id integer NOT NULL,
    section_id integer NOT NULL,
    standard_id integer NOT NULL
);
    DROP TABLE public.home_qpuser;
       public         heap    postgres    false            �            1259    17208    home_qpuser_groups    TABLE     �   CREATE TABLE public.home_qpuser_groups (
    id integer NOT NULL,
    qpuser_id integer NOT NULL,
    group_id integer NOT NULL
);
 &   DROP TABLE public.home_qpuser_groups;
       public         heap    postgres    false            �            1259    17206    home_qpuser_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_qpuser_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.home_qpuser_groups_id_seq;
       public          postgres    false    213            �           0    0    home_qpuser_groups_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.home_qpuser_groups_id_seq OWNED BY public.home_qpuser_groups.id;
          public          postgres    false    212            �            1259    17193    home_qpuser_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_qpuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.home_qpuser_id_seq;
       public          postgres    false    211            �           0    0    home_qpuser_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.home_qpuser_id_seq OWNED BY public.home_qpuser.id;
          public          postgres    false    210            �            1259    17282    home_qpuser_user_permissions    TABLE     �   CREATE TABLE public.home_qpuser_user_permissions (
    id integer NOT NULL,
    qpuser_id integer NOT NULL,
    permission_id integer NOT NULL
);
 0   DROP TABLE public.home_qpuser_user_permissions;
       public         heap    postgres    false            �            1259    17280 #   home_qpuser_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_qpuser_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.home_qpuser_user_permissions_id_seq;
       public          postgres    false    225            �           0    0 #   home_qpuser_user_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.home_qpuser_user_permissions_id_seq OWNED BY public.home_qpuser_user_permissions.id;
          public          postgres    false    224            �            1259    17243 	   home_quiz    TABLE     �  CREATE TABLE public.home_quiz (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    date_created timestamp with time zone NOT NULL,
    start_time timestamp with time zone NOT NULL,
    quiz_description character varying(200) NOT NULL,
    duration integer NOT NULL,
    assigned_to_id integer NOT NULL,
    created_by_id integer NOT NULL,
    end_time timestamp with time zone NOT NULL
);
    DROP TABLE public.home_quiz;
       public         heap    postgres    false            �            1259    17241    home_quiz_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_quiz_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.home_quiz_id_seq;
       public          postgres    false    221            �           0    0    home_quiz_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.home_quiz_id_seq OWNED BY public.home_quiz.id;
          public          postgres    false    220            �            1259    17216    home_school    TABLE     �   CREATE TABLE public.home_school (
    id integer NOT NULL,
    school_name character varying(200) NOT NULL,
    address text NOT NULL
);
    DROP TABLE public.home_school;
       public         heap    postgres    false            �            1259    17214    home_school_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_school_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.home_school_id_seq;
       public          postgres    false    215            �           0    0    home_school_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.home_school_id_seq OWNED BY public.home_school.id;
          public          postgres    false    214            �            1259    17395 
   home_score    TABLE     �   CREATE TABLE public.home_score (
    id integer NOT NULL,
    score integer NOT NULL,
    qpuser_id integer NOT NULL,
    quizid_id integer NOT NULL,
    max_score integer NOT NULL
);
    DROP TABLE public.home_score;
       public         heap    postgres    false            �            1259    17393    home_score_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_score_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.home_score_id_seq;
       public          postgres    false    230            �           0    0    home_score_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.home_score_id_seq OWNED BY public.home_score.id;
          public          postgres    false    229            �            1259    17235    home_section    TABLE     �   CREATE TABLE public.home_section (
    id integer NOT NULL,
    section_name character varying(50) NOT NULL,
    standard_id integer NOT NULL
);
     DROP TABLE public.home_section;
       public         heap    postgres    false            �            1259    17233    home_section_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_section_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.home_section_id_seq;
       public          postgres    false    219            �           0    0    home_section_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.home_section_id_seq OWNED BY public.home_section.id;
          public          postgres    false    218            �            1259    17227    home_standard    TABLE     �   CREATE TABLE public.home_standard (
    id integer NOT NULL,
    standard_name character varying(50) NOT NULL,
    school_id integer NOT NULL
);
 !   DROP TABLE public.home_standard;
       public         heap    postgres    false            �            1259    17225    home_standard_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_standard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.home_standard_id_seq;
       public          postgres    false    217            �           0    0    home_standard_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.home_standard_id_seq OWNED BY public.home_standard.id;
          public          postgres    false    216            �           2604    17154    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �           2604    17164    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �           2604    17146    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �           2604    17355    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    17136    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �           2604    17125    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            �           2604    17429    home_captcha id    DEFAULT     r   ALTER TABLE ONLY public.home_captcha ALTER COLUMN id SET DEFAULT nextval('public.home_captcha_id_seq'::regclass);
 >   ALTER TABLE public.home_captcha ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            �           2604    17256    home_multiplechoicequestion id    DEFAULT     �   ALTER TABLE ONLY public.home_multiplechoicequestion ALTER COLUMN id SET DEFAULT nextval('public.home_multiplechoicequestion_id_seq'::regclass);
 M   ALTER TABLE public.home_multiplechoicequestion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    17198    home_qpuser id    DEFAULT     p   ALTER TABLE ONLY public.home_qpuser ALTER COLUMN id SET DEFAULT nextval('public.home_qpuser_id_seq'::regclass);
 =   ALTER TABLE public.home_qpuser ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �           2604    17211    home_qpuser_groups id    DEFAULT     ~   ALTER TABLE ONLY public.home_qpuser_groups ALTER COLUMN id SET DEFAULT nextval('public.home_qpuser_groups_id_seq'::regclass);
 D   ALTER TABLE public.home_qpuser_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �           2604    17285    home_qpuser_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.home_qpuser_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.home_qpuser_user_permissions_id_seq'::regclass);
 N   ALTER TABLE public.home_qpuser_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    17246    home_quiz id    DEFAULT     l   ALTER TABLE ONLY public.home_quiz ALTER COLUMN id SET DEFAULT nextval('public.home_quiz_id_seq'::regclass);
 ;   ALTER TABLE public.home_quiz ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    17219    home_school id    DEFAULT     p   ALTER TABLE ONLY public.home_school ALTER COLUMN id SET DEFAULT nextval('public.home_school_id_seq'::regclass);
 =   ALTER TABLE public.home_school ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    17398    home_score id    DEFAULT     n   ALTER TABLE ONLY public.home_score ALTER COLUMN id SET DEFAULT nextval('public.home_score_id_seq'::regclass);
 <   ALTER TABLE public.home_score ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            �           2604    17238    home_section id    DEFAULT     r   ALTER TABLE ONLY public.home_section ALTER COLUMN id SET DEFAULT nextval('public.home_section_id_seq'::regclass);
 >   ALTER TABLE public.home_section ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    17230    home_standard id    DEFAULT     t   ALTER TABLE ONLY public.home_standard ALTER COLUMN id SET DEFAULT nextval('public.home_standard_id_seq'::regclass);
 ?   ALTER TABLE public.home_standard ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            z          0    17151 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   ��       |          0    17161    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   ��       x          0    17143    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   ��       �          0    17352    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    227   �       v          0    17133    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   n%      t          0    17122    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   &      �          0    17374    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    228   �(      �          0    17426    home_captcha 
   TABLE DATA           F   COPY public.home_captcha (id, captcha_input, captcha_img) FROM stdin;
    public          postgres    false    232   �)      �          0    17253    home_multiplechoicequestion 
   TABLE DATA           �   COPY public.home_multiplechoicequestion (id, question_no, question, option1, option2, option3, option4, answer, quiz_id, is_multiple_ans) FROM stdin;
    public          postgres    false    223   dO      ~          0    17195    home_qpuser 
   TABLE DATA           �   COPY public.home_qpuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, gender, mobile_number, idno, date_of_birth, is_teacher, is_student, school_id, section_id, standard_id) FROM stdin;
    public          postgres    false    211   ZR      �          0    17208    home_qpuser_groups 
   TABLE DATA           E   COPY public.home_qpuser_groups (id, qpuser_id, group_id) FROM stdin;
    public          postgres    false    213   W      �          0    17282    home_qpuser_user_permissions 
   TABLE DATA           T   COPY public.home_qpuser_user_permissions (id, qpuser_id, permission_id) FROM stdin;
    public          postgres    false    225   3W      �          0    17243 	   home_quiz 
   TABLE DATA           �   COPY public.home_quiz (id, name, date_created, start_time, quiz_description, duration, assigned_to_id, created_by_id, end_time) FROM stdin;
    public          postgres    false    221   PW      �          0    17216    home_school 
   TABLE DATA           ?   COPY public.home_school (id, school_name, address) FROM stdin;
    public          postgres    false    215   Y      �          0    17395 
   home_score 
   TABLE DATA           P   COPY public.home_score (id, score, qpuser_id, quizid_id, max_score) FROM stdin;
    public          postgres    false    230   FY      �          0    17235    home_section 
   TABLE DATA           E   COPY public.home_section (id, section_name, standard_id) FROM stdin;
    public          postgres    false    219   �Y      �          0    17227    home_standard 
   TABLE DATA           E   COPY public.home_standard (id, standard_name, school_id) FROM stdin;
    public          postgres    false    217   �Y      �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);
          public          postgres    false    204            �           0    0    django_admin_log_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1041, true);
          public          postgres    false    226            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);
          public          postgres    false    202            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 30, true);
          public          postgres    false    200            �           0    0    home_captcha_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.home_captcha_id_seq', 1040, true);
          public          postgres    false    231            �           0    0 "   home_multiplechoicequestion_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.home_multiplechoicequestion_id_seq', 102, true);
          public          postgres    false    222            �           0    0    home_qpuser_groups_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.home_qpuser_groups_id_seq', 1, false);
          public          postgres    false    212            �           0    0    home_qpuser_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.home_qpuser_id_seq', 14, true);
          public          postgres    false    210            �           0    0 #   home_qpuser_user_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.home_qpuser_user_permissions_id_seq', 1, false);
          public          postgres    false    224            �           0    0    home_quiz_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.home_quiz_id_seq', 48, true);
          public          postgres    false    220            �           0    0    home_school_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.home_school_id_seq', 1, false);
          public          postgres    false    214            �           0    0    home_score_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.home_score_id_seq', 27, true);
          public          postgres    false    229            �           0    0    home_section_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.home_section_id_seq', 1, false);
          public          postgres    false    218            �           0    0    home_standard_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.home_standard_id_seq', 1, false);
          public          postgres    false    216            �           2606    17191    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            �           2606    17177 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            �           2606    17166 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            �           2606    17156    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207            �           2606    17168 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            �           2606    17148 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205            �           2606    17361 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    227            �           2606    17140 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            �           2606    17138 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203            �           2606    17130 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201            �           2606    17381 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    228            �           2606    17431    home_captcha home_captcha_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.home_captcha
    ADD CONSTRAINT home_captcha_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.home_captcha DROP CONSTRAINT home_captcha_pkey;
       public            postgres    false    232            �           2606    17261 <   home_multiplechoicequestion home_multiplechoicequestion_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.home_multiplechoicequestion
    ADD CONSTRAINT home_multiplechoicequestion_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.home_multiplechoicequestion DROP CONSTRAINT home_multiplechoicequestion_pkey;
       public            postgres    false    223            �           2606    17213 *   home_qpuser_groups home_qpuser_groups_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.home_qpuser_groups
    ADD CONSTRAINT home_qpuser_groups_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.home_qpuser_groups DROP CONSTRAINT home_qpuser_groups_pkey;
       public            postgres    false    213            �           2606    17290 F   home_qpuser_groups home_qpuser_groups_qpuser_id_group_id_bf37868c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.home_qpuser_groups
    ADD CONSTRAINT home_qpuser_groups_qpuser_id_group_id_bf37868c_uniq UNIQUE (qpuser_id, group_id);
 p   ALTER TABLE ONLY public.home_qpuser_groups DROP CONSTRAINT home_qpuser_groups_qpuser_id_group_id_bf37868c_uniq;
       public            postgres    false    213    213            �           2606    17203    home_qpuser home_qpuser_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.home_qpuser
    ADD CONSTRAINT home_qpuser_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.home_qpuser DROP CONSTRAINT home_qpuser_pkey;
       public            postgres    false    211            �           2606    17337 [   home_qpuser_user_permissions home_qpuser_user_permiss_qpuser_id_permission_id_57be4be0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.home_qpuser_user_permissions
    ADD CONSTRAINT home_qpuser_user_permiss_qpuser_id_permission_id_57be4be0_uniq UNIQUE (qpuser_id, permission_id);
 �   ALTER TABLE ONLY public.home_qpuser_user_permissions DROP CONSTRAINT home_qpuser_user_permiss_qpuser_id_permission_id_57be4be0_uniq;
       public            postgres    false    225    225            �           2606    17287 >   home_qpuser_user_permissions home_qpuser_user_permissions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.home_qpuser_user_permissions
    ADD CONSTRAINT home_qpuser_user_permissions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.home_qpuser_user_permissions DROP CONSTRAINT home_qpuser_user_permissions_pkey;
       public            postgres    false    225            �           2606    17205 $   home_qpuser home_qpuser_username_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.home_qpuser
    ADD CONSTRAINT home_qpuser_username_key UNIQUE (username);
 N   ALTER TABLE ONLY public.home_qpuser DROP CONSTRAINT home_qpuser_username_key;
       public            postgres    false    211            �           2606    17248    home_quiz home_quiz_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.home_quiz
    ADD CONSTRAINT home_quiz_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.home_quiz DROP CONSTRAINT home_quiz_pkey;
       public            postgres    false    221            �           2606    17224    home_school home_school_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.home_school
    ADD CONSTRAINT home_school_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.home_school DROP CONSTRAINT home_school_pkey;
       public            postgres    false    215            �           2606    17400    home_score home_score_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.home_score
    ADD CONSTRAINT home_score_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.home_score DROP CONSTRAINT home_score_pkey;
       public            postgres    false    230            �           2606    17240    home_section home_section_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.home_section
    ADD CONSTRAINT home_section_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.home_section DROP CONSTRAINT home_section_pkey;
       public            postgres    false    219            �           2606    17232     home_standard home_standard_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.home_standard
    ADD CONSTRAINT home_standard_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.home_standard DROP CONSTRAINT home_standard_pkey;
       public            postgres    false    217            �           1259    17192    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            �           1259    17188 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209            �           1259    17189 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            �           1259    17174 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205            �           1259    17372 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    227            �           1259    17373 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    227            �           1259    17383 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    228            �           1259    17382 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    228            �           1259    17332 ,   home_multiplechoicequestion_quiz_id_7db1c67e    INDEX     w   CREATE INDEX home_multiplechoicequestion_quiz_id_7db1c67e ON public.home_multiplechoicequestion USING btree (quiz_id);
 @   DROP INDEX public.home_multiplechoicequestion_quiz_id_7db1c67e;
       public            postgres    false    223            �           1259    17302 $   home_qpuser_groups_group_id_bd580474    INDEX     g   CREATE INDEX home_qpuser_groups_group_id_bd580474 ON public.home_qpuser_groups USING btree (group_id);
 8   DROP INDEX public.home_qpuser_groups_group_id_bd580474;
       public            postgres    false    213            �           1259    17301 %   home_qpuser_groups_qpuser_id_845964da    INDEX     i   CREATE INDEX home_qpuser_groups_qpuser_id_845964da ON public.home_qpuser_groups USING btree (qpuser_id);
 9   DROP INDEX public.home_qpuser_groups_qpuser_id_845964da;
       public            postgres    false    213            �           1259    17333    home_qpuser_school_id_84f0faf6    INDEX     [   CREATE INDEX home_qpuser_school_id_84f0faf6 ON public.home_qpuser USING btree (school_id);
 2   DROP INDEX public.home_qpuser_school_id_84f0faf6;
       public            postgres    false    211            �           1259    17334    home_qpuser_section_id_8b971279    INDEX     ]   CREATE INDEX home_qpuser_section_id_8b971279 ON public.home_qpuser USING btree (section_id);
 3   DROP INDEX public.home_qpuser_section_id_8b971279;
       public            postgres    false    211            �           1259    17335     home_qpuser_standard_id_ec888887    INDEX     _   CREATE INDEX home_qpuser_standard_id_ec888887 ON public.home_qpuser USING btree (standard_id);
 4   DROP INDEX public.home_qpuser_standard_id_ec888887;
       public            postgres    false    211            �           1259    17349 3   home_qpuser_user_permissions_permission_id_2da19c30    INDEX     �   CREATE INDEX home_qpuser_user_permissions_permission_id_2da19c30 ON public.home_qpuser_user_permissions USING btree (permission_id);
 G   DROP INDEX public.home_qpuser_user_permissions_permission_id_2da19c30;
       public            postgres    false    225            �           1259    17348 /   home_qpuser_user_permissions_qpuser_id_6970b152    INDEX     }   CREATE INDEX home_qpuser_user_permissions_qpuser_id_6970b152 ON public.home_qpuser_user_permissions USING btree (qpuser_id);
 C   DROP INDEX public.home_qpuser_user_permissions_qpuser_id_6970b152;
       public            postgres    false    225            �           1259    17288 "   home_qpuser_username_dd7daaa4_like    INDEX     r   CREATE INDEX home_qpuser_username_dd7daaa4_like ON public.home_qpuser USING btree (username varchar_pattern_ops);
 6   DROP INDEX public.home_qpuser_username_dd7daaa4_like;
       public            postgres    false    211            �           1259    17325 !   home_quiz_assigned_to_id_5ae9fd2a    INDEX     a   CREATE INDEX home_quiz_assigned_to_id_5ae9fd2a ON public.home_quiz USING btree (assigned_to_id);
 5   DROP INDEX public.home_quiz_assigned_to_id_5ae9fd2a;
       public            postgres    false    221            �           1259    17326     home_quiz_created_by_id_4835fb71    INDEX     _   CREATE INDEX home_quiz_created_by_id_4835fb71 ON public.home_quiz USING btree (created_by_id);
 4   DROP INDEX public.home_quiz_created_by_id_4835fb71;
       public            postgres    false    221            �           1259    17411    home_score_qpuser_id_eeb61268    INDEX     Y   CREATE INDEX home_score_qpuser_id_eeb61268 ON public.home_score USING btree (qpuser_id);
 1   DROP INDEX public.home_score_qpuser_id_eeb61268;
       public            postgres    false    230            �           1259    17412    home_score_quizid_id_d3a6f0cc    INDEX     Y   CREATE INDEX home_score_quizid_id_d3a6f0cc ON public.home_score USING btree (quizid_id);
 1   DROP INDEX public.home_score_quizid_id_d3a6f0cc;
       public            postgres    false    230            �           1259    17314 !   home_section_standard_id_1d17993d    INDEX     a   CREATE INDEX home_section_standard_id_1d17993d ON public.home_section USING btree (standard_id);
 5   DROP INDEX public.home_section_standard_id_1d17993d;
       public            postgres    false    219            �           1259    17308     home_standard_school_id_88b74c52    INDEX     _   CREATE INDEX home_standard_school_id_88b74c52 ON public.home_standard USING btree (school_id);
 4   DROP INDEX public.home_standard_school_id_88b74c52;
       public            postgres    false    217            �           2606    17183 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    205    209    2977            �           2606    17178 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    207    2982    209            �           2606    17169 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    203    2972    205            �           2606    17362 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    203    2972    227            �           2606    17367 D   django_admin_log django_admin_log_user_id_c564eba6_fk_home_qpuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_home_qpuser_id FOREIGN KEY (user_id) REFERENCES public.home_qpuser(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_home_qpuser_id;
       public          postgres    false    227    211    2990            �           2606    17327 X   home_multiplechoicequestion home_multiplechoicequestion_quiz_id_7db1c67e_fk_home_quiz_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_multiplechoicequestion
    ADD CONSTRAINT home_multiplechoicequestion_quiz_id_7db1c67e_fk_home_quiz_id FOREIGN KEY (quiz_id) REFERENCES public.home_quiz(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.home_multiplechoicequestion DROP CONSTRAINT home_multiplechoicequestion_quiz_id_7db1c67e_fk_home_quiz_id;
       public          postgres    false    221    223    3014            �           2606    17296 H   home_qpuser_groups home_qpuser_groups_group_id_bd580474_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_qpuser_groups
    ADD CONSTRAINT home_qpuser_groups_group_id_bd580474_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.home_qpuser_groups DROP CONSTRAINT home_qpuser_groups_group_id_bd580474_fk_auth_group_id;
       public          postgres    false    207    213    2982            �           2606    17291 J   home_qpuser_groups home_qpuser_groups_qpuser_id_845964da_fk_home_qpuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_qpuser_groups
    ADD CONSTRAINT home_qpuser_groups_qpuser_id_845964da_fk_home_qpuser_id FOREIGN KEY (qpuser_id) REFERENCES public.home_qpuser(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.home_qpuser_groups DROP CONSTRAINT home_qpuser_groups_qpuser_id_845964da_fk_home_qpuser_id;
       public          postgres    false    211    2990    213            �           2606    17263 <   home_qpuser home_qpuser_school_id_84f0faf6_fk_home_school_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_qpuser
    ADD CONSTRAINT home_qpuser_school_id_84f0faf6_fk_home_school_id FOREIGN KEY (school_id) REFERENCES public.home_school(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.home_qpuser DROP CONSTRAINT home_qpuser_school_id_84f0faf6_fk_home_school_id;
       public          postgres    false    3004    211    215            �           2606    17269 >   home_qpuser home_qpuser_section_id_8b971279_fk_home_section_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_qpuser
    ADD CONSTRAINT home_qpuser_section_id_8b971279_fk_home_section_id FOREIGN KEY (section_id) REFERENCES public.home_section(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.home_qpuser DROP CONSTRAINT home_qpuser_section_id_8b971279_fk_home_section_id;
       public          postgres    false    211    3009    219            �           2606    17275 @   home_qpuser home_qpuser_standard_id_ec888887_fk_home_standard_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_qpuser
    ADD CONSTRAINT home_qpuser_standard_id_ec888887_fk_home_standard_id FOREIGN KEY (standard_id) REFERENCES public.home_standard(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.home_qpuser DROP CONSTRAINT home_qpuser_standard_id_ec888887_fk_home_standard_id;
       public          postgres    false    211    217    3006            �           2606    17343 U   home_qpuser_user_permissions home_qpuser_user_per_permission_id_2da19c30_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_qpuser_user_permissions
    ADD CONSTRAINT home_qpuser_user_per_permission_id_2da19c30_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.home_qpuser_user_permissions DROP CONSTRAINT home_qpuser_user_per_permission_id_2da19c30_fk_auth_perm;
       public          postgres    false    225    2977    205            �           2606    17338 Q   home_qpuser_user_permissions home_qpuser_user_per_qpuser_id_6970b152_fk_home_qpus    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_qpuser_user_permissions
    ADD CONSTRAINT home_qpuser_user_per_qpuser_id_6970b152_fk_home_qpus FOREIGN KEY (qpuser_id) REFERENCES public.home_qpuser(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.home_qpuser_user_permissions DROP CONSTRAINT home_qpuser_user_per_qpuser_id_6970b152_fk_home_qpus;
       public          postgres    false    211    225    2990            �           2606    17315 ?   home_quiz home_quiz_assigned_to_id_5ae9fd2a_fk_home_standard_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_quiz
    ADD CONSTRAINT home_quiz_assigned_to_id_5ae9fd2a_fk_home_standard_id FOREIGN KEY (assigned_to_id) REFERENCES public.home_standard(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.home_quiz DROP CONSTRAINT home_quiz_assigned_to_id_5ae9fd2a_fk_home_standard_id;
       public          postgres    false    3006    217    221            �           2606    17320 <   home_quiz home_quiz_created_by_id_4835fb71_fk_home_qpuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_quiz
    ADD CONSTRAINT home_quiz_created_by_id_4835fb71_fk_home_qpuser_id FOREIGN KEY (created_by_id) REFERENCES public.home_qpuser(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.home_quiz DROP CONSTRAINT home_quiz_created_by_id_4835fb71_fk_home_qpuser_id;
       public          postgres    false    2990    221    211            �           2606    17401 :   home_score home_score_qpuser_id_eeb61268_fk_home_qpuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_score
    ADD CONSTRAINT home_score_qpuser_id_eeb61268_fk_home_qpuser_id FOREIGN KEY (qpuser_id) REFERENCES public.home_qpuser(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.home_score DROP CONSTRAINT home_score_qpuser_id_eeb61268_fk_home_qpuser_id;
       public          postgres    false    230    211    2990            �           2606    17406 8   home_score home_score_quizid_id_d3a6f0cc_fk_home_quiz_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_score
    ADD CONSTRAINT home_score_quizid_id_d3a6f0cc_fk_home_quiz_id FOREIGN KEY (quizid_id) REFERENCES public.home_quiz(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.home_score DROP CONSTRAINT home_score_quizid_id_d3a6f0cc_fk_home_quiz_id;
       public          postgres    false    3014    221    230            �           2606    17309 B   home_section home_section_standard_id_1d17993d_fk_home_standard_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_section
    ADD CONSTRAINT home_section_standard_id_1d17993d_fk_home_standard_id FOREIGN KEY (standard_id) REFERENCES public.home_standard(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.home_section DROP CONSTRAINT home_section_standard_id_1d17993d_fk_home_standard_id;
       public          postgres    false    217    3006    219            �           2606    17303 @   home_standard home_standard_school_id_88b74c52_fk_home_school_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_standard
    ADD CONSTRAINT home_standard_school_id_88b74c52_fk_home_school_id FOREIGN KEY (school_id) REFERENCES public.home_school(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.home_standard DROP CONSTRAINT home_standard_school_id_88b74c52_fk_home_school_id;
       public          postgres    false    217    3004    215            z      x������ � �      |      x������ � �      x   >  x�}�Kn� ��p���
~����TY6M,9�k;���3Ì�dg�������ת�UM�{��d�	�_�=4l��Z�O��""��_��-"
 �[�C����%�>��a�L�ǆ=��@d�Ҁt@�� ����R�M55&�شn�TE2:�@2b0R	�Z����K;���b�e]���!-�Je�IvNE%B�l�uo�L�K���$]�J����@�N�
d�4?��a���o�ni�·���^��3���ʱJE����dt~4�:�O���=F�� ��GC��t�e��e�5G؂І��T�$��L�J�$q!�y��&*�j�ӭ��uE'�K6W�R$JX�K�()a�0���S�.�p�$���*aTG5DT�A!DD� ,�T�C���-��7��YM�o���JٖF/��J����?"�[���7�9��������;
�\�Q��%�\!/)��B&%����nm���]�c���W���)q��oP=La��Z�����_b�%F>:D�K�����0�q����-UD'�8�	�с#NCP�!��b���a�      �      x�}ݿ�5=��x�*�0� �Hv�+pl;�,`;���d{�&�_K�&����<��>�T�T���`�����I_8�`=��@���/��/����/������������_������������/���������?�Q���������ډ���������o}�$��w��zx�?� ���4��F�E��*��#S~������G�8��~��ט�P���q��qRĭg�|�����8�q����I���qV��#����4��Ǵ9r��b���<Ky�9oy�؄�s�|�ω���c�~~�Y4�s5��nx"�g��8s;��z��O��u�� �sCf��|&.?
sG��̢%쇵�9����=��(�k��s�8�un��\������&��e���2S]��D?z&�I̅���1�h�Ͱ�_:7f~��ʬ/�g	-՟su�|���,y`��������@��'�_ ����P\P>WRe�M�bx���se�se U��s���+�+�2����?%�\�\(*���q>bn|n�����������1�h~�Zpsc�sc05F�&=����se�se0UF�`<H&���\�\L��D~�IN	1W��T�:V�{ϔ+��+��2��8�i5wa���1�E~|���s���1��1���L�{����L��/�G�Bx.��+��+�Ee����ֹ��\�\L�ѯ���.��:W?W�Re�k���3�����J����L�y���C�C�1��������rc�sc(5�����?�5��P3lI��/�� ���(W�>W�Re<Q�9�0������P���x�~���3�����P������#�����P���۰��ɕ�ϕ�T��13��se�se8U���E�Śrg�sg8u�b�6�Z?��;ß;é3�os��97�?7�Scl�����?�7�����pj���ۘx.2���X?5�b����97�?7�Sc,�o��se�b���1�c1~�a���ßé1�7D���97�?7�����M���'17�?7f�n����d�g(ù1��1�wc"1noQ��^�1�sc���x����o'��Y�3�sg���D��߮��I̝Y�;�~w�} ����ͬܙ��3�wg8&�\C�I̝Y����D���.��s<�ܙ��3�wg<�p�&7��'�ܙ��3�����d��ܙ��3�wg<1p�֝�˝Y�;#Eg| 7��|�\���2�*3c ���Sɕ�ϕ�T��p�[�sْ\�\I��1��w�Vre�se$Uf� ���z$WF>WFRef����g2Jre�se$Uf� ��}���H3���~�qN�#�#�03�o4�\�S˟�"�/3h�,�w�}��}�ԗ�7T�s.�0�0Z�h~�3�����0����h�Z5F?FSa �o~�Л�����0�臷ߊ�ϸCsa�sa4b���������M}�x�cN9��0��0�
1|#�y΍��ͳ���)?�U:��2��2�*_��ҹhi�D�se,Ub%)�9�se�se,U�8p�s*�\�\K�����?�������X���,?�k˕�ϕ�T��~brm�����X��$��0��0[�}�������˝�ϝ�������9-w�>w�Rg��E@��-���X�3u���k�S���X�3�cE�C��x��<��5�w{�"����z��<�Eq��j�}>Z<���̑�C� �l�y �rmi�T�gqa�ي��sh�Ts�QL�,�Z<�̓͑J�~On:�<�ţ��<��GS+~�+�<�����<��Jj��_�x�9�'�#��b�E��<I�9�6}J.�C�G�q����9��l@j�4��	�� hV:���x(���G?��
4�JD B�Y�0��WF�CI	0ϷL�ħb�HP B㉋_��	��HV�C���w��ۯ�@��P�����QHb�Cc���Xf%:2��@P��K�Ƭ�@�fb��6�QE�90�P����=�v`6x`&=���} 1>0?0 �P�em�Z���P�D�>B�^�"��"����� (��E�`6�`&I�����'-
�X��0���PGJz?iQ���
<ԇ�ȇ�'�hTC
f2�n��F�`6�`&V�>:��w '�(T�
f��)�A��_Ȃ�Ђ�l���p��
\0]0/�P��uF����3	��"��˱U��)TR��>��-��0���K��-�u�`6�`&j�>`�+���Nhѧ̤"�}^��~�f�f��F���+��SCf2*>|U��ٰ��܁����D�c,
�ȃ��A��y�i��^af�f��#H����,u�`6�`&�����L�U��������N�
�0�0C`�1�_m��~�ff���ɸ��hTcf�:��ҝᘅF�G��#D�ĝ��=��F5"a&��s�c���E��0�J�И�^c�OZ��ٸ��`���C��p���&�'̤<4�ӳ�yN?�0�0P�PC���hTCf2
O���~ТPR�I)D�z�/Q|�u��B%������P��
��
3Q���g,����S�f�
#�%p��g�f�f#H�=�{{R��ِ��͂�����ha6jaf�`1�$�y/&�[�\�Y.X!�g=�~Afcf����z]�
�0�0�_�B���	-
���	���� ���W�� �������7�^bh�2̯1♾z��B�a6�a��ߡ�V}�w��E��0q��C�����6Cf#�/ҰCa<K���-��Qj��T�w����-ո��6�P�>,W�W�B6̆6�_��;T�����I�F5�a��;��Q�q^���o�p����w�>4Ǹ�~af��/�C}9t��/��l�Ô�Q>�Zv��,��l�ÔԨ�H�wB����SS�f<�׵�P
�0�055j� �I�}/�@�QSS�f"��5�0�055j� r�[8�oZЇ�؇��Q3�s�{��a6�aj*Ԍ1� ��K b6bj*��c�����@�ALM��{�r��SQ��ALM��{i���*$�l(��T(�cH������vM�,
��^~�{�'������
�v+=�������
[w�����;11-
��f�U���Ȉi�P�ǐt��11-5
���k�A)x�l|Ĵ�(���^�5!1"1-5
b��5�Y�� �i�PCH����s�$f�$���1�0�!�����0R�0Ɛ���鴰��0R�0��ȸZ
,���
�1��u"��X*#�	�
����T*#�	c������ˬ����aE�y����P	�N���0(�4TF�FGU�Z(�4TF꓇�-ςu�(T*#�	c9������[*���~X���/�om���'�!$��nA%��0S�(fz��:@(�4Tfj'">�
*���E1�X�_4��0S�(�����T*35*V���F�^AA%��0S�(fzN>�
*���E1���r��*@Ѩ�J�L�����{	���n�H��� �v��E��U�h���g��:�B�QX ��iT��B���F��F�O�jM� 5�c��h��ТQ݊����[s��\��\�T(�V����ժݲ�
�a00�-
�-� �P�1��G�u���� ��'��]i�(TC% S����˚��/
�X	�T(ު\�`PX	h�`*�
X>h�=�+�� L�Z[��ա��X	�T����ߋia%����P+&zl��i�%����Q+&z��.���hT�% S�����ТQ� L�Z1��5�{�/�4X05j�L�y��M_�%��@�Q+fz��to�,� J�Z!�g������`	��Q���D�(�4X(5Jb�LǙ�K@�%�R�$fz,���X,�%1��14���Z�i�FI�"�Ѳ�7-    �`	��(��|2�Z4��@�Q��9(�-�`	��(��<���ТQ� N��E�pG�3C(�4X85Jb9���]��hT�%�S�$�z2�-�`	�Q>�[�۞K@�%�S�4�z4*u�K@�%�S�4F��2�x���h	��(��]~�{�����FK �FixV�n@�%����Q�H��]
���p	��(/ $l��*�p	X�Q�H/��_�%���R�4��ظ�8���p	X�Q�H�5��M.����1�cW_A�%����F��+3@�%���R�,&{�/��ТQ���e1�$��g��K�J}���8�S(�4X2�����	tA�%������ ���t���S�% c	����>��ӢO���%,�~����X,KXL���|�I�K@�% c	�Z`��-��`	�X�b��H��M,���%,� ����}j�$,1G"'��V+�Jx�~D��n���X	HV"B���C�_X	h�$+�0�d�8�'-
�X	HV"B�Y3��'�(Tc% Y	q.�:�V+�JDh,�e�U(�4V���ck�y�|����J@�j���A�%����Čw��5T�����`	HXb�o-0d�ТQ���%"ty�<���X,	Kxh�sxiN(�4X��Pyt��Y�Zm�����X��Ȭ��`	HX"B-Qw�#(�4X����F�E�,	Kxh�sx=�.�4V���L?���?GTa%���������{>)�4V�����(�--�4V�����6V��E�,	KDh̜��|X,	Kxh,�=�5yX`	h�&,�~�'��
+���d%<b9��窏����J`��#ȉ���b�%����Dd������Y,a�X	LV�3c�o?Yܵr+����d%"T���Yu���P	LT�3}����߾X˸���D��3��}��qC%0Q��{	9?�%����J`�j��S��Ţ���D%<t�>oﱠ�P	LT�Cc1p��t*���D%"���O׹�cA%������ƒ�FW5`A%����D���F��g{XP	l�&*���i�miA%����D�jlq���T�����g��q��XH	l�&)�>~\6�
ᅔ�FJ`���
�G9'�BJ`#%0I	��������j�&)�ˏ��vW�/
�H	LR�C} �'��0R)�IJD�~���Eb%����Dl�k����P(�	JDh�~�;GT!%���������2�ܜ`!%������[=-S;�-b!%������>�PF��M�B5R���T@�%��I�Bu[U$)1��O���C�(T�[E�:����NI`!%�۰"I��7��X��nQ�������AM���	V�Vt�V$)1��P+��N�ܹ�iT���G�o�J�ڼ�۽"I��x��H�E��E��{s(`�׽j�n�$%��j�k�@�v�趱HRb�-���=�j�&(1�&Q~ҿ+u`��E%0A����b�4'�����$��)
��y
'�����$"Tcݟ�6N'��I̽aѼ�?`�$�q��D�Ƽ�܍-�p�8	LNb�m�ؔ�3},�6N���{�(��]�'�����$"4��kI�$�a�����G���tӢO���$"T��Ohѧ�I`bs�"�QzV���I`�$01��7��wF�P�(	LJb�_�Δ9J%�II̽��G�u��P�(	LJb���,���}j�&%1�{Ir~ݛJ%�IID��A9�W�P�(	LJb�u׫�BI`�$0)��iC�w��P�(	LJb���Ǹ�G���FI`Rs�1�c���%�����$��r	��%�����$��i*tܝ�(�6J���P~ ^��hT�$0)��7�B�u�M%�����$"t���yo#'�����$��v*v6<<'�����$��yʿz�#��I`�$09	%|���~�E�'��I̽����;#U8	l�&'�L�ߘˁX8	l�&'1�.T~Os�;��I`�$09����A���I`�$09	�!$��6�p�8	LNb�����뮧p�8	�N�B�/ѻ�"P(�J�m�|��|d%�������xo�(���%,���|�~ТP����$��T���I`�$0;	l���U�p�8	�NboRc��ТP����$`���٣�I`�$09�����>���I`�$09	��R�n�����I`r�j輿~Q��I`r
1oN|�Ѕ���I`r�>�y�����I`r�w�$w,�6N��������v_���I`�$09�����S,�6N���;�<K�E�Z4�q���^D��ug�(���%����o���@	LP"B5��U����@	LPb?��'﫠X@	l�&(��~��}'(���%`�j5��P(�	J���~��t0P(A	J���
 _�v)����$%������R!%�����M��tix��-v�m�%*{��1�]��
+A���d%`ou�8��TX	j�%+{�+?���@��KP�����Ylb�X	JV��W`��"���X	JV�Ca���k��JPC%(Q	�_Q�z�b3ۆJP�����h�C��϶�������ZL'���P	JT�X�|z�V;A7}JT�&X",�>�
*A��D%`��c����
*A��D%"�bRJ�~ҢO��D%`��~Ȝ�����X	JV��X@��	-
�X	JV��X����Ra%�����m���\�}4V�+A�JD���|�uH�j�%+{s,r�)V�+A�J��k�u�oQa%������X�nf��zS�d%`o�5��7�(Tc%(Y	�[d� �[�V�+A�J��"k������j�%+���x�~ҢP���d%`o��Qx/�����JP��Ǿ���E�+A�J��"�?���	V�+A�JD��E��5*�5V�����E�$�-
�X	JV�Y�Aϋ�TX	j�%+{��X�����j�%+����ozN�����JP��?�Z4�����-��>��j�%+����]Ra%�����-�Ǽw=��KP���Ț3��	-�`	JX�Y"g��
-A����% r|\������h	JZ"B9��Γ8*�5X����E��~�a9X�,A	K��"k�==��KP�%(a	��ʍ�>�T`	j�%,{���?��^�%���������K��h	JZ�Y$jg5%*�5Z�����E֌Ej�aZ�������Rp�U���h	JZ�Y@/OhQ��KP�뛣�y͈
.A���%`�����!\�.A�K��#k �����KP������3%E���FKP�����	^��/
�h	JZ�YK��䜢-A����%`�������B5Z����й����(T�%(i	�{d!�}�
-A����%<�؏WXNhQ�FKP����B��|���FKP���P���0�
-A����%`�E6��Th	j�%-��|ד�BKP�%(i	�{d�x�.*�5Z�����G�`>[xR�%����hh�9�#ڨ��`	JX�Y0��4K��KP�:�����-�5V�����C�y�`��JPc%(Y	x�d���JPc%(Y	�;d���9�T�*A�Jx&b�������JPC%(Q��[w�i���P	JT�Yc/~B�:5T�����wB�p�8	JN��X���9�N�'A�I��k���v�p�8	JN"B�o"��p�8	JN��Xc]"D���IPf��6�E�O�
&A���$��XS�\r��L���$,���_�(S�$(3	�����^L
&A���$l;��r/����IPfN �)�-��0	�L�b�G��;L�&A�IX8��7'�(T�$(1	ܻc��T0	j�%&�~�ob�R�$�a����N�%�(�P�(	JJ"2�5�L%A����$<8�7��%A����$<�ߖ�8�����FIPR�z_�
$A���$p�5��w��@� 	JH"B�o����IP�$8!	��͗    ݥ�@� 	NH"B��X�����Ip�$8!	�{asYw�.�7H���P�Ojr�̸@� 	NH�^�|�<��Ip�$8!	�{as�5��Is��A��D�~oiq^�BIp�$8)	�]Ёƺ_Tn7J����Pyt��:�r��a����R<.Z�'͍�Ipb�{��:�`�0	NL�Cy/�eg]{.�7L���P{L�����Ipb����\0	n�'&��t���`�0	NL"Bc+#��+s�$�a����Bl-w+#.�7L���P�%渟�hT�$81	'����0L�&��IDh,�e����j�'&�D�§�ТQ���$<�Ǐ�w�G�s�$�a��D��ㅲsw����Ipb�bQ�{�*�7N�����;�`���ТQ����$<t³f�H�ТQ����$p�
�MP.�7N�����X�\�z�M�F5N�����?Vܜ�QN�'��Ix(�"- �OZ4�q�����|l"g:�'�����$����=IN�'��Ixh"y�Y��'�����$pP��j�''������Z�a�����|��9�`�0	NL��X~�x���P���$"Լ��u�.�7L����=�D��}.�7L���а�r�̹P�(	NJ��X[o�>J�%�IIx(�V�8λ�\(	n�'%�{w,B��}j�'%ᡱ��Z�����Ipb�w�"Y����j�'&���5������(T�$81	ܻc�;�Z�a���ݱ����ɂIp�$81	�}���7�(T�$81	��ͽ������Ipb+��XG��j�'&���DL�&��Ix(�#��wB�F5L����=,���q�$�a������t��L�&��ID�^���`�0	NL��X~�C��E�'��Ixh@���N�'��I��^��!U4�q�����k��_�hT�$89	��c�Y��Ip�$89	��cŊ*��W8	n�''�{{������Ip�$89	��c�x�u�*�7N������Q_��Ip�$89	��c!�-�`�0	NLe�L��z��E�&��I���G��@.�7L����9�Oz_^��Ip�$89�����5}j�'&�{s�	~l�?iѧ�Ipb�~�|>i�$�q���ͱ���S�$�q��D���M�n�΅���IprJ���~ҢO��%<�����#���@	NP"B��?�u�*�7P��@�����<0�Jp%8A�������NhQ��Jp�:c;��'-�`	NX"BC�L���Kp�%8a	������	-�7X���P���H.�7Z�����XV �5�Wh	n�'-�1��7gw�Sh	n�'-�~�﷧wJ���h	NZ�Cc�Ǉ�x��Q���%"T�Z�w�.�7Z�����zޛ�s�%����Dd�1޹�SQ�Kp��M��e:���X	�V���s�%���P	�T���s�ye�*���L%,�y���ТN���l%,&z�B2k��Jpc%8[	�c�{�/�7T�3����������Jp��<ʯE���X	�V��<�y�QE�+��J�=��_�Mta%��+Y���o��u�}j��JV�C�}������J��J�d%<t�bw3�UX��X���D��-�P<קUX��X������w�����J��J�d%"4n��*�
+�+�����XT`̸
+�+����P����tVb5Vb%+ᡁH^�S.�j��JT"2}��~k�'4j5Tb%*A�e��I|��\��P�����`����ymiTb5Tb%*�+��[��J��J�D%(�jxF��NhQ��J�D%"4��x��E�*���xf�/�=VA%VC%V�:�����+Q	��.;�nTb5Tb%*�~��t?iѨ�J�D%<4�y��o��*�P��������6ૠ��+Q�]~:���VA%VC%V��I��zO��X�X�JDh�����ТQ�X�Jx�� !��WP��P���D�Ɖ߯��$]P��P�����������J��J�D%h��w��_4��+Q	�8�E_ӢQ�X�J�&=&~J��TѨ�J�D%"tm���*�P���a� �pO}�X�X�J�&=��JA%VC%V�[�-~��X�X�JD�ū�w-�UX��X�����=~އC$Wa%Vc%V��{9�1�U4��+Y��gݝgV!%V#%V�;��V!%V#%V��A�����UP��P���������+��SC%V��lA 罈UP��P����ނ��k�SP��P���D�Z<�_G��J��J�D%h��xY���
*�*���PCB�N�ߴ�SC%V��E�Jl8wB�>5Tb%*�>�$�⟋IA%VC%V�@��땫���+Q	%x��fv��Q�X�JD���9����j��JT�C���.{�
*�*���P���e_V!%V#%V���Z�_H�ΟRb5Rb%)�>��Q�}h�
)�)������G�>Rb5Rb%)�ߛ�M��E�)����Py0N(�UH��H����� ����*��j��JR"B�Yc�ТP��XIJxh�>�����j��JR"Bc��ޛRb5Rb%)�1��!�>����+I	Z1����ТQ��XIJDh�!����i!%V#%V�:!މ�3ɽ
*�*���P�s���ohѨ�J�D%<4���n�
*�*���PC�
޿iѨ�J�D%<4��0��E�+����������
*�*����B�ѫ���+Q	�����K�
*�*��������L
*�*�� �+ᝎ.��j��JT"B�a��;�BJ�FJ�$%<�G�����
)�)����P?�3�{YH��H�����퉞���*��j��JR"Bm�H˷
)�)����PA�����E�)����P�cߛ0�*��j��JR"Bc�R?�ki!%V#%V��1}B|4�*��j��JR"Bc%j?���_H��H���i�!a�F��X�X	JD�����QZ8��8����g�2�a��w
'�'�������|u��E�(���P~�|?�,��j��JP�Cc;`�R��X��XIJD�z���;�/��j��JT�C}	~�;JfTb5Tb%*���q��[�X�X�Jx�� Q^���J��J�D%"TcJj�ADa%Vc%V�d1��k��|Vb5Vb%+���3�_4��+Y	��/�y�lVb5Vbe+a1���W�Va%Vc%$[	,�^�SQ��JH��ͱ~�')��4TB2�����;m,���JH���:�'ͅ��JH�� ����%��L%,� ���s������@�u���>I#%$I���~l�q2s������g��b���$���$%"4���ɥ��H	IR�CcYP>�QRH	i��$)���0w��)��4RB����XV`�b�'��S#%$I��g�3#����IHr���s~��IH�$$9	�����DK�$�q��D��IM�g��IH�$$9	�A͇1�-��8	IN"BWlr��O����$<t��k�u��p�8	IN"B�Y�]�U
&!���$86�x���=LB&!�ID�=s�=罂IH�$$1	��k���lM
&!���$8�سz���j��$&�{�ҋ¥`�0	IL��a�m�_�(T�$$1��gN�3/���IHb1ɳ�6�+)��4LB��P��(|}QE�&!�Ix��A_Ѩ�IHbjO��|f$�`�0	IL�C�C�[BJ�$�a�����xh�'[R(	i��$%�ˏ�u��BIH�$$)	��ܷ@�P�(	IJ"B%&�h�c�P�(	IJ�Co�����j��$'��y�}
!���IHb�ۚ{��l�LB&!�IDh,A�_�=��>5LB���m�u�W"�`�0	IL�CcMo���
%!����$"3��6�-��4JB���P���=�W
%!����$"T�Z�Y�C
%!����$<���q�~ҢO����$"4�#�hc)��4JB�����{@�J{)��4JB���P��YKF
%!����$�b�8�����JB%!IIx��x��vD
%!����$"4~��G
&!�    ��$<f<��;#Q0	i��$&�~ϣ|�P��IH�$$1	E?�/1��~Ѩ�IHb���V���IH�$$1	�XDl��zR0	i��$&�~��s�LB&!�Ix���t��LB&!�I0��&\%"���IHb�����_0	i��$&�3v���s>-��4LB��P?�X����j��$&�����LR0	i��$&���qG����IHb�9��q����IH�$$1��3?y}�E�&!�Ix��!'�qo�&!���$<��w\��/�0	IL"B
0���Q����$x�E4���	-��4NB���Py(^:�E�&!�Ixf�@�È�F�LB&!�ID��
��H�$�a�����^�}����IH�$$9��8��'R8	i��$'��{��{+U8	i��$'��O�7�(T�$$9�]��}X
'!����$<��d��~�$�q��D��BJ��p�8	IN�7�1{1)��4NB���P?�����l�p�8	IN�C'Œ
��KNB'!�ID�=6tݧ��JH�{��Ԟ�T!%��������/Z��q��DD���>�ТO����$<4� `B��|ѧ�IHr*>���+Ohѧ�IHrP�^/�H�$�q��D�xm�+����IHr�
�8���IH�$$9	�1���ν�(��4NB���P~���UN�p�8	IN�C}	��9�NB'!�ID�zt ��I�F5NB���PC����M�F5NB���Pm|���IH�$49	�X����R@	i��&(��i/����Jh%4A	�1�խ��Fi%4A	�CB�f�'47J(�	JD(���k%�������r
�9N���H	�R¶Xt磵��H	�R¶�j����FJh�3=��������,%,��4�%RZH	m��f)a�R�e|��\(m��f)a���Ci!%������r��k!%�����m,�,�pka%����JĒ1����VB+����w����ӢP���_Vb�N?��3+�����J�/+�*O,�~�ja%����J���Bw�[+����_V�;Ԟ��_p���Q���_Vb�b�����L,���_Xb�R�X-�<��Kh�%������D��-��6XBa��cH�����XB,�P4���_rI�XB,��5c�������F5XB!5j�L���t8�XB,��5�W�����j��BjԌ1��{�C���`	�Ԩ�WX�%ϴ��`	�Ԩ�"-�!���Kh�%S�b-n���g�?���K(�F�:5�N��Z,��PL��{]��:�_-���PL����
�7qjZh	m��b�(E��w��j��bj�Xx�XB,��
�bg�ן�(T�%S� fz̯k|���P��PL���[��ZB-��
{�����FK(�B���:���-���PJ���`�E�.��
1ף�'���.��PJ���h�M����p	�T(�[�݁�\B.�T��aBH�ТQ�PJ����u���ІK(�F������E�.���{��|�k�%��ʩQ�� ������F5\B95
c��5�C���p	��(��
L�[eh�%��ʩQ�� ��<�~�%��ʩQ�� ��'�hT�%�S�p�+ ��=-��6\B95
cH������p	��(�Q��A)��6\B95�69�rpi�%��ʩQ�ɹL�T�%���R�h�s��O-���Е
E߃H���ZB-�+�� ׼3]���FK�J��M���{�ZB-�+�b��I�ТP��Е
E���u�'-
�h	]�P�H�I�ТP���U��@��BKh�%t�B�&��NvZB-�+�����[�i�%��*�P�HY@�����h	��(��c7���BKh�%TR�8�����ІK��FEN<ڿ��h�%��*�Q�"c�{�*��6\B%5����~{6�_4��*�Q�m�u��Zp	m��Jj���ќZ`	m��JѧX�|�}B�>5XB%�imr��m���K��>�M�'�#����`	�ԧ������Oh�%����Ok�!ΦZX	m��j�ӊ!�X���Qa%����N+��l(�� -��6VB5�i�r��ha%����Nk�b�7��dZX	m��j��ڻ���Z����Pk�L���BZB-�Zj�L�"�����FK��BIp��t�ТP��PK���4߉�BKh�%�R�d/M��[AZh	m��Zj���G��<��BKh�%�R�d�s���̢P�PK����񾹨��K��BI� '˸��Kh�%�R�$���^�
,��PK��A�y��XB,��
%�4��~�%��6R�4� �����J�H}Ҙ���9�Za%��6R�4� �k�?+��5V�F�FI���>Yc%l�>i`���i�V�+a#J�O$=�Xa%��6R�t/,`�v�\(k���T(p>���ʅ�K�H�Ҙ�Y8�y�
,a���
�{i�{޷KX�%l�b�O:�KQV`	k����(�Z`���?���`	��Q����E�-�`	��Q�<4�OVX	k��e+a��vܥV�+a�JX��0�����E�+a�J���X��JXc%,[	��<{��Z������y��ݾ�E�+a�J؞���g i����JX���y辸i���JX���yx���T�*a�J̱�y0^�<�E�*a�JD����u���JXC%,Q	�~���3,��JXC%,Q��{~�k���JX�
#���T�*a�Jx(��hT�M�T�*a�JDh��(����B5T���P�>�ﵴ��P	KT"B�
�
UH	k��%)���<�����R�)aIJD������p+��5R��3�yX��b+��5R��P{��3�>5P����؁�ohb�JX%,A	���幀�@	KP"29�k�ߵJX%,A	�� ��)�
'a����$"36���d�p�8	KNb�~6~��Z��
'a����$"T����V8	k��%'1c�x k�a�N�'a�ID����{\R8	k��%'1c�׋��LrY�$�q��Ą=˳DϻV8	k��%'�~֧�e�L�&a�Ix&�x
q^	�BIX�$,)��5��k�+��5J��P��>����P�(	KJ"B���&���O����$<4&yƢcd�P�(	KJ"Bcߙ��@� 	KH�3㍐A�2Y�$�A�����7B�dr��IX�$,!��1��ń�S�$,!	���3of��IXB�7�>̽'�IX�$,!	xb��;!Q 	k��%$�S��I�$�A���ܘ��}�W(	k��%%���ָÒBIX�$,)	�����J�%aIIx(���RwLZ(	k��%%��#�u��BIX�$,)��1��%�_�hT�$,)��Ŕ^�cY�$�Q���ܘǆ�V(	k��%%���	ݿiѨFIXR�
����=O�$�Q��Ĥ�e@�BIX�$,)	Ž��랧P�(	KJbnͣf��[�$�Q��D�.����
�J�%aIIx(Ǿ3��0+��5J��[�,@�g�BIX�$,)��{��1����F5J��[�� :K�p�8	KN�CcY�A�d�$�q���ܚG�^'��IX�$,9	�!��!�uH�j��%'�>�H���N�'a�I̭y� �JV@	k��%(ᡱ��"
(a��%��<�v7��JX%,A	�;�0�~ҢQ��%��<>B�@�
(a��%�
)���8N+��5P����XX`�Z4�����ܞ���JX%,A	�A���~ѨJX�s���xVO��IX�$,9	��;�ױ_8	k��%'1���% �p�8	KN�C)ޭ�yO���JX���9�AV@	k��%(�1���wڸ��@	KPbJ�"'��Y%����D�r��$�ID%�������(ᵃ�P�(1G�s�8_�TѨ�J��̩���<�u�ۿc�]n��F=�a����x��W�S�$���в���?�rS�$Ɠ�'Vy}�\��a���%��Τ��׋�����&1��;�����\1��E�8��A��h�%�v� =  �fCK�{���x��g�S�4�#��y�r��Mn2�;̫���"�+[b������R�LeӰz���׋ܮm	SD�����y��^�vmK��s��W���VmkH����6��&)�k��z�۵-���������Vmk\����6ݛl�}s��5���c�6ޠ��֭���.7���+��ì�[,�H�"r��Xr��[խA���f{�5Q��`��.7��b�W��~��׋ܮn�ZX�Bg��w(�E���Mu��k�q[Qp��a��f{3�e(�?Cն�\�Lm��n	���V���a��f1E^�so�.�]l*�}�_"wם���]�2��������[�����\1}�~�����*[0<�w�"��Pغ'ɂ`����e��x���q���v��������P@��a���l���[���#~���n����~K����.�w�"7&���{�(LF����]7ύt����o������o��XC���U}kl����}�\�^�\��Cշ�g̑|F�z/�hx�}�?�rS�f�/i����-�F��c�{���?�?���      v   �   x�M�K� D��0U�w�7 &�,�ӗ"u7Ϛ'�V�"�%W����:� �Ab�d���h�S��P���m˱�9`�ť"��]�)��͘���P��SK�̿�s�̅j}T������@�6�;��c����
�>�RiҘnM�� ���T?      t   �  x����n�@E��+x?j4��2��#�"��H�5����?dڂ@��������f�6ch��܅a#� �8Ʋڠ@��M��E!D&рT�.���/1�>��g��?��MY��4�W�ܔ�xz��4�E�X������.�u��6������Uh����4g���f�\h�@�P��zRBK�0H݂�ǥ���'Q/�}K��a�U{���T�����4��9����b�]����`��r�8�إ�ϲ��rl�����}����PÃ�P)������s�K0`��5��h�˥a��XhǾ���H�ސ8� ~�h\�w}�u�I�Yi��p�o�{����it
(�ͩ��|�m�(m0�(ׇ:6�eF	��$����R��s:�V;��>�P6l��+G��9z�~�7��*�~j��A��qB��n3�ŀ�嚪O�O�����^��>��^H�
��st��v$�X����Uo�� /�.����8���B��
���z��d��_��d��þ�k w@�b2˅��F��\5���U�6�(�K��k֬��j�]�&}La�~���r�l�l.S�3"�s�k�f	 ��� 4
K�_Z�)�pW�Bs�c��}�l����2�y�ҁؗݸ?��B�W�*�
,�y�Up[2JO��� P�8o��.�����g�'��� �2�C��v�6�      �     x���n�0  г|���Pj����vE��L�X��-X����κG�����xX��V!��;��ߕ����`���Q����g�Q�{��-ݪbR���m0�A�-Rz�Du���:��ݲ�J�{��#��e�})��Ǜ��1���)�T����R} 7�ے�$����	m����g2�`����O��/�3u��/�gUyQ��x���1��Y���.�I_5�L�4�X_���;�G6��iY&o��Y��N���w�<���a��ha      �      x�m�ٮ�<w���.&�x\��H��`�,�D�>ES�H]>ƽ�� ���/7�˿�����׿��������og��q8�����}��r.�������>~����i��`�}0������`��frB��A��?�������>X~�~p4>QR��O8\�%���&��M9M*��IM�*�u��_V�~��/�	q�#��/�	���I&ӗ؄����2�Z
����Z�]2u_j���=�����Abq_j�-�^��Cj������~n9����ֲ�d�K�� ���R��.w��RsHm�&��/5��nrI���Gj�3'9���ڱ����L"��l���/5��Z���R�H�͋���<Rk��}�y���]�y��n/W��y�v�G��v�S+�/��Ԯ�H,�K- �k��;|��v�Y�X`]���<�_j�݋�S�RH�Y���_jx ܳ�r+�/5<>��:��/�Ppx������z8~������8~�E��5��_j�6�o�Z�R��=��C��8|�M���ˇ��_��6���zj_j�|8��_j�%��>~�%���EbI_j	��v˩�/�����䏧/��Բ�傦/���r��L_j	�e���݉���̿�R��)Oh�RKHͲ���K-!5k�K_j������2R�W��'�e�6�&uj�R�]�����R�Hm�M~X�R�Hm9/�<�e���Y�o�9�ں5��_j����������6�#�����=|J�����mM�5�R3�V�[�ܾ������KO�?�UN;��57�}n_jH�7���/5��P9r#�jH���3�R3����Ծ�
RkMS+_j��+��/�����!*_j��A�X�R+H�LY��vnA���V���f=�/��Ԯ�J�Z��
R���-�m\�v�*�b�\�v/���@pw�W8� �{6'9� �{�uP�����Yn`��+8��@B����X �@�-�V�}
���S~�o�L` 5�����aB�3��=u3 ��U��j B�^����CqQ8t9�!,�z�����#���� >�po�v�� ��s�+�$^IZ�I!ڸ���	�Yj��/��zGQ(�5��&Zb&B���`�x�B>�EOLh��mOQL E���XM1a1m&NT�V��^�L�K�z���Z��0H[L�EX�:�j�,�\/����� �����`� F�n�\'c2B�G��1��.^�:cB3?�3j-GiL�F�gU�DkL�F؟E��6&p#�һ�ޘ ��Ю�L�5��H�-^��1����TU����t�Ţ<&�#\Y�a&�c>³��g2I�6}��	 	��$)�	�.h/�D�Lh�F���B&0$���j�! ��>8���D��A&	���9�L��ӥ�==2$1^Q�j�dIb|�&M2%1-^�zT���t$}g�%`SS�O���Čf�`��	
�u2�'1�U�f�UH2σ�F
eQb�u5�2)1_�ËI�)���C�L�J���_�T&P%�s��V���8�j��Z��8��K�L K�� (�eY�zk/�D�L@K�N�+��?$����g2I�%V�=l�2�.�>�ʜv����G��D�L�K�m�N����cQ�L��ģf}ph�	�A��۟��P}�co���1 �v��K�L�LlN�0Y�EE��Z����Ė�>8��Р�����@����60h�	�A�A۞����؎�?��� ���&I�L�Mlg������P�M��T�$Go�fp�9�ßJ�F��)q������y$yw;��8�ZWy-:��8�Z9��8�η���q0N�WU��q��k��g��8�.���q��[���`��ڬ��4��q�7���4��q�?o�S�ߟ~���A?��qR����h�p�� �8�I�F��$a�7僣q���mG�8'�����`����Վ�q0
h��q'���s�#%0N�Q��X	��y`�0N�v
0I\h8LI���	����A&	�$��{�Q�֓݃�>n�
0�A�����8(�V��q0N�Wu��q����MG�8Աi�/=�ǝ��⵻��8m0\M��8i9���$�kpW�8����N���`�����8�I��aTG�8'm1��O�8'mIG\��`��-�\t4��q�6��r���!��y�;�}�j���h㤺��/0I��=��p���t���8�I{����$a��o�Z��q0N�ۡ9�8�IG��b�8�I\��$�cq�Z�>�$�G���`��B�$��UH-��8�%m�8��8	m��I2I�-�Q�8�I��@�8'�y�w7��`�t�G/7��`�t^:t�h�k�Z?�>��$�=���q���=��`�to�du4��q�}��$���{�h�g�nG�8VU��q��ݑ��G�8'�݃s`�0N����r��������/�6��04��qr�A+R��8(0:&	��ԲE�8n��4�C�&�g��`�����;ǡvʹޛ4�C�&�����q0N�8��h��=۶�=i}���à�E�8'ϳv?:��8y�m��8���:x�i��e�h��5�P��`���:��h�����]G�8'��:��8yE�]0I'oN��J�?�$���� A�u�t��a�\�j-�Y$0Z��d�4��q�l:����0N����4��q���jz��8y?����8�ɇ�:���0N>C����0NnM� O�x'���~�q��hG��q<��Ϧ�͞��0N��΢�4��q�ղ�r���0
����$a�|=��{��8�^��G�x'߫v�y��8�q�\x��8��I��q<�c�k��w}f�C�z
0IǼ�r4��q,\Y/7��ZL:"�i�����$�c)^��aK�U��q<�c�����}~�c�i-��1�l�F��s�`�gpW��%�$��0���ql���}��-
�h��s�`[�`�Y�-���uT�/�ز����3�`[��u��a[�N*�4��ql��I�x�V����i���s��!�wHr�ڱ�i��6��4�����Iǣ
�=h[��8�L۷epLƱ��O�x��c�����0
jZ��n��N��4������i�X�"���^D�-��=��a�nO�x�-08&	�XK:���8�A���i�X�u���q<�cm0���8>�I��yǧ7�sP��8>�I�:(�i��$�m�_���H�:M��8O�]Y�<��a�,΁I�8v=Y^��8vo:Z�i�ؓU��aІ��q<B�gС�i����Ҡ��q<~��lכ���0��v�fR�j3
�mpLƙ}��y�Lƙ�=��i���7�'i��a�QO�xgM��i���z��8ƙc\�W�8ƙ㪄�4��q�X�h�WXsl:���PF�q4{���0Μl�t�8ƙSuZ�8ƙ-ܚ$��a�y~}-�8ƙ4�i���5�4��q�����a�y����a�yݵ���8ƙ7?r賽��t֗>�InU�h� ��5:I2�8ƙ�Y���`�y_��h� ������`�������og>n�h� ��-�$�@�gn���h� �@`�0����ۧ>w~z='�8��V�܁�	0�|��'�8�y)��`��
�s`�0�|E���`�fs�q�3_I;��`��:6�X4N�q���z��8ƙ��hԮ�C@�Ϣ^��	�L�Sw��O�w��U}x��١n���8�]���4�����X�q�;��f�E���g2Ig���uh� �,����@�w�<D�I|_Ӂ�L��'�si¬�x�^<Z�I���¡��@�w�V��FM�wIJ��&I�gIY���.�YR5]?�W��8K��''��10ΒGW���y򮯃�g}��mp��2���`�`�kd^�Y�)����y����@O��d�z~6���JgYl�$�`�e�N� '�8�Ҝ޴4Nx    Ž�	4Nx��פ5��	o�y]QǾ��֬�=�`��b�q�;����'���5('�8�v�k�q���E�/�`�zO�8��G�u�`��6��4N�q�z꒐@�g��Ψ	���¿��7-�^��'�8ˑt~u�q���M{��`����]4N�q�v�XR�q�[	�����q��sK�$�ޞ�kU�'����-�����T����C���A�@�gyB	4N�qV��E'�8(����q���(,�8x������@�guM���`^ݳ诠q���m���$q?�~ɚ$�`�A����P�Q�'�8kh�&
�`�5��z"�8�YS�~�@��@�gMuT�I�8k��^,'�8�z3�8�Y�����q���6(�$a���E+���f"I�G����D��v�
J'�8�<��#�a�-��_�Mg��E��H�Dg]�N��4N�q�#���4N�q֥)�"�a�u�:[>�8�Yלt�'�a�u]�*�4N�qP@�Qq�+]��z�Pr�q"�����C�q"����V�Ɖ0κ��"�a�u�U��q"��n��,�4N�q֭jMi��[�'�$a���F'�8�qii���m"����a��4N�q��"�4N�qP@)i��-�z�h���Й��yᰶ�C��Ɖ0�y:�<�8�Y�Y��"�a�����4N�q�+��H�Dg�L'PE�W`#���J�q"��>^��G'�8�sj��q"j�����"�a���[�,'�8�[u:}�q"���C�G'�8�o�i��l�n'�8[H:�;�8�A�G�}5{@�]{0"�!�-��Ϥq"�������Ɖ0Ζf}�G'�8[l�i��l�j�� ��夝��� �lyT?�=`�-�ʨ�w@�|���j�}`��c���� HҶ8��Iۼ̚d� �ٖ�#�� �l��^�C ����N�4N�q���6m�q"��mV���q"��mM��"��&�j�4N��5�8���`�[L}�$Y7��4N�q��kON�q"��:>�8����"�a�m��4N�q����H�Mh��|�H�Dgkap��8��ڮ��4N�q���$�a������H���&I�Dg;m�~�q"����N�4N�q�k�z-h�� �:c?�8���^��a���!�8Ʃ��4N�qP@�i��TWu�P�q"�S�1�/�����x�E�D��4j'�85�A%F�D����9�8Ʃq��n�Ɖ0N��Z�Ɖ0NMMWWE'�85]:#�8Ʃ9|A�D��8�h�����P�N*H2/�� ���
�4�o�q�S-jWp�q��j�D�$�ڠ4�8	Ʃ�CE��I0N]�.}J4N�q�nݵ��I0NE����*0N]]L�h��@��O�h�������4�}i���,r?$'�8���~H4N�qj�eM4N�qj=o��I0NݽiP4N�q�>9�b�8	Ʃ�i]�h���6��D�$���΁I�8���őh�㠀�MJ���$�xiP4N�k��Y_���I0N=/�F�h����σ��$a�z��h�����5A��I0N}���`��T����`���N''�8��K�q���������<
T��K4NB�b��I�8	�����%�8	��c���D�$gOM���I0ΞM����`������$���]�7��`�=_��@�$g�0��h���f��6����$~��4NB���G�'�8��W��I0
�J�D�$g_���K�$g_��|L4N�q�������I0�;�?(�$a�}5�t-�8	�}m�K4N�q�	w�����$�]�''�8�vU���I0�^�h���u����q����&	���������0����^h� ���R뻡�8����$���`���:\���h0�ޜv��?{�����-��+���Y7oI}_4���3���E�''�8x�uj�q����w''�8{{t]s�q���NG'��`������$�����?����ϻ�;�����{���L�ٯ��%'�8�5�K4N�qP�л��I0�~�:+�8	�}О�D�$g~��� ��q�'΃��$q����E'�8�s����`��9������g(0�a�h��.4N�q7��4�8	�9|��v��`���Qρ�I0��AS��I0� �H�$�Qg�&'�8G��ӛh��a��I0��O��{�$㣔K��|�$S�Q�L�d��z3�8�9rX��4N�q�<��2��a��v�o/�8�9��wA�q�9�`S�q2�s�U���4N�q8Kj�L�d�X�Ο�4N�q�Ŵ�$O}I$�,Z�e'�8ǲ�:�L�d�X�:�L�9�w޾`�0α�:�i���`�m�q2�s���Z�I�8���`�L&	�u��_�$a��.��#�8�9�8ؘ��9��vͤq2�s��f'�8�~�k1�8�9��I�q2�s����q2�sU_��y7]9�]�_d'�8(�{g'�8��΁��0�Ѣ.��4λ���6�˾�n�$�|IE�i��硓2���9�r�X4N�q�+��L�d�V�F�i����cp�L�9n���$a��n���4N�q��Q�d'�8�c�kp�q2��Y�4Ys�;�"�g�&J�q޹v�S�s �8�i.�F���0Ns�.��4N�q�۵$�8�i�kk0�8�i>�,'�8�σ���0N�U;03���k�HZ��8���o]Ȗc�u7�j!�
0I��Y'`g'�8-,:�$�8/�.��4N�q����L�dϮ��4N�qZl�D�4�����+@3��a��$��⭫�2��a��j�C��IBQz��8�i����q2���W�ސi�㴼�[��?�8(0����0N˵�I�=�a����[���|������q�U��:���a�f�n���^�h07{t�I��4������}?h��A�~�}Gh�̓y����0N���sA�dw5��Q}�y�?L�q�����I����0N��H2��a4rh��%蔛L�d�-u�������r�R�L�d���d�0N[��4N�q�u�a�q2���M�@2��a���:�<�8�i�SM2��a��>�{���0N��>g'�8m�t�?�8�iۮ����]ʑdu�͒KߧI֬]�F��ӪiW��8�:�R8�q�iu�I}F����-o4��8��i4��8��:�n4��8�6�/�h�q���A�\�=��G�q�i{��6�=ߑ�uv��8㴽�8��1�N�>�c0N;�N�2�`�v\���h�q��(Č�1���<(�$a�֒����1����`�0
hǾ�8㴶�j;s}�|$��40�p���b�8�z��ca4��m��q^�qױ����1��:S����c0N��v`�c0N�2�`�v�o�c0N�����8�����[H���h�q�}k-g4��8(��'��1�=~���8㠀�Ԍ�1�J�Ԍ�1�=�Sn��1�=�o��c0��V�F��s�U_jF��s�c����]���W��9ݠG�hÃ���?�c0���-G�*�3f���8�q�-G��1�M���1�L��,F�����jZ��{�E��4�`�Ӛn�a�#I�`�N�q��9��VA4λ�ݹl�$i�q�e���q�9���>�q�9�EW��c0ι^�b4��8�:�Z`4��8�t��h�q�tP�h�q�up�R���ܝN�3��&G�m4��8���h�q�}WV�c0ι:��h�qP@!f4��8�~*�`����h�q�#���T�<Vݥ�h�q�cӵQ���[��Qu�C�q�9�]׈�c0�ٲ���wo`��:����o`���Ac���9�8h�����mu��s����9�K�p[��s��g[�2<������9������;8H�:���%�ڠ�@��s�Ng��c0�y��3�`��^�g�h�qλ�w@��1�|f]:m4��8�i���8�OMzG�8�ϡ��c0�� Z  6�F�J��PA��'ٿ*��n�B�mb���8ƹ���B��
�~���8�A��ׇh��\���E�q
�s�[{��)0�����S`�+�:b^h��\���6��)0Ε�NM,S�B�̛*��8ƹl�U���)0�eU.��8��7y��S`�kn��E��Z�
�S`�k�th��8ƹV�]��)0ε�ݬ�$�s��I���)0ε-�/kq�kWH�&ݬ��8ƹ�-�B�4��=>;E����H�q
�s��Y��)0�ud���S`��8u�x�q
�sA�z-h��ཫ[\��8�u���)0�u>�X|�r���ê�8ƹ�e�$�S`���t�H�q
n��e��
�S`�{�I�B�4�n0�q
�s���f4N�qn��Uh����5�S`�ۯڑ[h��ܾj��������)���)0����M��lw���B����ׂ�)0�_)4N�q�Xu�U�q
�s�6�ii���i�5�B��N�I�8ƹs���
�Spz(��%�/�!�u��B��΃�l��)0ZQ����)0
h���8ƹm�9���)0�m��Z�8ƹG��
�S`�{�tȬ�8m�{I�s�q
�s/�iUL�4o�ꌚ�����r謞B��^��mO��^���
�S`�{K�G��)0ν�~[��8ƹ��Z�B��A�Yh���5�zG�8ƹ�>�4N�qP@gX��8wm�IRr��"�ܗA#��)0�},����8ƹ���I�8w���8����8ƹ[��|
�S`X�4N�{�>�~ۮ�8��
��i���׭S�
�S���Y��*ֿZ�$���)0΍����ƹ�c�B�_��q��0M����q�������y�`!|����qw��ҿ�	�<�Q%���O��N�O���O��^wV)���0����U�|��z ����?(����H/2�Ȯs��#��C�����H/�@��G�[����۪ߨ���5Pp牃��Gz����F?�
�<�|����7A��'��!�{�A��|����y�`u�{�A��j����~������H/�t�C���E���t���H/�tW��O�Gz��ѯW�Gz��f�z��"Hw]��ӳ�K�?�г��z}��0���3��k�Z�8�l��qz��"Hw{_��_�����M��E�n��/��������Ԡ���^��U��y��"Hw�:��=ҋ �}0��=ҋ ݽ���#, =ǩ��H/�t�s�廟�� �9/?��E�Lz��S(�#�ҽ�.�~��"H�j���=ҋ �{�q�{�A��`	�{�A���KY�^��"����M�3j|��.����?�����      �   �  x��T�n7}��b��\�Z���P۹IZ$F��w�e�%^��%�����%=�l���)KrfϜ93d���cj�W��懽V�	�F�?(�Q��l�\�`,>GeMOir����8��q��sωL��i�2�-�%�q��z/:�u��+��ؚ�ΰ�d��7����c �d�{2n-.IG֬�D�ls��3ѻ�I��qu��+J3�π���k	 �m� "s�V��Ё��yX�Ny���+����J�,�U敀������U��sP�I�uF���*��Ӛ}�1���ѬD8A�g�E�I�r.��~c܊b�$��_.]L���޾���&������@υ-��*'@]�
<�b
Y'�0�K���8�3PbKI�����n�ٽZh�z4X	آt�·��]n3T�)�D8_������������?�"0D�ɇ��@j��z���I��Jy!���#?-1��pYC����
�Pǉ+�+	��-ku��ʓ[��%.?zȡ5��u�ע�q'�l��:��UB���rG�QSt��=��Q��%�>�	jw�,=^��+N���ˡ�Y�.����tH���̑�2[D	�����E�q/Νi���J�6�ayK�_�]�5�ӊ�?M�*2+�I;~��vc�&8���˭�>j�uZ]�Sm͸�����P��)�ӊQ�;{�W\�K�HXp���緗%}�IA�6��S� ���1��rtpp���      ~   �  x���[��:���_�wf�]m9%_�ϊ��8���x �A�A���~s����ҫ�v�O�w-
 D�����s`�XF��j����;�ѣx��/C�kA�k�=m�/��cz����)�h�ݡ�V�% ��3�F:�uMA���N��
���r���v�/-��ג��v��.��#Y�H"*��g^s�;`���"�g,� OX�g����g�����q�V�l��Ӎ�z�P/�T9I��������j1��ik|
�X�3��t>�dB���8���,*�L��JLS�����쮼�������8��g�`�[�.��}�y3�E�bw�2�n*����mR	o&m5��x��G^�u�H<)_�捝�r��gy>���y�\Ug�$kc��Yܘ���e��5e�k���+EtT�>))�����I�����0����Ű]7|�w�0U�Mts2AW�~MbHU ?�Kr�%y�,-O��\ K��*���aղҒ|ح�UT��V1��}���y�Q����k �`�t���\EN�}.��7i10ց�L�����W�;?�������?n|`���͎y{��2��}}�|��f/*3�d(6��C���Pw
c{6-z��\u͛���B���K��ws.�u.��xxI��Z"�Q	4������Ɋ����8��g�~c� �	���z�4wٶ��X����5�`ԉ��E�G��ʤK��ɠZ�5L�u��]�o�p�� X}40�50�?Bc^�:�PJ��\����1��ѕ��j>�N=��ֳ#GL�8�
V�ʠ�����F�d2�P7t̨m��b~��yq��E��w\� D������b忸2�����Wc���{]�{s/.�U0�&��cDf�e���0��������Ng����_٫aU瓀�ʌ���B��!/�K�T�W#���~�O��@ ����?��}��L�ӹ��8����eco�Dǥ�8H��a$󳿵���Bn�-ߚ�1s�^�"���s,�W�M �gz�
�!"a�a���q�����Q�/����s���X<�1��Vc�?/o�k�`8�c�;���k+��R*�U���;
��($/|'	- z}�Y"k~0�rW\ ٞ���n�6����b/6��>-N&���ۙM�T�8I+m����&���TVM?���`4/�'"F9����������cA�J      �      x������ � �      �      x������ � �      �   �  x�Ք?s� �k�)�o��.���^q�52�9��$G8)����(�E\�=�B3,���-B�<'��m�+M��)���`���u� ֕W�.�I��py���|����$
��~<`-yO�����8�2 b���f��I";��D�n���Kͺ�ԧ��,���%���$v�%�|�6�׺D��dVt7}�^[.��]�a:�,��~�}��H��j���#�T��9�p:�ʟ.��]�ҔQ�=7�gi����v����O��*��`A9cj������q�'f�"��2��AjV6��Z�9�K�����3���|KSo�n����Iv�p��	�|O]!�7%��i[��h�I�M���(�Y���Ҿ�}q��xq�q:������WhMM�+#�s���x��\�*�I�VUU���0�      �   (   x�3�,N����1�І
�))E���\FP	8������ ��      �   9   x�-��  ��]R��� A<�c5L��6&�!��Q���Q�E�DI�Z� y\	�      �   :   x�3�,NM.���S0�4�2��<c8��3ARi�e��҈�I΄��g����� ��'      �   4   x�3�4,.QH�I,.�4�2�4�K��9��<$�F\���%pn� ��     