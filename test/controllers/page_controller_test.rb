require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get Acceuil" do
    get :Acceuil
    assert_response :success
  end

end
