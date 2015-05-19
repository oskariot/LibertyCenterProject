require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "emptiness" do
    Book.delete_all
    assert_equal Book.count, 0
  end
  test "undefined method" do
    assert_raise NoMethodError do
      Book.first.undefined
    end
  end
end
