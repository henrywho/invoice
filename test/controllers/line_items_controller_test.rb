require 'test_helper'

class LineItemsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get index" do
    sign_in users(:henry)

    get line_items_url
    assert_response :success
  end

end
