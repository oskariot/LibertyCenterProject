require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  test "author should have name" do
    au = Author.new
    au.save
    assert au.errors.any?
  end
end
