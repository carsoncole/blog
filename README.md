# Blog

Simple Ruby on Rails blog application, designed for a single blogger.

## Installation


### Authentication

A simple, single login, using basic authentication. Credentials are stored using Rails encrypted credentials in `config/credentials.yml.enc`
. Here is an example file:

```ruby
  http_auth:
    name: John Doe
    password: password123
```

### Seeding data

To see sample data, you can seed the database with blog posts:

```ruby
rails db:seed
```

### Administration

For blog post CRUD actions, enter the URL manually.
