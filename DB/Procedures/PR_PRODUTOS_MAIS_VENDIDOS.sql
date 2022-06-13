CREATE PROCEDURE PR_PRODUTOS_MAIS_VENDIDOS

AS BEGIN  
	DECLARE @HTML VARCHAR(MAX);  
 
	SET @HTML = '
	<table border="1">
		<tr>
			<th>Id Produto</th>
			<th>Nome</th>
			<th>Total Vendido</th>
		</tr>' +  
		CAST ( 
		(
		   SELECT TOP 5
				td = V.ID_PRODUTO, '',
				td = P.NOME,
				COUNT(*) AS TOTAL_VENDIDO
			FROM TB_VENDAS_PRODUTOS AS V
			JOIN TB_PRODUTOS AS P ON P.ID = V.ID_PRODUTO
			WHERE V.DAT_CRIACAO > GETDATE()-7
			GROUP BY ID_PRODUTO, NOME
			ORDER BY TOTAL_VENDIDO DESC 
			FOR XML PATH('tr'), TYPE
		) AS NVARCHAR(MAX) ) + '
	</table>';
 
	EXEC msdb.dbo.sp_send_dbmail
		@profile_name = 'SysPerfil',
		@recipients = 'contato@sysmap.com.br',
		@subject = 'Produtos mais vendidos na ultima semana',
		@body = @HTML,
		@body_format = 'HTML'


END 
GO