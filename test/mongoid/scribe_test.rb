require 'test_helper'

class Mongoid::Scribe::Test < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Mongoid::Scribe
  end
end
