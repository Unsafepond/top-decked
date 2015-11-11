require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "#home exists" do
    get :home

    assert_equal 200, response.status
  end

  test "Log in with twitter" do
  	visit root_path

  	within "#navbar" do
  		click_on "Login!"
  	end

  	assert_equal current_path, root_path
  	assert page.has_content? "Unsafepond"
  end
end
