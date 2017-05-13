require_relative 'boot'

require 'rails/all'
require 'football__data'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Project
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    FootballData.configure do |config|
			# get api key at 'http://api.football-data.org/register'
			config.api_key = 'f936e1132c5348ccbd9a65c2cef8d3ea'

			# default api version is 'alpha' if not setted
			config.api_version = 'alpha'

			# the default control method is 'full' if not setted
			# see request section on 'http://api.football-data.org/documentation'
			config.response_control = 'minified'
		end
		config.cache_store = :file_store, "~/cache/"
  end

end
