CREATE TABLE "Staff" (
	staff_id SERIAL PRIMARY KEY,
	first_name VARCHAR(60),
	last_name VARCHAR(60),
	email VARCHAR(60),
	phone VARCHAR(60)
);

CREATE TABLE "Parts" (
	part_id SERIAL PRIMARY KEY,
	price NUMERIC(8,2),
	amount INTEGER
);

CREATE TABLE "Customer" (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(60),
	last_name VARCHAR(60)
);

CREATE TABLE "Car" (
	car_id SERIAL PRIMARY KEY,
	"VIN" VARCHAR(60),
	make VARCHAR(60),
	model VARCHAR(60),
	"year" INTEGER,
	price NUMERIC(8,2),
	staff_id INTEGER,
	customer_id INTEGER,
	FOREIGN KEY (staff_id)
		REFERENCES "Staff" ("staff_id"),
	FOREIGN KEY (customer_id)
		REFERENCES "Customer" ("customer_id")
);

CREATE TABLE "Service" (
	service_id SERIAL PRIMARY KEY,
	"date" TIMESTAMP WITHOUT TIME ZONE,
	customer_id INTEGER,
	staff_id INTEGER,
	part_id INTEGER,
	car_id INTEGER,
	FOREIGN KEY (customer_id)
		REFERENCES "Customer" ("customer_id"),
	FOREIGN KEY (staff_id)
		REFERENCES "Staff" ("staff_id"),
	FOREIGN KEY (part_id)
		REFERENCES "Parts" (part_id),
	FOREIGN KEY (car_id)
		REFERENCES "Car" ("car_id")
);

CREATE TABLE "Invoice" (
	invoice_id SERIAL PRIMARY KEY,
	customer_id INTEGER,
	car_id INTEGER,
	staff_id INTEGER,
	service_id INTEGER,
	part_id INTEGER,
	sub_total NUMERIC(8,2),
	"date" TIMESTAMP WITHOUT TIME ZONE,
	FOREIGN KEY (customer_id)
		REFERENCES "Customer" ("customer_id"),
	FOREIGN KEY (staff_id)
		REFERENCES "Staff" ("staff_id"),
	FOREIGN KEY (part_id)
		REFERENCES "Parts" (part_id),
	FOREIGN KEY (car_id)
		REFERENCES "Car" ("car_id"),
	FOREIGN KEY (service_id)
		REFERENCES "Service" ("service_id")
);

ALTER TABLE "Customer"
ADD COLUMN "invoice_id" INTEGER
REFERENCES "Invoice" ("invoice_id")