require 'test_helper'

class LinksControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:links)
  end
  test "index should render correct template and layout" do
    get :index
    assert_template :index
    assert_template layout: "layouts/application"
  end
end
