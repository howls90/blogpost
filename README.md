# MyblogPost

The MyblogPost aim is to provide a web app to manage a blog (Posts, Comments, Users, Categories,etc). It was build using the framework Ruby on Rails release 5.0.6 with Bootstrap v4. 

## Features

* Handle Posts and comments

* Email senders

* User administration (Views, Author and Admin)

* Internationalization (I18n)

* Images Upload

* Job queues

* Views caching

* Markdown editor

* Bootstrap views

* Posts Filtering

## Get started

Go to root folder and type the following commmands:

```
redis-server
bundle exec sidekiq
rails db:migrate db:seed
rails s
```
