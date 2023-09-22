-- Joins

-- Insert into addresses OTM (OTO, MTM)
-- ! Do not FORGET FOREIGN KEYS : because they don't have default values
INSERT INTO addresses (user_id,street, state, zip) VALUES (1,"fake123", "CALI", 1001);

INSERT INTO addresses (user_id,street, state, zip) VALUES (3,"fake 16152", "LA", 2005),(4,"fake1955", "NY", 4008);

-- SELECT users with addresses

SELECT * FROM users JOIN addresses ON users.id = addresses.user_id ;

-- SELECT all the users with or without addresses
SELECT * FROM users LEFT JOIN addresses ON users.id = user_id;

-- - Inner Join
-- get all the users with the tweets they made 
SELECT * FROM users JOIN tweets ON users.id = user_id;

-- - Left Join
-- get all the users with or without the tweets 
SELECT * FROM users LEFT JOIN tweets ON users.id = user_id;

-- get the number of tweets for each user

SELECT first_name,last_name,COUNT(tweets.id) 
FROM users 
LEFT JOIN tweets 
ON users.id = user_id 
GROUP BY users.id;

SELECT first_name,last_name,COUNT(tweets.id) AS tweets_number  
FROM users 
LEFT JOIN tweets 
ON users.id = user_id 
GROUP BY users.id;


--  MANY TO MANY JOIN  
--  get users and the tweets they favorite

SELECT * FROM users
JOIN faves 
ON users.id = faves.user_id;
JOIN tweets
ON faves.tweet_id = tweets.id;