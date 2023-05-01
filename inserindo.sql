INSERT INTO PRODUTOS (
    CODIGO, DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_LISTA
) VALUES 
    ('1040111', 'Light - 350 ml - Manga' , 'Manga', '350 ml', 'Lata', 3.20), 
    ('1040112', 'Light - 350 ml - Maça' , 'Maça', '350 ml', 'Lata', 4.20);


INSERT INTO PRODUTOS 
    SELECT CODIGO_DO_PRODUTO AS CODIGO, NOME_DO_PRODUTO AS DESCRITOR, 
    SABOR, TAMANHO, EMBALAGEM, PRECO_DE_LISTA AS PRECO_LISTA 
FROM SUCOS_FRUTAS.DBO.TABELA_DE_PRODUTOS;


INSERT INTO PRODUTOS 
    SELECT CODIGO_DO_PRODUTO AS CODIGO, NOME_DO_PRODUTO AS DESCRITOR, 
    SABOR, TAMANHO, EMBALAGEM, PRECO_DE_LISTA AS PRECO_LISTA 
FROM SUCOS_FRUTAS.DBO.TABELA_DE_PRODUTOS 
WHERE CODIGO_DO_PRODUTO <> '1040107';

 no banco VENDAS SUCOS, eu vou clicar com o botão direito do mouse sobre a tabela PRODUTOS e posicionar o mouse sobre a opção Script de Tabela como. Nos opções que forem exibidas, eu tenho INSERT Para, e eu vou escolher a opção Janela do Editor de Nova Consulta.

Para solucionar o desafio, podemos seguir os seguintes passos:

Botão da direita do mouse sobre a base Vendas Sucos e escolha as opções do menu Tarefas \ Importar dados.
Como fonte de dados, escolha Origem de Arquivos Simples e selecione o arquivo Notas.csv:
Selecione em formato a opção Delimitado.
Em Linhas de cabeçalho a serem ignoradas marque 0.
Marque Nomes de coluna na primeira linha de dados.
Cliquem e Next.
Como fonte de dados, escolha Origem de Arquivos Simples e selecione o arquivo Notas.csv.
Escolha como destino a fonte SQL Server Native Client 11.0. Insira a autenticação e depois o Banco de Dados VENDAS SUCOS.
Selecione como destino a TABELA_DE_VENDAS.
Clique no botão Editar Mapeamentos.
Faca o mapeamento do campo DATA para DATA_VENDA.
Clique em OK.
Clique 3 vezes em Next e depois em Finish.
Clique em Close.
Verifique o conteudo da tabela em:
SELECT * FROM TABELA_DE_VENDAS