require 'test_helper'

class WidePhotoTest < ActiveSupport::TestCase
  test "wide photo with url is ok" do
    num = WidePhoto.count
    WidePhoto.create(:url => 'http://')
    assert_equal num+1, WidePhoto.count
  end
end
