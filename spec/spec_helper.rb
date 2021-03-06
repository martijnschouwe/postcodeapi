require 'rspec'
require 'vcr'
require 'webmock'

require 'postcodeapi'

RSpec.configure do |config|
  config.color_enabled = true
  config.formatter     = 'documentation'
end

VCR.configure do |config|
  config.cassette_library_dir = 'spec/vcr'
  config.hook_into :webmock
end