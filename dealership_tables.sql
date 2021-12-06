CREATE TABLE salesperson (
	sales_id SERIAL PRIMARY KEY,
	first_name varchar(25),
	last_name varchar(25)
);

CREATE TABLE customer (
	customer_id SERIAL PRIMARY KEY,
	first_name varchar(25),
	last_name varchar(25)
);

CREATE TABLE car (
	vin_num SERIAL PRIMARY KEY,
	car_year varchar(4),
	make varchar(25),
	model varchar(25),
	used boolean,
	sold boolean
);

CREATE TABLE invoice (
	Purchase_Order_id SERIAL PRIMARY KEY,
	price NUMERIC(7,3),
	vin_num SERIAL NOT NULL,
	customer_id SERIAL NOT NULL,
	sales_id SERIAL NOT NULL,
	FOREIGN KEY (vin_num) REFERENCES car(vin_num),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (sales_id) REFERENCES salesperson(sales_id),
	invoice_date date
);

CREATE TABLE service_record (
	record_id SERIAL PRIMARY KEY,
	service_ticket_id integer NOT NULL,
	FOREIGN KEY (service_ticket_id) REFERENCES service_ticket(service_ticket_id)
);

CREATE TABLE service_ticket (
	service_ticket_id SERIAL PRIMARY KEY,
	customer_id integer NOT NULL,
	vin_num integer NOT NULL,
	mechanic_id integer NOT NULL,
	part_id integer NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (vin_num) REFERENCES car(vin_num), 
	FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id), 
	FOREIGN KEY (part_id) REFERENCES parts(part_id),
	st_date date,
	total_cost numeric(7,3),
	service_type varchar(30)
);

CREATE TABLE mechanic (
	mechanic_id SERIAL PRIMARY KEY,
	first_name varchar(25),
	last_name varchar(25)
);

CREATE TABLE parts (
	part_id SERIAL PRIMARY KEY,
	part_name varchar(25),
	price NUMERIC(7,3)
);