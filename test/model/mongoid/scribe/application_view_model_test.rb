require 'test_helper'

class MongoidScribeAppliationViewModelTest < ActiveSupport::TestCase
  setup do
    @subject = Mongoid::Scribe::ApplicationViewModel
  end

  test 'delegates methods to any model passed to it' do
    model = 'foo'
    view_model = Mongoid::Scribe::ApplicationViewModel.new(model)

    assert_equal(view_model.length, 3)
  end
end
