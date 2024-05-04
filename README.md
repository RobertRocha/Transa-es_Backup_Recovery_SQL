# Transações_Backup_Recovery_SQL

-- Parte 1 -- Transações 
Objetivo:  

Neste desafio foi feito transações para executar modificações na base de dados. Primeiramente, é preciso desabilitar o autocommit do MySQL. Caso contrário, cada instrução SQL executada será confirmada. 

CODE 1

 Foi inserido statements de consultas e modificações de dados persistidos no banco de dados via transações.  




 -- Parte 2 -- Transação com procedure
 Criando outra transação, contudo, esta será definida dentro de uma procedure. Neste caso,terá uma verificação de erro. Essa verificação irá acarretar um ROLLBACK, total ou parcial (SAVEPOINT). 


-- parte 3 -- Backup e recovery
Objetivo: 

Utilizando o mysqdump para realizar o backup e recovery do banco de dados e-commerce; 

Realizando o backup de diferentes bancos de dados e inserindo os recursos como: procedures, eventos e outros. 

Adicionando o arquivo de backup ao github juntamente com o script; 
