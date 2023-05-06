Insert into car_make(make, model)
Values ('Toyota', 'Corolla'),
       ('Honda', 'Civic');

Insert into address(address1, address2, district, city, postal_code)
Values ('123 Sesame St', 'APT8G', 'Uptown', 'New York', 10016),
       ('456 Beverly Hill', 'NULL', 'West Side', 'Los Angeles', 90002);

Insert into mechanic(m_last_name, m_first_name, m_email, address_id)
Values ('Fizzart', 'Shiharam', 'WyvernLord10@hotmail.com', 1),
       ('Pronislav', 'Gilbert', 'IronWall55@gmail.com', 2);

Insert into customer(c_last_name, c_first_name, c_email, address_id)
Values ('Vestra', 'Hubert', 'Miasma021@yahoo.com', 1),
       ('Molinaro', 'Dedue', 'DuscurNight19@gmail.com', 2);

Insert into dealership(address_id, dealership_name)
Values (1, 'New York Toyota'),
       (2, 'Los Angeles Honda');

Insert into sales_person(s_last_name, s_first_name, s_email, address_id)
Values ('Arnault', 'Dorothea', 'Songbirdheron18@gmail.com', 1),
       ('Ignatz', 'Victor', 'PaintIgnatz17@gmail.com', 2);

Insert into car(car_make_id, vin, car_year, color)
Values (1, 'JTDKN3DUOE0332651', 2015, 'Red'),
       (2, '2HGFB2F50EH524634', 2014, 'Blue');

Insert into service(dealership_id, car_id, customer_id, service_date, due_date)
Values (1, 1, 1, '2023-05-05', '2023-05-25'),
       (2, 2, 2, '2023-05-06', '2023-05-26');

Insert into car_inventory(car_id, dealership_id, brand_new)
Values (1, 1, true),
       (1, 1, true);

Insert into service_team(service_id, mechanic_id)
Values (1, 1),
       (2, 2);

Insert into payment(payment_date, amount, customer_id, payment_method, car_sale_id, service_id)
Values ("2023-05-05", 200000, 1, 'Credit Card', 1, NULL),
       ("2023-05-06", 150000, 2, 'Check', NULL, 2);
