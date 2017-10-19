require 'test_helper'

class MongoidScribeRoutesParserTest < ActiveSupport::TestCase
  setup { @subject = Mongoid::Scribe::RoutesParser }

  test 'matches exact route paths' do
    paths = ['/foo', '/bar', '/foo/bar']   

    @subject.stub :all_paths, paths do
      assert @subject.path_matches?('/foo')
      assert @subject.path_matches?('/bar')
      assert @subject.path_matches?('/foo/bar')
      assert_not @subject.path_matches?('/bar/baz')
    end
  end

  test 'ignores path variables' do
    paths = ['/foo/:id', '/foo/:id/bar']   

    @subject.stub :all_paths, paths do
      assert @subject.path_matches?('/foo/abc')
      assert @subject.path_matches?('/foo/def/bar')
    end
  end
end
