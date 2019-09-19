-- SEE HOW MANY YOU CAN GET THROUGH BY 10am :) 

-- What's the title and ID of the longest film?
-- BONUS points if you use a subquery :) 

-- What is the title and ID of the film with the lowest replacement cost?
-- BONUS points if you use a subquery :) 

-- What is the tile and ID of the film with the highest rental_rate?

-- Show the payment_id's of all transactions after or on May 1st 2007

-- Show all payment ID's and payment date's with a transaction amount less than $3.

-- Get the emails of all customers that shop at store 1 that are inactive (use 'active')

--How much have these customers spent? (Use code from the previous query to
-- make a subquery or a CTE to solve this one.) 




--Question 1
SELECT title, film_id, length
FROM film
WHERE length = (SELECT MAX(length) FROM film);



-- Question 2
SELECT title, film_id, replacement_cost
FROM film
WHERE replacement_cost = (SELECT MIN(replacement_cost) FROM film);

--Question 3
SELECT title, film_id
FROM film
WHERE replacement_cost = (SELECT MAX(rental_rate) FROM film);

--Question 4
SELECT payment_id, amount, payment_date
FROM payment
WHERE payment_date >= '2007-05-01';