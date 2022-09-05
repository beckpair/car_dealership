INSERT INTO "Staff" (
	staff_id,
	first_name,
	last_name,
	email,
	phone
) VALUES (
	1,
	'Bojack',
	'Horseman',
	'b.horseman@cars.com',
	'(123) 456-7890'
), 
(
	2,
	'Mr.',
	'Peanutbutter',
	'm.peanutbutter@cars.com',
	'(123) 198-7654'
);

INSERT INTO "Parts" (
	part_id,
	price,
	amount
) VALUES (
	1,
	350.00,
	45
),
(
	2,
	60.00,
	50
);

INSERT INTO "Customer" (
	customer_id,
	first_name,
	last_name
) VALUES (
	1,
	'Todd',
	'Chavez'
),
(
	2,
	'Diane',
	'Nguyen'
);

INSERT INTO "Car" (
	car_id,
	"VIN",
	make,
	model,
	"year",
	price,
	staff_id,
	customer_id
) VALUES (
	1,
	12345,
	'subaru',
	'outlander',
	2020,
	20000.00,
	1,
	1
),
(
	2,
	67890123,
	'honda',
	'civic',
	2018,
	15000.00,
	2,
	2
);

INSERT INTO "Service" (
	service_id,
	customer_id,
	staff_id,
	part_id,
	car_id
) VALUES (
	1,
	1,
	1,
	2,
	1
),
(
	2,
	2,
	2,
	1,
	2
	
);

INSERT INTO "Invoice" (
	invoice_id,
	customer_id,
	car_id,
	staff_id,
	service_id,
	part_id
-- 	sub_total
) VALUES (
	1,
	1,
	1,
	1,
	1,
	2
-- 	stored procedure
),
(
	2,
	2,
	2,
	2,
	2,
	1
	-- stored procedure
);