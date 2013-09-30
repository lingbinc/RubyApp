require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  test "should get new_class" do
    get :new_class
    assert_response :success
  end

  test "should get index_class" do
    get :index_class
    assert_response :success
  end

end
