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

### Post attachments

Using Active Storage, post images can be uploaded to a data store. The code uses Digital Ocean's Spaces, but this can be modified.

`config/storage.yml`

```ruby
digital_ocean:
  service: S3
  endpoint: https://sfo3.digitaloceanspaces.com
  access_key_id: <%= Rails.application.credentials.dig(:digital_ocean, :access_key) %>
  secret_access_key: <%= Rails.application.credentials.dig(:digital_ocean, :secret) %>
  bucket: nuku-blog-<%= ['test', 'development'].include?(Rails.env) ? 'development' : 'production'  %>
  region: unused
```

The credentials for the data store are security stored in `credentials.yml.enc`:

```ruby
digital_ocean:
  access_key: key
  secret: secret
```
