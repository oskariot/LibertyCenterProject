require 'test_helper'

class StaticContentTest < ActiveSupport::TestCase
  test "static content should have name" do
    sc = StaticContent.create
    assert sc.errors.any?
  end
end
