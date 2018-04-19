require './test/test_helper'

class LinkTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/'
    click_on "About"

    assert_equal 200, page.status_code
    assert_equal '/about', current_path
    assert page.has_content?("About Me!")
  end
end

=begin
1) #click_on allows us to tell Capybara to click on a link or button.
2)current_path holds the value of the path that would show up in our browser navbar.
=end
