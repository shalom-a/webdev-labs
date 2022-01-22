-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
select id, first_name, last_name
from users
Order by last_name;


-- Exercise 4
select id, image_url,user_id
From posts
where user_id =26;


-- Exercise 5
select id, image_url,user_id
from posts
where user_id=26 or user_id=12;


-- Exercise 6
select count(*) from posts;



-- Exercise 7
select user_id, count(*)
FROM comments
GROUP by user_id
order by count(*) desc;
-- Exercise 8
select posts.id, posts.image_url, posts.user_id, users.username, users.first_name, users.last_name
FROM posts
INNER JOIN users ON posts.user_id=users.id
Where users.id=12 or users.id=26;

-- Exercise 9
select posts.id, posts.pub_date, following.following_id
from following
Inner Join posts ON following.following_id = posts.user_id
Where following.user_id = 26;


-- Exercise 10




-- Exercise 11
Insert into bookmarks(user_id, post_id) Values(26, 219);
Insert into bookmarks(user_id, post_id) Values(26, 220);
Insert into bookmarks(user_id, post_id) Values(26, 221);



-- Exercise 12
delete from bookmarks Where user_id=26 and post_id = 219;
delete from bookmarks Where user_id=26 and post_id = 220;
delete from bookmarks Where user_id=26 and post_id = 219;



-- Exercise 13

Update users set email = 'cyoung2022@gmail.com' where id=26;


-- Exercise 14
