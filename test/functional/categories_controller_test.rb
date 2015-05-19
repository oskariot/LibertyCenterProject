require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Category.first
    assert_template 'show'
  end
  test "index should render correct template and layout" do
    get :index
    assert_template :index
    assert_template layout: "layouts/application"
  end
end
