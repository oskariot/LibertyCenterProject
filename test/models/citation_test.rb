require 'test_helper'

class CitationTest < ActiveSupport::TestCase
  test "association works" do
    aut = Author.first
    cit = Citation.new(:body => 'das')
    cit.author = aut
    cit.save
    assert_equal cit, cit.author.citations.last
  end
end
