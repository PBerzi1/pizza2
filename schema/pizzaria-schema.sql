CREATE DATABASE pizza2;
USE pizza2;


CREATE TABLE pizzas(
	pizza_id INT AUTO_INCREMENT,
	pizza_type VARCHAR(40) NOT NULL,
	price DECIMAL NOT NULL,
	vegetarian BOOLEAN NOT NULL,
	PRIMARY KEY (pizza_id)
);


CREATE TABLE customer(
	customer_id INT,
	customer_name VARCHAR(50),
	customer_address VARCHAR(70),
	new_member BOOLEAN,
	PRIMARY KEY (customer_id)
);


CREATE TABLE orders(
	order_id INT AUTO_INCREMENT,
	customer_id INT,
	fk_pizza_id INT,
	fk_customer_id INT,
	date_booking DATETIME NOT NULL,
	PRIMARY KEY (order_id),
	FOREIGN KEY (fk_pizza_id) REFERENCES pizzas(pizza_id),
	FOREIGN KEY (fk_customer_id) REFERENCES customer(customer_id)
	
);