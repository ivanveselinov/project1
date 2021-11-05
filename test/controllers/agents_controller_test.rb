require 'test_helper'

class AgentsControllerTest < ActionDispatch::IntegrationTest
  test "should get {new,edit,show,index" do
    get agents_{new,edit,show,index_url
    assert_response :success
  end

  test "should get }.html.erb" do
    get agents_}.html.erb_url
    assert_response :success
  end

end
