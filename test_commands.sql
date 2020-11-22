-- basic commands
select * from users;
select * from tweets;
insert into tweets (tweet, user_id, created_at, updated_at) 
values ('helllooo', 1, NOW(), NOW());
UPDATE users SET first_name = 'Kobe' where id = 1;
update tweets set created_at = NOW() where id = 1;
delete from tweets where id = 14;

-- functions
SELECT CONCAT('Mr.', ' ', first_name, ' ', last_name) AS full_name from users;
select concat_ws(' ', first_name, last_name, 'official') AS full_name from users;
select length(last_name) AS last_lengt FROM users;
select lower(last_name) AS last_lower from users;
select hour(created_at) AS date_hour, created_at from tweets;
select dayname(created_at) AS date_day, created_at from tweets;
select month(created_at) AS date_month, created_at from tweets;
select now() as right_now;
select date_format(created_at, '%W %M %e, %Y') from tweets;

