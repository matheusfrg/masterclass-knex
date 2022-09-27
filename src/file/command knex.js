npm init -y

npm i nodemon -D
 
npx knex init
 
 --criar uma migrate
 npx knex migrate:make create_table_users
 
 --executar as últimas migrates
 npx knex migrate:latest
 
npx knex seed:make 001_users
  
npx knex seed:run
  
-- executar um seed específico 
npx knex seed:run --specific 002_projects.js