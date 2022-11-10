-- Customer Columns
insert into customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
) values (
	1,
	'Oriah',
	'Saint',
	'555 The matrix lane earth, universe 77777',
	'1234-5678-1234-5678 1/23 999'
);

-- Concession Columns
insert into concessions(
	concession_id,
	concession_name,
	amount,
	customer_id
) values (
	1,
	'popcorn',
	5.00,
	1
);

-- Seat columns
insert into seats (
	upc,
	seat_count
) values (
	1,
	500.00
);

-- Movies columns
insert into movies (
	movie_id,
	amount,
	movie_name,
	upc
) values (
	1,
	25.00,
	'INCEPTION',
	1
);

-- Ticket colums
insert into ticket (
	ticket_id,
	sub_total,
	total_cost,
	upc
) values (
	1,
	30.00,
	36.75,
	1
);

-- Cart Colums
insert into cart (
	cart_id,
	customer_id,
	ticket_id
) values (
	1,
	1,
	1
);

select * from customer
select * from ticket 
select * from concessions
select * from cart
select * from movies
select * from seats
