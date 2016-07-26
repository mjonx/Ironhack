SELECT* FROM users
WHERE name='Charlie';

SELECT* FROM tasks
WHERE user_id=3;

INSERT INTO tasks(name, user_id)
VALUES ('Race a cheetah', 3);

UPDATE tasks
SET name = 'Race a giraffe'
WHERE name = 'Race a cheetah';

DELETE FROM tasks
WHERE user_id = 1;

SELECT location FROM users
WHERE id = 3;

SELECT * FROM tasks
WHERE user_id = (SELECT id FROM users WHERE name = 'Bob');

#Use IN instead of = so you target multiple ID's instead of just one
DELETE FROM tasks WHERE user_id IN (SELECT id FROM users WHERE location = 'Spain')

SELECT * FROM tasks INNER JOIN users ON tasks.user_id = user.id #returns a new (combined) table
WHERE users.name = 'Bob'

SELECT * FROM tasks WHERE user_id = (SELECT id FROM users WHERE name = 'Bob')

SELECT* FROM tasks WHERE name LIKE '%chee%'
SELECT* FROM tasks WHERE user_id=3 ORDER BY id DESC
SELECT* FROM tasks WHERE user_id=3 ORDER BY id DESC LIMIT 1

SELECT COUNT(*) FROM tasks
SELECT COUNT(*) FROM tasks WHERE user_id = 3;
SELECT COUNT(*) FROM tasks WHERE user_id = (SELECT id FROM users WHERE name = 'Charlie')

#Get number of tasks per user
SELECT users.name, COUNT(*) AS total_tasks
FROM tasks
INNER JOIN users ON users.id = tasks.user_id
GROUP BY tasks.user_id
#Sort alphabetically
ORDER BY users.name DESC




#Get user with most tasks
SELECT user_name MAX(total_tasks) FROM (SELECT users.name AS user_name, COUNT(*) AS total_tasks
FROM tasks
INNER JOIN users ON users.id = tasks.user_id
GROUP BY tasks.user_id)
