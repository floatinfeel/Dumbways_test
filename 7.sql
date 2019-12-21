create database ukmgulanda;
use ukmgulanda;

create table customers(
id int(11) PRIMARY KEY not null auto_increment,
first_name varchar (35),
last_name varchar (35),
email varchar (35),
address varchar (500),
city varchar (50),
state varchar (50),
zip_code int (6) );

create table orders(
id int (11) PRIMARY KEY not null auto_increment,
customer_id int (11),
order_place_date date );

alter table orders 
add foreign key (customer_id) references orders(id);

insert into customers(first_name, last_name, email, address, city, state, zip_code) values
('Dandi', 'Husni', 'dandythamrin@gmail.com', 'Jl. Kp. Balong', 'Bogor', 'Indonesia', 16320),
('Fina', 'Rais', 'finarais@gmail.com', 'Jl. Kp. Balong', 'Bogor', 'Indonesia', 16320),
('Gita', 'Injani', 'gitainjani@gmail.com', 'Jl. Kp. Balong', 'Bogor', 'Indonesia', 16320);

insert into orders(order_place_date) values
(2019-08-02),
(2019-01-03),
(2019-04-08);

select * from customers, orders group by customers.email order by top;