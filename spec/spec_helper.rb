require 'rubygems'
require 'spork'

Spork.prefork do
  # Loading more in this block will cause your tests to run faster. However,
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.

  # Load support files
   Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

  RSpec.configure do |config|
    # Expectation matchers
    require 'rspec/expectations'
    config.include RSpec::Matchers

    # Mocks
    config.mock_with :rspec
  end

  require 'fabrication'
  Fabrication.configure do |config|
    fabricator_dir = "spec/fabricators"
  end

end

Spork.each_run do
  # This code will be run each time you run your specs.

end

# --- Instructions ---
# - Sort through your spec_helper file. Place as much environment loading
#   code that you don't normally modify during development in the
#   Spork.prefork block.
# - Place the rest under Spork.each_run block
# - Any code that is left outside of the blocks will be ran during preforking
#   and during each_run!
# - These instructions should self-destruct in 10 seconds.  If they don't,
#   feel free to delete them.
#

