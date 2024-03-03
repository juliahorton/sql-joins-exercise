-- 1. Join the two tables so that every column and record appears, regardless of if there is not an owner_id.
SELECT * FROM owners o FULL JOIN vehicles v ON o.id=v.owner_id;


-- 2. Count the number of cars for each owner. Display the owners first_name , last_name and count of vehicles. The first_name should be ordered in ascending order.
SELECT first_name, last_name, COUNT(v.id) AS count FROM owners o JOIN vehicles v ON o.id=v.owner_id GROUP BY o.id ORDER BY first_name;


-- 3. Count the number of cars for each owner and display the average price for each of the cars as integers. Display the owners first_name , last_name, average price and count of vehicles. The first_name should be ordered in descending order. Only display results with more than one vehicle and an average price greater than 10000.
SELECT first_name, last_name, CAST(AVG(price) AS int) AS average_price, COUNT(v.id) AS count FROM owners o JOIN vehicles v ON o.id=v.owner_id GROUP BY o.id HAVING CAST(AVG(price) AS int) > 10000 AND COUNT(v.id)> 1 ORDER BY first_name DESC;