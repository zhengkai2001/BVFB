require 'test_helper'
class ApplicationHelperTest < ActionView::TestCase
  test 'full title helper' do
    assert_equal full_title, 'Brazos Valley Food Bank'
    assert_equal full_title('About'), 'About | Brazos Valley Food Bank'
  end
end