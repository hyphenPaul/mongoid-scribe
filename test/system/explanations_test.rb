require "application_system_test_case"
 
class ExplanationsTest < ApplicationSystemTestCase
  setup do
    Movie.create(name: 'The Thing', storyline: 'Men in Ice')
    Movie.create(name: 'The Changeling', storyline: 'Man in A House')
  end

  test "Records query from request" do
    visit movies_url

    assert page.has_content?('The Thing')

    visit mongoid_scribe.explanations_path

    assert page.has_content?(movies_path)
  end

  test "Records when an index is used" do
    widget = Widget.create!(foo: 'foo', bar: 'bar')

    visit widget_foo_path, foo: 'foo'    

    assert page.has_content?('foo')
    assert page.has_content?('bar')

    visit mongoid_scribe.explanations_path

    assert page.has_content?('yes')
    assert_equal(page.has_content?('no'), false)

    visit widget_foo_path, bar: 'bar'    
    visit mongoid_scribe.explanations_path

    assert page.has_content?('yes')
    assert page.has_content?('no')
  end
end
