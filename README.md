# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

rails new jul
rails generate model Category name:string description:text
rails generate controller Categories index --skip-routes
rails generate model Product name:string description:text category:references
rails generate controller Products


rails db:migrate
rails db:seed