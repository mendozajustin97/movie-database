CREATE TABLE Movie_theatre(
	-- column_name DATATYPE <CONSTRAINTS>,
	theatre_id SERIAL PRIMARY KEY,
	movie_theatre_name VARCHAR(50)
);

SELECT *
FROM movie_theatre;
-- Create Order Table with Foreign key to Customer
CREATE TABLE Customers(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	age_ INTEGER NOT NULL,
	theatre_id INTEGER NOT NULL, 
	FOREIGN KEY(theatre_id) REFERENCES Movie_theatre(theatre_id)
);

SELECT *
FROM Customers;

CREATE TABLE Tickets(
	ticket_id SERIAL PRIMARY KEY,
	price NUMERIC(5,2),
	quanity INTEGER,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES Customers(customer_id)
);

SELECT *
FROM Tickets;

CREATE TABLE Movies(
	name_ VARCHAR(50),
	description VARCHAR(200),
	ticket_id INTEGER NOT NULL,
	FOREIGN KEY(ticket_id) REFERENCES Tickets(ticket_id)
);

SELECT * 
FROM Movies
