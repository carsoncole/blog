# Blog

Simple Ruby on Rails blog application, designed for a single blogger.

## Installation

### Default values

Update the following in `application.rb` to the appropriate values:

```
    config.application_title = 'Title'
    config.application_description = 'Site description, usually less than 50 words'
    config.default_author = 'Default posts author'
```


### Authentication

Admin access is granted to any Users, which should be added through the console. To Login, go to

```
/sign_in
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
