-- To know the table funnel.
SELECT * FROM sales.funnel;

-- Question 01
SELECT visit_id, customer_id, product_id, store_id
FROM sales.funnel;

-- Question 02
SELECT product_id, add_to_cart_date
FROM sales.funnel
WHERE add_to_cart_date IS NOT NULL
ORDER BY add_to_cart_date;

-- Question 03
SELECT visit_id, customer_id, paid_date
FROM sales.funnel
WHERE paid_date IS NOT NULL
ORDER BY paid_date;

-- Question 04
SELECT visit_id, customer_id, product_id, start_checkout_date
FROM sales.funnel
WHERE start_checkout_date IS NOT NULL
ORDER BY start_checkout_date;

-- Question 05
SELECT visit_id, product_id, discount
FROM sales.funnel
WHERE discount < -0.20
ORDER BY discount;

-- Question 06
SELECT visit_id, customer_id, product_id, store_id
FROM sales.funnel
WHERE store_id = 'BF580E604866'
ORDER BY product_id;

-- Question 07
SELECT AVG(discount)::NUMERIC(8,4)
FROM sales.funnel;

-- Question 08
SELECT COUNT(start_checkout_date) AS checkout_count
FROM sales.funnel;

-- Question 09 (On going)

-- Question 10 (On going)

