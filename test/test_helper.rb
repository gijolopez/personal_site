require 'minitest/autorun'
require 'minitest/pride'
require 'capybara/minitest'
require './app/controllers/personal_site'

Capybara.app = PersonalSite

class CapybaraTestCase < Minitest::Test
  include Capybara::DSL
  include Capybara::Minitest::Assertions
end

=begin
That CapybaraTestCase is pretty interesting. Since it inherits from Minitest::Test, our feature tests can inherit from it, and thus will have access to both the Minitest methods that we know and love and the new Capybara methods that we'll be using to interact with our website.
In this application, the Test Helper will be the way that our tests are made aware of our application. We do this by requiring ./app/controllers/personal_site, and then setting Capybara.app to our rack app name PersonalSite (a class which we haven't created yet) so that Capybara knows where to look when it's running our tests.
Note that I copied most of these lines almost directly from the Capybara documentation. In it, there is a Setup section that says the following:
If the application that you are testing is a Rack app, but not Rails, set Capybara.app to your Rack app:
Capybara.app = MyRackApp
=end
