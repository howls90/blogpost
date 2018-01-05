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

* RestFull API with JWT

* Omniauth

## Get started

Execute the command ```bundle exec figaro install``` in the root folder and introduce the credentials for facebook. Example:

```
FACEBOOK_KEY : "<key>"
FACEBOOK_SECRET: "<secret>"

```

Then execute the following commmands:

```
redis-server
bundle exec sidekiq
rails db:migrate db:seed
rails s
```

## License
This software is licensed under the MIT License.
