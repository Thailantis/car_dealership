CREATE or REPLACE FUNCTION insert_car_make_and_address(
    make_name varchar, 
    model_name varchar, 
    address1 varchar, 
    address2 varchar, 
    district varchar, 
    city varchar, 
    postal_code smallint
)
RETURNS AS VOID
$$
    BEGIN
        INSERT INTO car_make(make, model),
        Values(make_name, model_name),
        INSERT INTO address(address1, address2, district, city, postal_code),
        Values(address1, address2, district, city, postal_code);
    END;
$$
LANGUAGE plpgsql;

SELECT insert_car_make_and_address('Toyota', 'Camry', '123 Sesame Street', 'APT8G', 'Brooklyn', 'New York', 11202)

CREATE OR REPLACE FUNCTION insert_customer_and_car_sale(
    c_last_name varchar,
    c_first_name varchar,
    c_email varchar,
    customer_id INTEGER,
    car_inv_id INTEGER,
    sales_id INTEGER,
    sales_date DATE,
    payment_date DATE,
    amount DECIMAL,
    payment_method varchar
)
RETURNS AS VOID

$$
    BEGIN
        INSERT INTO customer(c_last_name, c_first_name, c_email),
        Values (c_last_name, c_first_name, c_email),
        INSERT INTO car_sale(car_inv_id, customer_id, sales_id, sale_date),
        Values (car_inv_id, customer_id, sales_id, sale_date),
        INSERT INTO payment(payment_date, amount, customer_id, payment_method, car_sale_id),
        Values (payment_date, amount, customer_id, payment_method, car_sale_id);
    END;
$$
LANGUAGE plpgsql;

SELECT  insert_customer_and_car_sale('Valentine', 'Vincent', 'Heartseeker84@yahoo.com', 1, 1, '2023-05-05', '2023-05-05', 100000, 'Credit Card');
