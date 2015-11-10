require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "#home exists" do
    get :home

    assert_equal 200, response.status
  end
end
