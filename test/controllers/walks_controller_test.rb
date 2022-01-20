require 'test_helper'

class WalksControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get walks_index_url
    assert_response :success
  end
end
