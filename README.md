## Website for Tokimon Trainers
- Trainers can sign up and edit their tokimons
- If you want to edit or delete a tokimon, you have to enter its trainer's profile page 

## Sort Function:
- Click on the table header to sort the table based on that clicked header 

## Using Nested Routes:
- Can't edit and destroy Tokimons in the Tokimon index page
- Wrote a match route on the top of nested route which overwrite the /tokimons/, so there are two url routes to tokimons#index
- Other than these, all routes for tokimons are nested routes and two ids (id and trainer_id) are passed in url to call the routes
