require 'test_helper'

class ContactFormMailerControllerTest < ActionController::TestCase
  test "should get send_form" do
    get :send_form
    assert_response :success
  end

end
