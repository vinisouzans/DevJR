--INSERT NA TABELA USUARIOS
INSERT INTO TB_USUARIOS (ID, NOME, DAT_NASCIMENTO, DAT_CRIACAO, DAT_ALTERACAO, DAT_EXCLUSAO, CRIADO_POR_USU_ID, ALTERADO_POR_USU_ID, EXCLUIDO_POR_USU_ID, IND_ATIVO)
VALUES (1, 'JOAO DA SILVA', '1980-12-03', GETDATE(), NULL, NULL, 1, NULL, NULL, 1)

INSERT INTO TB_USUARIOS (ID, NOME, DAT_NASCIMENTO, DAT_CRIACAO, DAT_ALTERACAO, DAT_EXCLUSAO, CRIADO_POR_USU_ID, ALTERADO_POR_USU_ID, EXCLUIDO_POR_USU_ID, IND_ATIVO)
VALUES (2, 'MARIA PEREIRA', '1990-08-20', GETDATE(), NULL, NULL, 1, NULL, NULL, 1)

--INSERT NA TABELA PRODUTOS
INSERT INTO TB_PRODUTOS (ID, NOME, DAT_CRIACAO,	DAT_ALTERACAO,	DAT_EXCLUSAO,	CRIADO_POR_USU_ID,	ALTERADO_POR_USU_ID,	EXCLUIDO_POR_USU_ID, IND_ATIVO)
VALUES (11, 'CELULAR', GETDATE(), NULL, NULL, 1, NULL, NULL, 1)

INSERT INTO TB_PRODUTOS (ID, NOME, DAT_CRIACAO,	DAT_ALTERACAO,	DAT_EXCLUSAO,	CRIADO_POR_USU_ID,	ALTERADO_POR_USU_ID,	EXCLUIDO_POR_USU_ID, IND_ATIVO)
VALUES (12, 'BICICLETA', GETDATE(), NULL, NULL, 2, NULL, NULL, 1)

--INSERT NA TABELA VENDAS
INSERT INTO TB_VENDAS (ID,	DAT_CRIACAO,	DAT_ALTERACAO,	DAT_EXCLUSAO,	CRIADO_POR_USU_ID,	ALTERADO_POR_USU_ID,	EXCLUIDO_POR_USU_ID,	IND_ATIVO)
VALUES (1010, GETDATE(), NULL, NULL, 1, NULL, NULL, 1)

INSERT INTO TB_VENDAS (ID,	DAT_CRIACAO,	DAT_ALTERACAO,	DAT_EXCLUSAO,	CRIADO_POR_USU_ID,	ALTERADO_POR_USU_ID,	EXCLUIDO_POR_USU_ID,	IND_ATIVO)
VALUES (1011, GETDATE(), NULL, NULL, 2, NULL, NULL, 1)

--INSERT NA TABELA TB_VENDAS_PRODUTOS
INSERT INTO TB_VENDAS_PRODUTOS (ID,	ID_VENDA,	ID_PRODUTO,	VALOR,	DESCONTO,	VALOR_FINAL,	DAT_CRIACAO,	DAT_ALTERACAO,	DAT_EXCLUSAO,	CRIADO_POR_USU_ID,	ALTERADO_POR_USU_ID,	EXCLUIDO_POR_USU_ID,	IND_ATIVO)
VALUES (991, 1010, 1, 1200.65, 150.15,  1050.5, GETDATE(), NULL, NULL, 1, NULL, NULL, 1 )

INSERT INTO TB_VENDAS_PRODUTOS (ID,	ID_VENDA,	ID_PRODUTO,	VALOR,	DESCONTO,	VALOR_FINAL,	DAT_CRIACAO,	DAT_ALTERACAO,	DAT_EXCLUSAO,	CRIADO_POR_USU_ID,	ALTERADO_POR_USU_ID,	EXCLUIDO_POR_USU_ID,	IND_ATIVO)
VALUES (992, 1011, 12, 900, 50,  850, GETDATE(), NULL, NULL, 2, NULL, NULL, 1 )





