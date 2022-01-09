-- Comments in SQL Start with dash-dash --

-- Displays the record with the ID of 1880
SELECT * FROM analytics WHERE id = 1880;

-- Displays the ID and name of all records that were last updated 2018-08-01
SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';

-- Displays the category of the apps and the number of apps within the different categories
SELECT category, COUNT(id) AS app_count FROM analytics GROUP BY category;

-- Displays the top 5 apps with the highest reviews
SELECT * FROM analytics ORDER BY reviews desc LIMIT 5;

-- Displays the highest reviwed app that has a rating of 4.8
SELECT * FROM analytics WHERE rating >= 4.8 ORDER BY reviews desc LIMIT 1;

-- Dispalys the categories of the apps and the average rating ordering them by the highest average
SELECT category, AVG(rating) AS Avg_Rating FROM analytics GROUP BY category ORDER BY Avg_Rating desc;

-- Displays the highest priced app that has a rating less than 3
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price desc LIMIT 1;

-- Displays all records that have minunum installs that are less than or equal than 50 and a has a rating ordered by highest to lowest
SELECT * FROM analytics WHERE min_installs <= 50 AND rating > 0 ORDER BY rating desc;

-- Display the app name of the apps that have a rating less than 3 and a more than 10,000 reviews
SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000;

-- Display top ten apps that have a price between 0.10 and 1 ordered by reviews
SELECT * FROM analytics WHERE price >= 0.10 AND price <= 1 ORDER BY reviews desc LIMIT 10;

-- Display the app that has not been updated the longest
SELECT * FROM analytics ORDER BY last_updated LIMIT 1;

-- displays the highest priced app
SELECT * FROM analytics ORDER BY price desc LIMIT 1;

-- Displays the sum of all app reviews
SELECT SUM(reviews) AS total_reviews FROM analytics;

-- Displays categories that have more than 300 apps in them
SELECT category, COUNT(id) AS counted_apps FROM analytics GROUP BY category HAVING COUNT(id) > 300;

-- Displays the app that has the more than 100,000 reviews and has the highest proportion of min_installs to reveiws
SELECT app_name, min_installs, reviews, (min_installs/reviews) AS min_rev FROM analytics WHERE min_installs >= 100000 ORDER BY min_rev desc LIMIT 1;