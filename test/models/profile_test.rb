require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  test "profile should have associated author" do
    prof = Profile.new(:full_name => 'Alabama', :about => 'interesting guy')
    base_count = Profile.count
    prof.save
    assert_equal base_count, Profile.count
  end
  test "profile with full name about and author is ok" do
    prof = Profile.create(:full_name => 'Alabama', :about => 'interesting guy')
    prof.create_author(:name => 'Sokrates')
    prof.save
    assert_not prof.errors.any?
  end
end
