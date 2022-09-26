-- create database
CREATE DATABASE knex_test;

-- create table
CREATE TABLE users (
	id serial unique,
	name text not null
);

-- select all users
SELECT * FROM users;

-- add user
INSERT INTO users (name) values ('Mayk');

-- update user
UPDATE users SET name = 'Maykão' WHERE id = '1';

-- delele user
DELETE FROM users WHERE id = '1';

-- create table
CREATE TABLE projects (
	id serial unique,
	user_id integer references users(id),
	title text not null
);

-- select all projects
SELECT * FROM projects

-- add project to user
INSERT INTO projects (user_id, title) values ('1', 'Meu Projeto');
INSERT INTO projects (user_id, title) values ('2', 'Outro Projeto');

-- delete projects

-- relation user with project
SELECT projects.*, users.name
FROM projects
JOIN users ON projects.user_id = users.id;

-- drop
DROP TABLE users;
DROP TABLE projects;
DROP DATABASE knex_test;