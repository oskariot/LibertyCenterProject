require 'test_helper'

class LibertyTranslationTest < ActiveSupport::TestCase
  test "table contains proper values" do
    assert_instance_of LibertyTranslation, LibertyTranslation.first
  end
  test "libertytranslation should have both attributes" do
    lt = LibertyTranslation.new
    lt.word = 'word'
    lt.lang = nil
    lt.save
    assert lt.errors.any?
  end
end
