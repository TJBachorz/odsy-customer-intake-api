# Outdoor.sy API

>Customer data storage, sorting, and parsing

## Table of Contents
* [Getting Started](#getting-started)
* [About](#about)
* [Technologies](#technologies)
* [Contact](#contact)

## Getting Started

Clone down this repo into a directory of your choice and begin by running:

#### `bundle install`

followed by...

#### `rails s`

Note: It is important to run the API on the default `Port: 3000` otherwise it will take more effort to change the environment variable in the webapp to allow requests to come through.

If the server is running, then you're all set!  Next, let's spin up the [webapp!](https://github.com/TJBachorz/odsy-customer-intake-webapp)

## About

Outdoor.sy is a fictional company with a problem.  They have lists of customers on .txt files that they need saved to a database.  This API is designed to solve that problem by receiving POST requests consisting of raw .txt files.  The files are filtered through a custom built `CustomerDataFileParser` class, shown below:

[<img src="https://i.imgur.com/MIqudHo.png" height="450" width="600"/>](https://i.imgur.com/MIqudHo.png)

The parser sanitizes the data and returns a "clean" list of customers which are then modelled, stored in the data base, and returned in the response to the user.  

Additionally, the API features an index method that accepts a variety of query params for sorting customers:

`GET` to `/customers` -- All customers

`GET` to `/customers?full_name=&asc=` -- All Customers sorted by name (ascending or descending)

`GET` to `/customers?vehicle_type=&asc=` -- All Customers sorted by vehicle type (ascending or descending)


## Technologies

* Ruby
* Ruby on Rails
* SQLite3

## Contact

[<img src="https://cdn2.iconfinder.com/data/icons/social-icons-33/128/Github-512.png" width="40" height="40"/>](https://github.com/TJBachorz) &nbsp; [<img src="https://cdn2.iconfinder.com/data/icons/social-media-applications/64/social_media_applications_14-linkedin-512.png" width="40" height="40"/>](https://www.linkedin.com/in/tjbachorz/) &nbsp; [<img src="https://cdn3.iconfinder.com/data/icons/popular-services-brands-vol-2/512/medium-512.png" width="40" height="40"/>](https://tjbachorz.medium.com/)
