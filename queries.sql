-- selects

-- joins

-- subquery 

-- function
USE ZOO;

-- CREATE TABLE THAT ADDS FOOD TYPE AND AND AMOUNT
CREATE TABLE food_stock
SELECT f.FoodType_ID, f.FoodType, f.Amount_eats,
s.Amount_available
FROM feeding f
INNER JOIN stock s
ON 
f.FoodType_ID = s.FoodType_ID;

SELECT * from food_stock;

-- FUNCTION TO SEE IF HAVE ENOUGH STOCK
DELIMITER //
CREATE FUNCTION enough_stock(Amount_available FLOAT(2), Amount_eats FLOAT(2))
RETURNS VARCHAR(20) -- 'YES' 'JUST ENOUGH' 'NO'
DETERMINISTIC

BEGIN	
DECLARE enough_stock VARCHAR(20);

IF Amount_available > Amount_eats THEN
SET enough_stock = 'YES';

ELSEIF (Amount_available = Amount_eats) THEN
SET enough_stock = 'JUST ENOUGH';

ELSEIF Amount_available < Amount_eats THEN
SET enough_stock = 'NO';

END IF ;

RETURN(enough_stock);

END//
DELIMITER ;

SELECT FoodType_ID, FoodType, Amount_eats, Amount_available, enough_stock
from food_stock;

-- stored procedure
