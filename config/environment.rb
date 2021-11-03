# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# Allow puma-dev to run in development mode
config.hosts << "scoreboard.test"