use twitter;
select * from users;
insert into users (first_name, last_name, handle, birthday, created_at, updated_at)
values ('Lebron', 'James', 'LBJ', '1985-01-01', NOW(), NOW());
update users set handle = 'theRealLBJ' where id = 6;
delete from users where id = 6;
