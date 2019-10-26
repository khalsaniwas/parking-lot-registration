
# parking-lot-registration (backend)

### Repository link: https://github.com/khalsaniwas/parking-lot-registration

Parking lot registration is a back end application programming interface. Single user can register multiple vehicles under their name at frontend. All requests sent by user must go through authentication which is achieved by sending ajax requests coming from frontend application. User send a request to server which is database connected thorugh back end application. Api responds back to those requests and provides the data that user is looking to see in web browser, Vehicles information in case of this application. Requests require a token for authentication, which is a unique identifier.



## parking-lot-registration - client(frontend client)

### ### Repository link: https://github.com/khalsaniwas/parking-lot-registration-client


## Link to deployed sites

### Production site link: https://parking-lot-registration.herokuapp.com/

### Development site link: http://localhost:4741/


## Technologies used

Github
Atom
Ruby
Ruby on rails
visual studio code
Terminal
web browser
dev tool
PostgreSQL
psql
heroku
curl scripts

## Entity relationship diagram

![wireframe diagram](./img/erd.jpg)

## Planning

I started with creating an ERD diagram which shows one to many relationship between the two resources I am about to use. My first resource is USER and second resource is VEHICLE.
Relationship: User has_many VEHICLE, VEHICLE belongs_to USER. Next I planned to implement this relation ship and think about what columens I am going to create for each resource.
User: User_id, email.
Vehicle: Vehicle_id, make, model, registration_plate_number. 

## Development story

I created the resource VEHICLE with scaffold command and added relationship of vehicle with user. Then I checked if the files created are missing any important code including schema file. Next I ran db:migrate. In vehiclesController file I changed application controller to Protected controller in order to create inheritance. To send and get information it requires authentication and a token to make sure user data is protected.
I started with authentication part and created curl scripts for CRUD operations. Then I integrated back end to front end and deployed the application to github and heroku. I used ruby on rails framework to build an api. I started each functionality beginning from sign up, sign in, change password and sign out. Then wrote the code to create, get a list, delete and edit vehicle. New users can sign up and then sign in with their own user name and password, User's can only get a list of vehicles registered under their own accounts, They cannot view vehicles registered by other user.

## Unsolved problems

I want to add a super user, which can display list of vehicles registered by all users.



## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
