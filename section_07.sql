/* is null and is not null */

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE EMAIL IS NULL;

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE EMAIL IS NOT NULL;

/* update */

UPDATE CLIENTE SET EMAIL = 'SR.JORGE@GMAIL.COM' WHERE NOME = 'JORGE';
UPDATE CLIENTE SET EMAIL = 'LILIAN.L@GMAIL.COM' WHERE NOME = 'CARLA' AND EMAIL = 'CARLA@TERATI.COM.BR';

/* DELETE */

DELETE FROM CLIENTE;  -- NUNCA USAR

SELECT * FROM CLIENTE WHERE NOME = 'ANA';

SELECT COUNT(*) FROM CLIENTE; -- TOTAL DE CLIENTES 6


SELECT COUNT(*) FROM CLIENTE WHERE NOME = 'ANA'; -- TOTAL DELETADO 1

DELETE FROM CLIENTE WHERE NOME = 'ANA';

INSERT INTO CLIENTE VALUES('CARLA', 'F', 'C.LOPES@GMAIL.COM', 4568854,  '43454356344524', 'rUA COPPER LEAF - WILLIAMSBURG - KITCHENER');

SELECT * FROM CLIENTE WHERE NOME = 'CARLA' OR EMAIL = 'LILIAN.L@GMAIL.COM';

SELECT * FROM CLIENTE WHERE NOME = 'CARLA' AND EMAIL = 'LILIAN.L@GMAIL.COM';

DELETE FROM CLIENTE WHERE NOME = 'CARLA' AND EMAIL = 'LILIAN.L@GMAIL.COM';