# README

## A Website for Tokimon Trainer

- Trainer can sign up and edit their tokimons
- If you want to edit or delete a tokimon, you have to enter its trainer's profile page 


## Sort Function:
- Click on the table header can sort the table base on that attribute

## Using Nested Routes:
- Can't edit and destroy Tokimons in the Tokimon index page
- Write a match route on the top of nested route which overwrite the /tokimons/, so there are two url routes to tokimons#index
- Other than this all routes for tokimons is nested routes and I am pass two id(id and trainer_id) in url to call the routes
