require 'rubygems'
require 'bundler'
Bundler.setup
require 'spec'
require 'spec/autorun'
require 'webmock/rspec'
require 'rack/test'
require 'omniauth/core'
require 'omniauth/test'
require 'omniauth/openid'

Spec::Runner.configure do |config|
  config.include WebMock
  config.include Rack::Test::Methods
  config.extend  OmniAuth::Test::StrategyMacros, :type => :strategy
end
