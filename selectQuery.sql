use serviceproviderconnect;

-- one SELECT query will just use the SELECT-FROM-WHERE structure.
SELECT name, rating 
FROM provider
WHERE status = TRUE;

-- One SELECT query will use the aggregate functions with GROUP BY (HAVING is optional)
SELECT service_id, AVG(rating) AS average_rating
FROM provider
GROUP BY service_id
HAVING AVG(rating) > 4.0;

-- One SELECT query will use nested subqueries
SELECT name, bio
FROM provider
WHERE provider_id = (SELECT provider_id FROM booking WHERE booking_id = 1);

-- Two SELECT queries will use joins (natural/left/right/inner)
-- 1.
SELECT u.name AS user_name, p.name AS provider_name, b.status_id
FROM user u
INNER JOIN booking b ON u.user_id = b.user_id
INNER JOIN provider p ON b.provider_id = p.provider_id;


-- 2.
SELECT u.name AS user_name, b.booking_id, r.text_review
FROM user u
LEFT JOIN booking b ON u.user_id = b.user_id
LEFT JOIN review r ON b.booking_id = r.booking_id;
