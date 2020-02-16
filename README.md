## My first Ruby on Rails project
This is the first project that I have done in Ruby on Rails and the main focus was to understand the architecture of Rails and how the different parts work together. 

The project it self is to build a website where the user can create, read, edit and also delete articles. The user does not have to log in to use the website. 

#### User stories
As a user
In order to see all articles
I would like to see a list of all articles on the index page

As a user
In order to add an article of my own
I would like to be able to create a new article

As a user
In order to read the content of an article
I would like to be able to show the article

As a user
In order to updatean existing article
I would like to be able to edit articles

As a user
In order to remove an article
I would like to be able to delete articles

### Dependencies 
This application is created in Ruby on Rails using Ruby for backend language and html.erb for the frontend. 
I have also used Rspec with Capybara to test the application. 

* Ruby version 2.6.3
* Rails version 6.0.2.1

### Setup
To run this application you should do following steps:
To get the application on your local devise:
``` $ git clone https://github.com/emtalen/rails_demo ```

To unstall the gems that are used:
``` $ bundle ```

Create the database localy:
``` $ rails db:create db:migrate ```

### Instructions
To use the application
Start the rails server localy
``` $ rails s ```

Then you can visit the application in your browser by typing in "localhost:3000" and try out the functionalities. 

### Updates and improvement plans
What needs to be in improved is the frontend to make it prettier and more user friendly. What I would like to update is that the user needs to login and by that every article written or updated by the user would be signed with the username. With that kind of feature I would also like to add that a user only can delete articles which is created by the user and that it's not possible to delete other users articles, only edit them. 

### License:
##### MIT-Licence