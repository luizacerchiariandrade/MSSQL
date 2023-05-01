https://cursos.alura.com.br/course/microsoft-sql-server-2022-manipulando-dados/task/120066

UPDATE <nome da tabela> SET 
    <nome do campo> = <valor>, 
    <nome do campo> = <valor>, 
    <nome do campo> = <valor>;

UPDATE <nome da tabela> SET 
    <nome do campo> = <valor>, 
    <nome do campo> = <valor>, 
    <nome do campo> = <valor> 
WHERE <condição>;

UPDATE PRODUTOS SET PRECO_LISTA = 5 WHERE CODIGO = '1040107';
SELECT * FROM PRODUTOS WHERE SABOR = 'Manga';
UPDATE PRODUTOS SET PRECO_LISTA = PRECO_LISTA * 1.10;


UPDATE PRODUTOS SET PRECO_LISTA = PRECO_LISTA * 1.10 
WHERE SABOR = 'Manga';

SELECT DESCRITOR FROM * PRODUTOS WHERE TAMANHO = '350 ml';

UPDATE PRODUTOS SET 
    DESCRITOR = replace(DESCRITOR, '350 ml', '550 ml'), 
    TAMANHO = '550 ml' 
WHERE TAMANHO = '350 ml';

SELECT DESCRITOR, TAMANHO, EMBALAGEM FROM PRODUTOS 
WHERE TAMAMHO = '550 ml';