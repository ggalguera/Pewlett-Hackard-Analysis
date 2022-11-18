SELECT * FROM film;

SELECT COUNT(film_id) FROM film;

SELECT COUNT(film_id) AS "Total Films"
FROM film;

SELECT rating, COUNT(film_id) AS "Total films"
FROM film
GROUP BY rating;

SELECT rating, COUNT(film_id) AS "Total Films by rating"
FROM film
GROUP BY rating;

SELECT AVG(rental_duration)
FROM film;

SELECT AVG(rental_duration) AS "Average rental period"
FROM film;

SELECT rental_duration, AVG(rental_rate) AS "Average rental rate"
FROM film
GROUP BY rental_duration
ORDER BY rental_duration;

SELECT DISTINCT rental_duration
FROM film;

SELECT AVG(rental_rate) AS "Average rental Rate"
FROM film;

SELECT rating, AVG(rental_rate) AS "Average rental Rate"
FROM film
GROUP BY rating;

SELECT * FROM film;

SELECT ROUND(SUM(replacement_cost),0)
FROM film;

SELECT rating, SUM(replacement_cost) AS "Total Cost of Replacement"
FROM film
GROUP BY rating;

SELECT MAX(length)
FROM film;

SELECT MIN(length)
FROM film;

SELECT MAX(length) AS "Longest movie on the table",
MIN(length) AS "Shortest movie on the table",
AVG(lengtH) AS "Average Length off the movie on the table" 
FROM film;

SELECT * FROM film;

SELECT customer_id, inventory_id, rental_date
FROM rental
ORDER BY customer_id, rental_id DESC;

SELECT DISTINCT customer_id, rental_date
FROM rental
WHERE customer_id = 130
ORDER BY rental_date DESC;

SELECT DISTINCT ON (customer_id) customer_id, rental_date
FROM rental
ORDER BY customer_id, rental_date;

SELECT *
FROM rental AS r
JOIN customer AS c ON c.customer_id = r.customer_id
LIMIT(10)
;

SELECT DISTINCT ON (r.customer_id) r.rental_id, r.rental_date, c.first_name, c.last_name, c.email
FROM rental AS r
JOIN customer AS c ON c.customer_id = r.customer_id
ORDER BY r.customer_id, r.rental_date DESC;
;

SELECT *
FROM rental AS r
JOIN customer AS c ON c.customer_id = r.customer_id
ORDER BY r.customer_id, r.rental_date DESC;
;

SELECT DISTINCT ON (f.title) f.title, r.rental_date
FROM rental AS r
JOIN inventory AS i
ON (r.inventory_id = i.inventory_id)
JOIN film AS F
ON (f.film_id = i.film_id)
ORDER BY f.title, r.rental_date DESC;