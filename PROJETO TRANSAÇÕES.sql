USE ecommerce;

SELECT @@autocommit;
SET @@autocommit = 0;

START TRANSACTION;
UPDATE clients 
SET address = ' rua manacas dias 78, Carango ' 
WHERE idCliente = 2;
COMMIT;



START TRANSACTION;
INSERT INTO clients 
VALUES ( DEFAULT, 'Mário', 'P', 'Pereira', '546258795', 'rua tesouros 12, Canadá' );
COMMIT;



START TRANSACTION;
SELECT Fname, Lname, address, orderDescription 
FROM clients AS c   
INNER JOIN orders AS o
ON c.idCliente = o.idOrder;
COMMIT;



START TRANSACTION;
DELETE FROM product 
WHERE idProduct = 7;
COMMIT;