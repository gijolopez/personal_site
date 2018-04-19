require './test/test_helper'

class HomepageTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/'

    assert page.has_content?("Welcome!")
    assert_equal 200, page.status_code
  end
end


=begin
What's all this about now? What does each line do?

1)require './test/test_helper' We require our test helper so that we get access to minitest and all the Capybara goodness we added to it.
2)class HomepageTest < CapybaraTestCase We create a new class for our test (consistent with Minitest tests that we've written in the past), except now we inherit from CapybaraTestCase because we want to have access to all of those Capybara methods in our test (and because Capybara told us that's how we do it).
3)visit '/' We use one of the new methods that Capybara gives us #visit to go to the page at the root of our application (which... I know... still doesn't exist).
4)assert page.has_content?("Welcome!"); assert_equal 200, page.status_code We make some assertions: the first will check to see that the argument evaluates to true, and the second will check the equality of 200 and the page.status_code

page here is also new, but basically that is Capybara's way of holding the response that we get back from our server. We'll talk more about it shortly.

If we run this test (remember, we can do this using rake), we should get an error saying something about an uninitialized constant PersonalSite. Even though we created the file and told this test about that file, we haven't actually created the class. Let's do that now.
=end
