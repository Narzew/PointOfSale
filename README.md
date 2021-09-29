# Barcode scanner


## Run instructions:
1) install Ruby 3.0.2 and bundler on your local machine.
2) clone the project
3) open the config/database.yml and enter your database data. I used postgresql for example
4) go into the app folder and type following commands in the terminal. Make sure every command succeed before continuing.
5)     rake db:drop db:create db:migrate db:seed
6)     bundle install
7)     rails webpacker:install
8)     rails s

Now you should have two endpoints ready.

## Endpoints
    GET localhost:3000/scanner --> Main scanner app
    GET localhost:3000/products --> Product list manager

## AJAX endpoints:
    POST localhost:3000/search --> Used by AJAX queries to search for given barcode and return product details

## How the application works

You have to enter the valid barcode in the numerical format in the text field.
If the product exist, the product will be scanned and added to the list. When you finish scanning your products, click "Exit" button to show final details.

You can get the product codes by using the localhost:3000/products endpoint.
