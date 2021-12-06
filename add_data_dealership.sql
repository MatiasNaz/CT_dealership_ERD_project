INSERT INTO salesperson (first_name, last_name)
VALUES (
	'Tim',
	'Edwards'	
);

INSERT INTO salesperson (first_name, last_name)
VALUES (
	'Julia',
	'Fields'	
);

SELECT * FROM salesperson

===========================================================

INSERT INTO customer (first_name, last_name)
VALUES (
	'John',
	'Smith'	
);

INSERT INTO customer (first_name, last_name)
VALUES (
	'Diego',
	'Rodriguez'
);

SELECT * FROM customer

===========================================================

CREATE OR REPLACE FUNCTION add_car(
	car_year varchar,
	make varchar,
	model varchar,
	used boolean,
	sold boolean
)

RETURNS void
AS $MAIN$
BEGIN 
	INSERT INTO car(car_year, make, model, used, sold)
	VALUES (car_year, make, model, used, sold);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_car('2012', 'KIA', 'Optima', TRUE, TRUE);

SELECT * FROM car

===========================================================

INSERT INTO invoice (price, invoice_date)
VALUES (
	7500.00,
	date '08,02,2020'
); 

SELECT * FROM invoice

===========================================================

CREATE OR REPLACE FUNCTION add_ticket(
	service_ticket_id integer,
	customer_id integer,
	vin_num integer,
	mechanic_id integer,
	part_id integer,
	st_date date,
	total_cost numeric,
	service_type varchar
)

RETURNS void
AS $MAIN$
BEGIN 
	INSERT INTO service_ticket(service_ticket_id, customer_id, vin_num, mechanic_id, part_id, st_date, total_cost, service_type)
	VALUES(service_ticket_id, customer_id, vin_num, mechanic_id, part_id, st_date, total_cost, service_type);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_ticket(1, 1, 1, 1, 1, date '10,06,2021', 189.00, 'wheel rim');

SELECT * FROM service_ticket

===========================================================

INSERT INTO mechanic(first_name, last_name)
VALUES (
	'Carl',
	'Grayson'
);

INSERT INTO mechanic(first_name, last_name)
VALUES (
	'Thomas',
	'McCoy'
);

SELECT * FROM mechanic

===========================================================

INSERT INTO parts(part_name, price)
VALUES (
	'wheel rim',
	189.00
);

INSERT INTO parts(part_name, price)
VALUES (
	'fuel injector',
	350.00
);

SELECT * FROM parts

