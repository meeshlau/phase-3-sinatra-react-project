# HataBook
This is the backend application for HataBook: A place where the IT department of Y. Hata to meet and collaborate on the current ERP project for Dynamics 365.

Each employee will be able to go to their respective departments they are working with and provide status updates regarding the project on the project feed.

All employees will be listed for reference, and show each employee's full name, email, department, and position at the company.

Each employee will be able to update their profile if their position or department has changed.

Each post will be able to be liked by others.

### Requirements
* ruby 2.6.1
* sqlite3 3.28


### How to use
Fork and clone
bundle install
run rake db:migrate db:seed
run rake server
if you haven't already, follow directions from frontend url
