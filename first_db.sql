PGDMP             
        	    z            postgres    14.5    14.5                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    13754    postgres    DATABASE     e   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3331                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false                       0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            ?            1259    16409 	   addresses    TABLE     O   CREATE TABLE public.addresses (
    "Id" integer NOT NULL,
    address text
);
    DROP TABLE public.addresses;
       public         heap    postgres    false            ?            1259    16408    addresses_Id_seq    SEQUENCE     ?   CREATE SEQUENCE public."addresses_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."addresses_Id_seq";
       public          postgres    false    211                       0    0    addresses_Id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."addresses_Id_seq" OWNED BY public.addresses."Id";
          public          postgres    false    210            ?            1259    16422    ads    TABLE     ?   CREATE TABLE public.ads (
    "Id" integer,
    name text,
    author integer,
    price numeric,
    description text,
    address integer,
    is_published text
);
    DROP TABLE public.ads;
       public         heap    postgres    false            ?            1259    16438    authors    TABLE     L   CREATE TABLE public.authors (
    "Id" integer NOT NULL,
    author text
);
    DROP TABLE public.authors;
       public         heap    postgres    false            ?            1259    16437    authors_Id_seq    SEQUENCE     ?   CREATE SEQUENCE public."authors_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."authors_Id_seq";
       public          postgres    false    214                       0    0    authors_Id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."authors_Id_seq" OWNED BY public.authors."Id";
          public          postgres    false    213            f           2604    16412    addresses Id    DEFAULT     p   ALTER TABLE ONLY public.addresses ALTER COLUMN "Id" SET DEFAULT nextval('public."addresses_Id_seq"'::regclass);
 =   ALTER TABLE public.addresses ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    210    211    211            g           2604    16441 
   authors Id    DEFAULT     l   ALTER TABLE ONLY public.authors ALTER COLUMN "Id" SET DEFAULT nextval('public."authors_Id_seq"'::regclass);
 ;   ALTER TABLE public.authors ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    214    213    214            ?          0    16409 	   addresses 
   TABLE DATA           2   COPY public.addresses ("Id", address) FROM stdin;
    public          postgres    false    211   ?       ?          0    16422    ads 
   TABLE DATA           \   COPY public.ads ("Id", name, author, price, description, address, is_published) FROM stdin;
    public          postgres    false    212   ?       ?          0    16438    authors 
   TABLE DATA           /   COPY public.authors ("Id", author) FROM stdin;
    public          postgres    false    214   ?%                  0    0    addresses_Id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."addresses_Id_seq"', 1, false);
          public          postgres    false    210            	           0    0    authors_Id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."authors_Id_seq"', 1, false);
          public          postgres    false    213            i           2606    16416    addresses addresses_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY ("Id");
 B   ALTER TABLE ONLY public.addresses DROP CONSTRAINT addresses_pkey;
       public            postgres    false    211            k           2606    16445    authors authors_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY ("Id");
 >   ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_pkey;
       public            postgres    false    214            l           2606    16432    ads ads_addresses_id_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.ads
    ADD CONSTRAINT ads_addresses_id_fk FOREIGN KEY (address) REFERENCES public.addresses("Id");
 A   ALTER TABLE ONLY public.ads DROP CONSTRAINT ads_addresses_id_fk;
       public          postgres    false    3177    211    212            m           2606    16446    ads ads_authors_id_fk    FK CONSTRAINT     w   ALTER TABLE ONLY public.ads
    ADD CONSTRAINT ads_authors_id_fk FOREIGN KEY (author) REFERENCES public.authors("Id");
 ?   ALTER TABLE ONLY public.ads DROP CONSTRAINT ads_authors_id_fk;
       public          postgres    false    214    3179    212            ?   ?   x?m?A?0E??=?b?4Fa!?&ƭ?Vnm$@{??7??3?L_????C??Ds?01v($f~?4Z_????%?A){????w??,??+Z????~x8?gI?u??3«)x?F?7???????????P͢??Pi܆#W)WNzmK???R????`4????? \j?+?>?k?.      ?     x??Y?n[??_q4??)і3ˠ4?̣?Z??g:?òdH6!?J????E?!E????_????????>?A)N X&/?=g??^?qڍ?}?fY???{?4?罀???~????~3l?l?%??????N????ldo??l???³?7?{??ae?f?X9?x??}?׶l?}??ɏ?$[???%?f?I??,?? ?-???^qW???i??
?-?!d+	???i~???7??+Vx?p?? ????ٜ?~???Kf???{<1R?Їf<t??	???x??^?V?Π?,??1I??x?P?>???G<?;? ?#p3? !a?D?C,?_'J|m7????Vc???o~??k8??1?q??ม?9??????Rb?} ????u m4?U!?J_???'?N\?O?r%?h?????G????$?(??uxG?iN8O???)?B??&U?Z?2??i??&<?2?_n?bb???)?????QsD0xmDS??W?	?}????/?ݹll7???O??@@]??l???T???D?\W?????e)???9???)"???? ???nd??BXQ1???o??bi??zya1A?䧅?NͲ$?֥jK???A??e??)?SMF?????b?6?c!%B'O?4i??e?ެ?4"3eX?m??V????ݽ?彯??=^???????w??????!?n??_
??????c1Y??{6?1S2,???C
??k~?M0?~K???ͽ+둕??#???????e??%H@??7?????HD&????E???#l{?&w??	xW???M%=???V ??;j??S?V?J6*?Lb"?"	t	m????4??;??w???1??Gc????n?c?r $=?S??????^sO??q?`?"dS?F??=?l????=E??Z??X???X?ċt?Jk??>?Kiן?Y?ˣ?_?_3???	???M? ?"??f?rN*l?+MH*?;C˧? 
?|o?_??J?0?g+?hOx???v&t ?5c?TA??`ጠa??4????i?s?e?~6Qxd-!?[B!?3?????b??˾o?`d65#r??;?JH7?(?Y??ev???(??????;??o???G^???Q?õ?J?????y)?~???0 A8͂?
???9'??>??ϊ?A??/???.r>Xجg??
s
?8?9??
϶???-??	&Iӡ??\?L?G????,T1E??O^ko????2j???2?w+????\9KZV?.?*'4s?????f???ɓO??`?_?wgkv??yDp??Q?PlL?ǎŅ?7S?;m?Z?b+ゑg?????o?}??LZ???\?ML}????p)??s?l ??9??X??M?IV???A?)?i??)VE?4>?S?eQ???#?ݭT?GGd^2?착??~??H$9V&eA?X??(?:V.ݣ<Ig??sب8???0??z߽??~?8??????V??,i??tzJ?/|?c??<G?6?;??	????&??_7?y?I?m"
q?D??g=?????<k[?"?)̮lA???hh??W?Z????<??W??jD?E?򠢥?Y8c?G?T?HE֔?%????(cw??V^}-?½?ř?rb??$??j?[?8b)?(F@Z?v_	aY*P????da??[??Յ{A?9?M???k??M??s?X?}3?ežj??p?Y??hȑ%?I&? ??f???9	~h	n "HLuq???@?s3uK?V?VyG3U\I??M|?2??oպc9?myJ9??k?L?(??_??߬?Q?D??Պ1EА?0?&8O??#???rZ????4?[?ݴP??%?/?C???3Ո?a*\?W<3???Yc???
?;R
?q?V?&?J[ӏ?;k6?9???+i??J?>???|~?g)????w?ӌy???z??Y@??8,?r?pb????tlp4
?j????OqtT????N?A?dMܻ??l#v???i?쮉{????UeZ??I??B????}?7?fK?d?????~?????VJ????<0?uƘK峂,?<??Mz?:???c;@???/Z?J?lj??RMe?	6Ok?/d=?'6?vW]f??O?.[??;??,???O???C??!|?/2|??#??S??(????s+f?????g??GJ?A[W?E?`t??_?bڷŲ^?x{2?O??ѱ?x?L{?????F??????^m???l?XUG??[?J????
???Z?,?x???"?6????ҋ????????\?X?'N?XNj???I??qR??9Ѱ"?ڒ9??;1=cOwe??
????Cm@?Ď?[:1iB????2?i??G?cUK??ԁ???2??Eo3kF[6	Ic?XfW:e/?ܙ>?Ao
?+??g?????k????=p??W
?M?7??1?%0?E?&.V*t???UJ?͆a6???z??5+????ʞ??????@zy?S)ϙZq??Fc?B???]?R?H???*?>??ޥzK?y??Ws?@K?F-?JE?a?P????@????ڛJA??0?d?o??~13ev??vW?5?>1c[;??˹gb??g?/?J??=?n?c?G|?\?M??+?tk????????V*???f?KuP?"???v._??֔ZaF?!???\?y??M^?ɬY9w??z?BkjS???g???^-xZ??H?????????$|?ۛ???,mm??2l߼?U???<.???JSz???a?? :?RAx??????^??9?????O^?	?g??lӉ?k)??t?=?F??)?[٦?[????
`?L\??h*1?vv?Xs%?? ????23?Ę????????ֱ?[?+?J???"?#?X?q&???P??c??:ܬ~?I,???????i?|=)t??ǉ??B?Uq{2?\?(;/.??be?r?Q??y???&??T8?8??(ˀ?.?龖+vEkS?Nc??$f
?!???q?G??????ʫҳ?Ӝ??k????\wN?ʴÓ?hNc??w"qtVɏe?+?ۻ?k׮?i6?      ?   U   x???	?0E??L1??j,&?u-??@0?n:rt??y?p??N;a#Q????\D??a~?~??R??E'a?c6??FU_??4     