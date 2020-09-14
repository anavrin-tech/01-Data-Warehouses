load data
INFILE 'fato.txt'
INTO TABLE TB_FATO
TRUNCATE
FIELDS TERMINATED BY ','
trailing nullcols
(ID_CLIENTE ,
 ID_PRODUTO, 
 ID_CANAL, 
 ID_DATA,
 VALOR_VENDA)


# Executando o SQL*Loader na linha de comando
sqlldr userid=vendas/vendaspwd@orcl control=loader1.ctl log=loader.log







