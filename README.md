# Ruby on Rails Project by Tj Hawkins


## Getting started

Update gem file with gems needed:
gem 'bcrypt',       '3.1.11'
gem 'football__data'
gem 'bootstrap-sass', '3.3.6'
gem 'rspec', '~> 3.0'

Change development/test:
gem 'sqlite3', '1.3.12' => 'pg', '0.18.4'

```
$ bundle install --without production

Change line 7 of development.rb
config.cache_classes = false => config.cache_classes = true
```

Create static home page:

```
$ rails generate controller HomePage home
$ rails generate controller users
$ rails generate model User name:string email:string
```

Next, migrate the database:

```
$ rails db:migrate
```

Set up basic tests:
Have basic tests for user validations set up.
Name, email, password present, with character limits.
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
Add has_secure_password to model


Migrate the database again:

```
$ rails db:migrate
```

Run tests:
```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

