-- Customer table
-- I made this table to establish the starting point of a customers experience
-- making a table to keep up with if a customer orders tickets online/in person
create table Customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

-- Seats will work like the inventory, keeping track of our seat count for each movie
create table Seats (
	upc SERIAL primary key,
	seat_count INTEGER
);

-- Tickets will be tracked by id and date also having sub/total cost 
-- with a FK upc because they will be connected to seats
-- sale a ticket, sell a seat in simple terms
create table Ticket (
	ticket_id SERIAL primary key,
	order_date DATE default CURRENT_DATE,
	sub_total NUMERIC(8,2),
	total_cost NUMERIC(10,2),
	upc INTEGER not null,
	foreign key(upc) references Seats(upc)
);

-- Movies would basically work like the final product here. tracked by seats
create table Movies (
	movie_id SERIAL primary key,
	amount NUMERIC(5,2),
	movie_name VARCHAR(100),
	upc INTEGER not null,
	foreign key(upc) references Seats(upc)
);

-- Concessions because who doesn't want snacks with a movie
-- connected this back to the customer because it's optional to have
create table Concessions (
	concession_id SERIAL primary key,
	concession_name VARCHAR(150),
	amount NUMERIC(5,2),
	customer_id INTEGER not null,
	foreign key(customer_id) references customer(customer_id)
);

-- A little basket to hold our customers enter order online or in person
create table Cart (
	cart_id SERIAL primary key,
	customer_id INTEGER,
	ticket_id INTEGER,
	concession_id INTEGER,
	foreign key(customer_id) references customer(customer_id),
	foreign key(ticket_id) references ticket(ticket_id)
);



