# Ruby on Rails Project by Tj Hawkins


## Getting started

Update gem file with gems needed:
gem 'bcrypt',       '3.1.11'
gem 'football__data'
gem 'bootstrap-sass', '3.3.6'
gem 'rspec', '~> 3.0'

Remove from development:
gem 'sqlite3', '1.3.12'

Remove from test:
gem 'pg', '0.18.4'

Create new group with development, test, production:
gem 'pg', '0.18.4'

```
$ bundle install --without production

Enable file caching:
Enable caching for your environment. I chose to use file caching at tmp/cache. The default rails caching was used for this app. Will try and figure out a way to automate cleaning of said folder, so it doesn't get large.
```

Sample of how most of my project was generated:

```
$ rails generate scaffold bets
$ rails generate scaffold user_bets
$ rails generate scaffold discussions
$ rails generate controller users
$ rails generate controller HomePage home
$ rails generate controller api_requests
$ rails generate controller leagues
$ rails generate controller scores
$ rails generate controller sessions
$ rails generate model User name:string email:string
$ rails generate mailer user_mailer
```

Example user model validations:
validates :name, presence: true, length: { maximum: 40 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 200 },
										format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }


	has_secure_password
	validates :password, presence: true, length: { minimum: 5 }

Set up database tables:
For my project I have a users, discussions, bets, and user_bets tables.
-----
Users is our user data. Name, email, password, admin user, authenticated, and token count. Users can not go negative with tokens and every week, if they are below 100 tokens, that will be replenished to 100. Haven't determined the day I would do so. Thinking Monday or Tuesday.
--
Discussion will be trash talking about past, current, or future games.
--
Bets table will be manually updated with appropriate games for the moment. That table hold the match name, match id, and the betting odds for the outcome of the game.
--
The users bets will grab the match name and betting odds when selected. User then selects their bet option and add how much they want to bet.

API Request format:
API create provides gem for use. Here is sample request with the gem.
-----
La Liga(Spanish league - ID=436)
FootballData.fetch(:soccerseasons, :leagueTable, id: id)
Gets the league table based on what ID is passed in.
-----
Request returns parsed json, so all you need to do is decide how you want to output the data. Go to http://api.football-data.org/index for the API documentation and gem examples.Json structure and request documentation will provide all you need for structuring your requests.

All API request methods were done in the api requests helper and included in the application so any controller has access to use. Goal on each controller staying skinny and only calling the methods they need in a helper and passing the correct data.

Run tests:
```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

