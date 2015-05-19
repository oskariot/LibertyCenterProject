require 'test_helper'

class StickerTest < ActiveSupport::TestCase
  test "static content should have name" do
    st = Sticker.create
    assert st.errors.any?
  end
end
