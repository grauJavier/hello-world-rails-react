require 'test_helper'

class ApiControllerTest < ActionDispatch::IntegrationTest
  test 'should get greetings' do
    get api_greetings_url
    assert_response :success
  end
end
