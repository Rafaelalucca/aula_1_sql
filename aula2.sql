DROP DATABASE IF EXISTS aula_banco;
CREATE DATABASE aula_banco;


USE aula_banco;
/** Criando a tabela */
DROP TABLE IF EXISTS estado;
CREATE TABLE estado(
id INT NOT NULL AUTO_INCREMENT , 
nome VARCHAR(200) NOT NULL UNIQUE , -- CONSTRAINT INLINE 
sigla CHAR(2) NOT NULL UNIQUE ,
ativo CHAR(1) NOT NULL DEFAULT 'S',
data_cadastro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
-- CHECK (ativo IN('S','N'))  -- CONSTRAINT OUT OF LINE
CONSTRAINT pk_estado PRIMARY KEY (id),
CONSTRAINT coluna_ativo CHECK (ativo IN('S' , 'N')) 

);

/** Inserindo registros  */
INSERT INTO estado (nome,sigla) VALUES ("PARANÁ","PR");
INSERT INTO estado (nome,sigla) VALUES ("São paulo","SP");
INSERT INTO estado (nome,sigla) VALUES ("BAHIA","BA");

SELECT id,nome,ativo,data_cadastro FROM estado;
