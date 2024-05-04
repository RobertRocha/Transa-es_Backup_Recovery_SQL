USE ecommerce;

DELIMITER $
CREATE PROCEDURE eco_falha()
     BEGIN
         DECLARE EXIT HANDLER FOR SQLEXCEPTION 
     BEGIN
         SHOW ERRORS LIMIT 1;
         ROLLBACK;
     END;
     
     START TRANSACTION;
     
         INSERT INTO clients 
         VALUES(5, 'Cássio', 'U', 'Monteiro', '987523199', 'rua caracas 45, Centro');
         
         COMMIT;
     END $
     
     DELIMITER ;

     CALL eco_falha();


