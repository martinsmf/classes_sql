/* Modelatgem Basica */
CLIENTE NOME - CARACTER (30) CPF - NUMERICO (11) EMAIL - CARACTER (30) TELEFONE - CARACTER (30) ENDERECO - CARACTER (100) SEXO - CARACTER (1)
/* PROCESSO DE MODELAGEM */
/* FASE 01 E FASE 02 - GERALMENTE REALIZADA PELO AD ADM DE BANCO DE DADOS */
MODELAGEM CONCEITUAL - É COMO SE FOSSE UM RASCUNH0 DO BANCO GERALMENTE FEITO PELO CLIENTE E O AD MODELAGEM LOGICA - É QUALQUER MODELAGEM REALIZADA ATRAVES DE SOFTWERES PARA MODELAGEN,
QUE POSSIVEL INDICAR A RELACAO ENTRE AS ENTIDADES E MELHORAR A VISUALIZACAO DO BANCO
/* FASE 03 = GERALMENTE REALIZADA PLEO DBA */
MODELAGEM FISICA = É A TRANSCRIÇÃO DA MODELAGEM LOGICA PARA O SCRIPT SQL
/* INICIANDO A MODELAGEM FÍSICA */
/* CRIANDO O BANDO DE DADOS */
CREATE DATABASE PROJETO;
/* CONECTANDO-SE AO BANCO */
USE PROJETO;
/* CRIANDO A TABELA DE CLIENTES */
CREATE TABLE CLIENTE(
    NOME VARCHAR(30),
    SEXO CHAR(1),
    EMAIL VARCHAR(30),
    CPF INT (11),
    TELEFONE VARCHAR(30),
    ENDERECO VARCHAR(100)
);
/* VERIFICANDO AS TABELAS DO BANCO */
SHOW TABLES;
/* DESCOBRINDO A ESTRUTURA DE UMA TABELA */
DESC CLIENTE;
/* sintaxe basica de inserção INSERT INTO TABELA */
/* FORMA 01 - OMITINDO AS COLUNAS */
INSERT INTO CLIENTE VALUE(
        'JOAO',
        'M',
        'JOAO@GMAIL.COM',
        988638273,
        '22923110',
        'MAIA LACERDA ESTACIO - RIO DE JANEIRO - RJ'
    );
INSERT INTO CLIENTE VALUE(
        'cELIA',
        'F',
        'CELIA@GMAIL.COM',
        541521456,
        '25078869',
        'RIACHUELO CENTRO - RIO DE JANEIRO - RJ'
    );
INSERT INTO CLIENTE VALUE(
        'JORGE',
        'M',
        NULL,
        988638273,
        '22923110',
        'OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG'
    );
/* FORMA 02 - COLOCANDO AS COLUNAS */
INSERT INTO CLIENTE(NOME, SEXO, ENDERECO, TELEFONE, CPF)
VALUES(
        'LILIAN',
        'F',
        'SENADOR SOARES - RIO DE JANEIRO - RJ',
        '947785696',
        887774856
    );
/* FORMA 03 - INSERT COMPACTO - SOMENTE MYSQL */
INSERT INTO CLIENTE VALUE(
        'ANA',
        'F',
        'ANA@GLOBO.COM',
        988638273,
        '22923110',
        'OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG'
    ),
    (
        'CARLA',
        'M',
        'CARLA@TERATI.COM.BR',
        988638273,
        '22923110',
        'OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG'
    );
/* O COMANDO SELECT - PROJECAO */
SELECT NOW ();
SELECT 'BANCO DE DADOS';
SELECT 'MATHEUS FERNANDES MARTINS';
/* ALIAS DE COLUNAS */
SELECT NOW() AS DATA_HORA,
    'MATHEUS MARTINS' AS DEV;
SELECT NOME AS CLIENTE,
    SEXO,
    EMAIL
FROM CLIENTE;
SELECT NOME,
    SEXO,
    EMAIL,
    ENDERECO
FROM CLIENTE;
SELECT NOME,
    SEXO,
    EMAIL,
    ENDERECO,
    NOW() AS DATA_HORA
FROM CLIENTE;
/* FILTRANDO DADOS COM WHERE E LIKE */
SELECT NOME,
    ENDERECO
FROM CLIENTE
WHERE SEXO = 'M'
SELECT NOME,
    SEXO
FROM CLIENTE
WHERE ENDERECO = 'RJ'
SELECT NOME,
    SEXO
FROM CLIENTE
WHERE ENDERECO LIKE '%RJ';
SELECT NOME,
    SEXO
FROM CLIENTE
WHERE ENDERECO LIKE 'OSCAR CURY%';
SELECT NOME,
    SEXO
FROM CLIENTE
WHERE ENDERECO LIKE '%CENTRO%';