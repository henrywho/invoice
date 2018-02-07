require 'test_helper'

class LineItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get line_items_index_url
    assert_response :success
  end

end
