require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "#home exists" do
    get :home

    assert_equal 200, response.status
  end

  test "logo links to home page" do
    visit "/deck-creator"

    click_on "Top"

    assert_equal root_path, current_path

    visit "/deck-creator"

    click_on "Decked"

    assert_equal root_path, current_path
  end

  test "Log in with twitter" do
    skip
  	visit root_path

  	within "#navbar" do
  		click_on "Login!"
  	end

  	assert_equal root_path, current_path
  	assert page.has_content? "UnsafePond"
  end

  test "#create a deck button" do
    visit root_path

    click_on "Create A Deck!"

    assert_equal "/deck-creator", current_path
  end
end
