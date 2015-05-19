require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test "category should have name" do
    cat = Category.create
    assert cat.errors.any?
  end
  test "categories cannot have same ids" do
    cat1 = Category.create(:name => 'cat1')
    assert_raise ActiveRecord::RecordNotUnique do
      cat2 = Category.create(:name => 'cat2', :id => cat1.id)
    end
  end
end
