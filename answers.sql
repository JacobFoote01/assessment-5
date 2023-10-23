-- Part 1.
-- Question 1. 
SELECT email FROM customers ORDER BY email ASC;
-- Question 2. 
SELECT id FROM orders WHERE customer_id =(SELECT id FROM customers WHERE fname = 'Elizabeth' AND lname ='Crocker');
-- SELECT id from orders WHERE customer_id=1;
-- Question 3.
SELECT SUM(num_cupcakes) FROM orders WHERE processed = 'f';
-- Question 4.
SELECT name, SUM(num_cupcakes) AS sum FROM cupcakes c 
LEFT JOIN orders o on o.cupcake_id = c.id 
GROUP BY name 
ORDER BY name ASC;
-- Question 5.
SELECT email, SUM(num_cupcakes) AS total FROM customers cu 
LEFT JOIN orders o on cu.id = o.customer_id 
GROUP BY email 
ORDER BY SUM(num_cupcakes) DESC; 
-- Question 6.?
SELECT DISTINCT fname, lname, email FROM customers c 
LEFT JOIN orders o on c.id =  o.customer_id 
LEFT JOIN cupcakes cu on o.cupcake_id = cu.id
WHERE cu.name='funfetti'
AND processed=TRUE;
-- Part 2.

