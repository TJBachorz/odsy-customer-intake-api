# Outdoor.sy API

>Customer data storage, sorting, and file parsing

## Table of Contents
* [About](#about)
* [Getting Started](#getting-started)
* [To-dos](#to-dos)
* [Technologies](#technologies)
* [Contact](#contact)

## About

Outdoor.sy is a fictional company with a problem.  They have lists of customers on .txt files that they need saved to a database.  This API is designed to solve that problem by receiving POST requests consisting of raw .txt files.  The files are filtered through a custom built `CustomerDataFileParser` class, shown below:

[<img src="https://i.imgur.com/MIqudHo.png" height="450" width="600"/>](https://i.imgur.com/MIqudHo.png)

The parser sanitizes the data and returns a "clean" list of customers which are then stored in the data base, and returned in the response to the user.  

Additionally, the API features an index method that accepts a variety of query params for sorting customers:

`GET` to `/customers` -- All customers

`GET` to `/customers?full_name=&asc=` -- All Customers sorted by name (ascending or descending)

`GET` to `/customers?vehicle_type=&asc=` -- All Customers sorted by vehicle type (ascending or descending)

Validations have also been implemented in order to verify the presence of all fields and the uniqueness of email addresses so duplicate customer fields aren't entered into the database.  Vehicle length has also been restricted to numerics only.

[<img src="https://i.imgur.com/CFF03CC.png"/>](https://i.imgur.com/CFF03CC.png)

## Getting Started

Clone down this repo into a directory of your choice and begin by running:

#### `bundle install`

Depending on what version or Ruby you have installed, you might get a variety of errors on bundle install.  Pay attention to what commands the errors suggest you run to try to solve the issue.  In some cases you may need to change the version of Ruby in the `Gemfile` to one suggested by the terminal.

Once you've successfully ran the command, you can now run...

#### `rails db:migrate RAILS_ENV=development`

This will set up your local SQLite3 database with the tables necessary to run the API.  Upon successful migration we can now start the server by running...

#### `rails s`

Note: It is important to run the API on the default `Port: 3000` otherwise it will take more effort to change the environment variable in the webapp to allow requests to come through.

If the server is running, then you're all set!  Next, let's spin up the [webapp!](https://github.com/TJBachorz/odsy-customer-intake-webapp)

## To-Dos

TESTING!  Currently the API only includes smoke tests for the validations on the core Customer model.  Going forward I'd like to implement more Rspec tests that put the API calls through the gauntlet to ensure that calls are behaving correctly in all circumstances.

If you're curious and would like to run these tests yourself, navigate to the root directory of this project and run...

`rspec ./spec/models/customer_spec.rb`

## Technologies

* Ruby
* Ruby on Rails
* SQLite3
* Rspec

## Contact

[<img src="https://cdn2.iconfinder.com/data/icons/social-icons-33/128/Github-512.png" width="40" height="40"/>](https://github.com/TJBachorz) &nbsp; [<img src="https://cdn2.iconfinder.com/data/icons/social-media-applications/64/social_media_applications_14-linkedin-512.png" width="40" height="40"/>](https://www.linkedin.com/in/tjbachorz/) &nbsp; [<img src="https://cdn3.iconfinder.com/data/icons/popular-services-brands-vol-2/512/medium-512.png" width="40" height="40"/>](https://tjbachorz.medium.com/)
