require 'test_helper'

class DecksControllerTest < ActionController::TestCase
  test "#new" do
  	visit "/deck-creator"

  	assert 200, response.status
  	assert page.has_content?("Decked")
  end
end
