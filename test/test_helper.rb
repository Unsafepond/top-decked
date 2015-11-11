ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/reporters'
require 'simplecov'
require 'capybara/rails'

class ActiveSupport::TestCase
	include Capybara::DSL
	SimpleCov.start('rails')
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new, Minitest::Reporters::ProgressReporter.new]

  # Add more helper methods to be used by all tests here...
end
