# README

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ gem install bundler -v 2.3.14
$ bundle _2.3.14_ config set --local without 'production'
$ bundle _2.3.14_ install
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```
* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suites
    bundle exec guard
    or
    rake test
    or
    bundle exec regtest

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

*Code to comment out embedded Ruby.
    <%#= image_tag("kitten.jpg", alt: "Kitten") %>
