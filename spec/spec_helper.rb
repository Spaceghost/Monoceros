require 'fabrication'

# Load support files
 Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

Fabrication.configure do |config|
  fabricator_dir = "spec/fabricators"
end

RSpec.configure do |config|
  # Expectation matchers
  require 'rspec/expectations'
  config.include RSpec::Matchers

  # Mocks
  config.mock_with :rspec


end
