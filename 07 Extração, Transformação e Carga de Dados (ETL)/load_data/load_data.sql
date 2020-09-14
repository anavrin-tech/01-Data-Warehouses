
# Cria o schema no Banco de Dados e concede privilégios
create user engenheiro identified by dsacademy;
grant connect, resource, unlimited tablespace to engenheiro;


# Cria uma tabela
CREATE TABLE cinema ( 
  ID   NUMBER PRIMARY KEY , 
  USER_ID       VARCHAR2(30), 
  MOVIE_ID      VARCHAR2(30), 
  RATING        DECIMAL EXTERNAL, 
  TIMESTAMP     VARCHAR2(256) 
);


# Para carregar dados no Oracle, usamos o SQL*Loader. Este aplicativo requer um control file conforme abaixo
# https://grouplens.org/datasets/movielens/

# Arquivo loader1.ctl
load data
INFILE 'ml-20m/ratings.csv'
INTO TABLE cinema
APPEND
FIELDS TERMINATED BY ','
trailing nullcols
(id SEQUENCE (MAX,1),
 user_id CHAR(30),
 movie_id CHAR(30),
 rating   decimal external,
 timestamp  char(256))


# Executando o SQL*Loader na linha de comando
sqlldr userid=engenheiro/dsacademy control=loader1.ctl log=loader.log







