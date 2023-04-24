require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Backend
  class Application < Rails::Application
    #config/application.rb
    config.middleware.use Rack::Cors do
      allow do
        origins '*'
        resource '/*', :headers => :any, :methods => :patch
      end
    end
    #config.load_defaults 7.0
    #config.api_only = true
  end
end
