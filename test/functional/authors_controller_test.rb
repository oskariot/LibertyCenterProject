require 'test_helper'

class AuthorsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Author.first
    assert_template 'show'
  end
  test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:authors)
  end
  test "index should render correct template and layout" do
    get :index
    assert_template :index
    assert_template layout: "layouts/application"
  end
end
