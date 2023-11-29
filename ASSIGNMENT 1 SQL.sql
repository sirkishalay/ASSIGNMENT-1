--                                      ASSIGNMENT 1


-- Question 1 -- Identify the primary keys and foreign keys in maven movies db. Discuss the differences --
-- Ans -- 
use mavenmovies;
select * from film;

alter table actor add foreign key ( actor_id) references film(film_id);
select * from film, actor;

-- In Film table of Mavenmovies database has film_id as primary key and
-- title as foreign key. The differences between primary key and foreign key is 
--  Primary key - 1. primary key uniquely identify a record in a table
--                2. primary key cannot accept null values.
--                3. By default primary key is clustered index and data in the database table is physically organized in the sequence of clustered index
--                4. We can have only one primary key in a table 
--                5. Primary key is always unique
-- Foreign key - 1. Foreign key is a field in the table that is primary key in another table
--               2. Foreign key do not automatically create an index. Clustered or non-culustered. You can manually create an index on foreign key
--               3. Foreign key can accept multiple null value
--               4. We can have more than one foreign key in a table
--               5. Foreign key can be duplicated. 

-- Question 2. List all details of actors.
-- Ans - 
select * from actor;
-- The actor table of mavenmovies database has coulumn like actor_id, first_name, last_name, last_update

-- Question 3. List all customer information from DB.
-- Ans -
select * from customer;

-- Question 4. List different countries.
-- Ans -
select * from country;
select country from country;
select distinct country from country;

-- Question 5. Display all active customers.
-- Ans - 
select * from customer;
select * from customer where active;

-- Question 6. List of all rental IDs for customer with ID 1.
-- Ans -
select * from rental;
select customer_id , rental_id from rental where customer_id = 1;

-- Question 7. Display all the films whose rental duration is greater than 5.
-- Ans - 
select film_id, title, rental_duration from film where rental_duration > 5;

-- Question 8 - List the total number of films whose replacement cost is greater than $15 and less than $20. 
-- Ams -
select count(*) as total_no_films from film where replacement_cost >15 and replacement_cost < 20;

-- Question 9. Display the count of unique first names of actors.
select count(distinct first_name) as first_name_count from actor;

-- Question 10. Display the first 10 records from the customer table.
-- Ans -
select * from customer;
select * from customer where customer_id between 1 and 10;
select * from customer limit 10;

-- Question 11. Display the first 3 records from customer table whose first name starts with 'b'.
-- Ans- 
select first_name from customer where first_name like 'b%' limit 3;

-- Question 12. Display the names of the first 5 movies which are rated as 'G'.
select * from film;
select film_id, title as movies_name, rating from film where rating = 'G' LIMIT 5;

-- Question 13. Find all customers whose first name starts with 'a'.
-- Ans -
select first_name from customer where first_name like 'a%';

-- Question 14. Find all customers whose name ends with 'a'.
select first_name from customer where first_name like '%a';

-- Question 15. Display the list of first 4 cities which start and end with 'a'.
-- Ans -
select city from city where city like 'a%a' limit 4;

-- Question 16. Find all customers whose first name have 'NI' in any position.
-- Ans -
select first_name from customer where first_name like '%NI%';

-- Question 17. Find all customers whose first name have 'r' in the second position.
-- Ans - 
select first_name from customer where first_name like '_r%';

-- Question 18. Find all customers whose first name starts with "a" and are at least 5 characters in length.
-- Ans -
select first_name from customer where first_name like 'a%' and length( first_name) >= 5;

-- Question 19. Find all customers whose first name starts with "a" and ends with "o".
-- Ans -
select first_name from customer where first_name like 'a%o';

-- Question 20. Get the films with pg and pg-13 rating using IN operator.
-- Ans- 
select * from film;
select title, rating from film where rating in ("PG","PG_13");

-- Question 21. Get the films with length between 50 to 100 using between operator.
-- Ans -
select length, title from film where length between 50 and 100;

-- Question 22. Get the top 50 actors using limit operator.
-- Ans -
select * from actor order by actor_id desc limit 50;

-- Question 23. Get the distinct film ids from inventory table.
-- Ans - 
select distinct film_id from film;