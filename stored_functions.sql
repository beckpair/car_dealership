CREATE OR REPLACE FUNCTION new_Staff (staff_id INTEGER, first_name VARCHAR, last_name VARCHAR, email VARCHAR, phone VARCHAR)
RETURNS void
LANGUAGE plpgsql 
AS $MAIN$ 
BEGIN
		INSERT INTO "Staff"
		VALUES(staff_id, first_name, last_name, email, phone);
		
END;
$MAIN$

SELECT new_Staff(3, 'Princess', 'Carolyn', 'p.carolyn@cars.com', '(123) 345-6789');




CREATE OR REPLACE FUNCTION new_Customer (customer_id INTEGER, first_name VARCHAR, last_name VARCHAR)
RETURNS void
LANGUAGE plpgsql 
AS $MAIN$ 
BEGIN
		INSERT INTO "Customer"
		VALUES(customer_id, first_name, last_name);
		
END;
$MAIN$

SELECT new_Customer(3, 'Herb', 'Kazazz');
