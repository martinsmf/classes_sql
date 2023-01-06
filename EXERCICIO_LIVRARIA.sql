/*

CREATE database */

CREATE DATABASE LIVRARIA; /*

CREATE TABLE */

CREATE TABLE LIVROS( NOME VARCHAR(30), AUTOR VARCHAR(30), AUTOR_SEXO CHAR(1), PAGINAS VARCHAR(30), EDITORA VARCHAR(30), VALOR INT(10), ESTADO_DA_EDITORA CHAR(2), ANO_PUBLICACAO VARCHAR(12) ); /* inset */
INSERT INTO LIVROS( NOME, AUTOR, AUTOR_SEXO, PAGINAS, EDITORA, VALOR, ESTADO_DA_EDITORA, ANO_PUBLICACAO ) VALUES( 'Cavaleiro Real', 'Ana Claudia', 'F', '465', 'Atlas', 49, 'RJ', '2009' );
INSERT INTO LIVROS( NOME, AUTOR, AUTOR_SEXO, PAGINAS, EDITORA, VALOR, ESTADO_DA_EDITORA, ANO_PUBLICACAO ) VALUES('SQL para leigos', 'João Nunes', 'M', '450', 'Addison', 98, 'SP', '2018');
INSERT INTO LIVROS( NOME, AUTOR, AUTOR_SEXO, PAGINAS, EDITORA, VALOR, ESTADO_DA_EDITORA, ANO_PUBLICACAO ) VALUES('Receitas Caseiras', 'Celia Tavares', 'f', '210', 'Atlas', 45, 'RJ', '2008');
INSERT INTO LIVROS( NOME, AUTOR, AUTOR_SEXO, PAGINAS, EDITORA, VALOR, ESTADO_DA_EDITORA, ANO_PUBLICACAO ) VALUES('Pessoas Efetivas', 'Eduardo Santos', 'M', '390', 'Beta', 79, 'RJ', '2018');
INSERT INTO LIVROS( NOME, AUTOR, AUTOR_SEXO, PAGINAS, EDITORA, VALOR, ESTADO_DA_EDITORA, ANO_PUBLICACAO ) VALUES('Habitos Saudáveis', 'Eduardo Santos', 'M', '630', 'Beta', 150, 'RJ', '2019');
INSERT INTO LIVROS( NOME, AUTOR, AUTOR_SEXO, PAGINAS, EDITORA, VALOR, ESTADO_DA_EDITORA, ANO_PUBLICACAO ) VALUES('A Casa Marrom', 'Hermes Macedo', 'M', '250', 'Bubba', 60, 'MG', '2016');
INSERT INTO LIVROS( NOME, AUTOR, AUTOR_SEXO, PAGINAS, EDITORA, VALOR, ESTADO_DA_EDITORA, ANO_PUBLICACAO ) VALUES('Estacio Querido', 'Geraldo Francisco', 'M', '310', 'Insignia', 100, 'ES', '2015');
INSERT INTO LIVROS( NOME, AUTOR, AUTOR_SEXO, PAGINAS, EDITORA, VALOR, ESTADO_DA_EDITORA, ANO_PUBLICACAO ) VALUES('Pra sempre amigas', 'Leda Silva', 'F', '510', 'Insignia', 78, 'ES', '2011');
INSERT INTO LIVROS( NOME, AUTOR, AUTOR_SEXO, PAGINAS, EDITORA, VALOR, ESTADO_DA_EDITORA, ANO_PUBLICACAO ) VALUES('Copas Inesqueciveis', 'Marco Alcantara', 'M', '200', 'Larson', 130, 'RS', '2018');
INSERT INTO LIVROS( NOME, AUTOR, AUTOR_SEXO, PAGINAS, EDITORA, VALOR, ESTADO_DA_EDITORA, ANO_PUBLICACAO ) VALUES('O poder da mente', 'Clara Mafra', 'F', '120', 'Continental', 56, 'SP', '2017'); /* trazer todos os doados */

SELECT  NOME
       ,AUTOR
       ,AUTOR_SEXO
       ,PAGINAS
       ,EDITORA
       ,VALOR
       ,ESTADO_DA_EDITORA
       ,ANO_PUBLICACAO
FROM LIVROS; /* TRAZER NOME DO LIVRO E O NOME DA EDITORA */

SELECT  NOME
       ,EDITORA
FROM LIVROS; /* Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino. */

SELECT  NOME
       ,ESTADO_DA_EDITORA
FROM LIVROS
WHERE AUTOR_SEXO = 'M'; /* Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino. */

SELECT  NOME
       ,PAGINAS
FROM LIVROS
WHERE AUTOR_SEXO = F; /* Trazer os valores dos livros das editoras de São Paulo. */

SELECT  VALOR
FROM LIVROS
WHERE ESTADO_DA_EDITORA = 'SP'; /* Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio). */

SELECT  AUTOR
       ,AUTOR_SEXO
FROM LIVROS
WHERE AUTOR_SEXO = 'M'
AND (ESTADO_DA_EDITORA = 'SP' OR ESTADO_DA_EDITORA = 'RJ'); 