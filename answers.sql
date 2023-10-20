-- Part 1.
-- Question 1. $
SELECT email FROM customers ORDER BY email ASC;
-- Question 2. $
-- SELECT customer_id FROM orders WHERE customers =(SELECT fname, lname FROM customers WHERE fname = 'Elizabeth' AND lname ='Crocker');
SELECT id from orders WHERE customer_id=1;
-- Question 3.$
SELECT SUM(num_cupcakes) FROM orders WHERE processed = 'f';
-- Question 4.?
SELECT cupcake_id, SUM(num_cupcakes) FROM orders ASC;
-- Question 5.?
SELECT email, SUM(num_cupcakes) FROM orders>()
-- Question 6.?
SELECT fname, lname, email FROM customers WHERE 
-- Part 2.

