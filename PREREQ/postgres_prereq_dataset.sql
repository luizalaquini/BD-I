-- Adminer 4.8.1 PostgreSQL 10.21 (Debian 10.21-1.pgdg90+1) dump

DROP TABLE IF EXISTS "department";
CREATE TABLE "public"."department" (
    "dept_name" character varying(20) NOT NULL,
    "building" character varying(15),
    "budget" numeric(12,2),
    CONSTRAINT "department_pkey" PRIMARY KEY ("dept_name")
) WITH (oids = false);

INSERT INTO "department" ("dept_name", "building", "budget") VALUES
('MAT', 'CCE',  NULL),
('INF', 'CT7',  NULL),
('ELE', 'CT2',  NULL),
('FIS', 'CCE',  NULL),
('HID', 'CT8',  NULL),
('STA', 'CCE',  NULL),
('EPR', 'CT12', NULL),
('QUI', 'CCE',  NULL),
('LET', 'IC4',  NULL);

DROP TABLE IF EXISTS "course";
CREATE TABLE "public"."course" (
    "course_id" character varying(8) NOT NULL,
    "title" character varying(50),
    "dept_name" character varying(20),
    "credits" numeric(2,0),
    CONSTRAINT "course_pkey" PRIMARY KEY ("course_id")
) WITH (oids = false);

INSERT INTO "course" ("course_id", "title", "dept_name", "credits") VALUES
('ELE15924',    'PRÁTICAS DE LABORATÓRIO',  'ELE',  1),
('INF15927',    'PROGRAMAÇÃO I',    'INF',  3),
('MAT15925',    'CÁLCULO I',    'MAT',  6),
('INF16189',    'INTRODUÇÃO À ENGENHARIA DE COMPUTAÇÃO',    'INF',  3),
('INF15973',    'LÓGICA PARA COMPUTAÇÃO I ',    'INF',  4),
('MAT15932',    'ÁLGEBRA LINEAR',   'MAT',  4),
('MAT15931',    'CÁLCULO II',   'MAT',  4),
('INF16153',    'PROGRAMAÇÃO II',   'INF',  3),
('INF16190',    'PROJETO INTEGRADO DE COMPUTAÇÃO I',    'INF',  1),
('FIS13696',    'FÍSICA I', 'FIS',  4),
('ELE15929',    'DESENHO ASSISTIDO POR COMPUTADOR', 'ELE',  2),
('HID15930',    'FUNDAMENTOS DE ENGENHARIA AMBIENTAL',  'HID',  2),
('ELE15935',    'CIRCUITOS LÓGICOS',    'ELE',  3),
('MAT15936',    'CÁLCULO III',  'MAT',  4),
('ELE15934',    'CIRCUITOS ELÉTRICOS I',    'ELE',  4),
('MAT15937',    'CÁLCULO IV',   'MAT',  4),
('INF15974',    'ESTRUTURAS DE DADOS',  'INF',  3),
('FIS13735',    'FÍSICA II',    'FIS',  4),
('ELE15941',    'ELETROMAGNETISMO I',   'ELE',  4),
('INF16154',    'ARQUITETURA E ORGANIZAÇÃO DE COMPUTADORES',    'INF',  3),
('ELE15940',    'CIRCUITOS ELÉTRICOS II',   'ELE',  4),
('STA15932',    'PROBABILIDADE E ESTATÍSTICA',  'STA',  4),
('INF15933',    'PROGRAMAÇÃO ORIENTADA A OBJETOS',  'INF',  3),
('FIS13737',    'FÍSICA EXPERIMENTAL I',    'FIS',  1),
('ELE16191',    'SINAIS E SISTEMAS',    'ELE',  4),
('ELE15944',    'ELETROMAGNETISMO II',  'ELE',  4),
('INF15980',    'SISTEMAS OPERACIONAIS',    'INF',  3),
('ELE15943',    'ELETRÔNICA BÁSICA I',  'ELE',  5),
('INF15975',    'TÉCNICAS DE BUSCA E ORDENAÇÃO',    'INF',  3),
('ELE15951',    'ANÁLISE E MODELAGEM DE SISTEMAS DINÂMICOS',    'ELE',  4),
('INF16192',    'COMPUTABILIDADE E COMPLEXIDADE',   'INF',  4),
('INF15978',    'ENGENHARIA DE SOFTWARE I', 'INF',  4),
('INF16158',    'REDES DE COMPUTADORES',    'INF',  3),
('ELE15942',    'SISTEMAS EMBARCADOS I',    'ELE',  5),
('INF16193',    'PROJETO INTEGRADO DE COMPUTAÇÃO II - SOFTWARE',    'INF',  2),
('ELE16194',    'PROJETO INTEGRADO DE COMPUTAÇÃO II - HARDWARE',    'ELE',  2),
('INF16161',    'PARADIGMAS DE PROGRAMAÇÃO',    'INF',  3),
('ELE15956',    'SISTEMAS REALIMENTADOS',   'ELE',  4),
('INF16165',    'METODOLOGIA DE PESQUISA CIENTÍFICA',   'INF',  3),
('EPR12990',    'ENGENHARIA ECONÔMICA', 'EPR',  4),
('INF15979',    'BANCO DE DADOS I', 'INF',  4),
('ELE16195',    'INSTALAÇÕES ELÉTRICAS E DE COMUNICAÇÕES',  'ELE',  4),
('EPR15963',    'GESTÃO EMPRESARIAL',   'EPR',  4),
('HID16196',    'HIGIENE E SEGURANÇA DO TRABALHO',  'HID',  3),
('EPR15969',    'ASPECTOS LEGAIS E ÉTICOS DA ENGENHARIA',   'EPR',  4),
('INF16159',    'COMPUTAÇÃO E SOCIEDADE',   'INF',  2);

DROP TABLE IF EXISTS "prereq";
CREATE TABLE "public"."prereq" (
    "course_id" character varying(8) NOT NULL,
    "prereq_id" character varying(8) NOT NULL,
    CONSTRAINT "prereq_pkey" PRIMARY KEY ("course_id", "prereq_id")
) WITH (oids = false);

INSERT INTO "prereq" ("course_id", "prereq_id") VALUES
('MAT15932',    'MAT15925'),
('MAT15931',    'MAT15925'),
('INF16153',    'INF15927'),
('INF16190',    'INF15927'),
('INF16190',    'ELE15924'),
('FIS13696',    'MAT15925'),
('ELE15935',    'INF15927'),
('ELE15935',    'INF15973'),
('MAT15936',    'MAT15931'),
('ELE15934',    'ELE15924'),
('ELE15934',    'MAT15932'),
('MAT15937',    'MAT15931'),
('INF15974',    'INF16153'),
('FIS13735',    'FIS13696'),
('ELE15941',    'ELE15934'),
('ELE15941',    'MAT15936'),
('INF16154',    'ELE15935'),
('ELE15940',    'MAT15937'),
('ELE15940',    'ELE15934'),
('STA15932',    'MAT15925'),
('INF15933',    'INF15974'),
('FIS13737',    'FIS13696'),
('ELE16191',    'ELE15940'),
('ELE16191',    'STA15932'),
('ELE15944',    'ELE15941'),
('INF15980',    'INF15974'),
('INF15980',    'INF16154'),
('ELE15943',    'ELE15940'),
('INF15975',    'INF15974'),
('ELE15951',    'ELE16191'),
('INF16192',    'INF15975'),
('INF16192',    'INF15973'),
('INF15978',    'INF15933'),
('INF16158',    'INF15980'),
('ELE15942',    'INF16154'),
('ELE15942',    'INF15974'),
('INF16193',    'ELE15942'),
('INF16193',    'ELE16194'),
('INF16193',    'INF16190'),
('ELE16194',    'INF16190'),
('ELE16194',    'ELE15942'),
('ELE16194',    'INF16193'),
('INF16161',    'INF15933'),
('ELE15956',    'ELE15951'),
('INF16165',    'INF15933'),
('INF16165',    'STA15932'),
('EPR12990',    'STA15932'),
('INF15979',    'INF15975'),
('ELE16195',    'ELE15929'),
('ELE16195',    'ELE15934'),
('EPR15963',    'EPR12990'),
('EPR15969',    'HID16196'),
('INF16159',    'INF15933');

ALTER TABLE ONLY "public"."course" ADD CONSTRAINT "course_ibfk_1" FOREIGN KEY (dept_name) REFERENCES department(dept_name) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."prereq" ADD CONSTRAINT "prereq_ibfk_1" FOREIGN KEY (course_id) REFERENCES course(course_id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "public"."prereq" ADD CONSTRAINT "prereq_ibfk_2" FOREIGN KEY (prereq_id) REFERENCES course(course_id) NOT DEFERRABLE;

-- 2023-08-18 20:11:01.537965+00