require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "author should have name" do
    au = Author.new
    au.save
    assert au.errors.any?
  end
  test "for author name is enough" do
    au = Author.create(:name => 'Harrison')
    assert_not au.errors.any?
  end
  test "has many through actually works" do
    cit = Citation.new(:body => 'To be or not to be')
    assert_not cit.errors.any?
    cit.create_author(:name => 'Szekspir')
    assert_equal Author.last.name, 'Szekspir'

    Category.create(:name => 'a')
    assert_equal Category.last.name, 'a'
    cit.categories << Category.last
    assert_not cit.categories.empty?

    Category.create(:name => 'b')
    assert_equal Category.last.name, 'b'
    cit.categories << Category.last
    assert_equal 2, cit.categories.size

    cit.save
    assert_not cit.errors.any?
    categories = Author.last.categories.pluck(:name)
    assert_equal ['a','b'], categories
  end
end
