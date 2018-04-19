require './app/controllers/personal_site'

run PersonalSite



=begin
What does this file do? It tells Rack about our application.
If our test_helper is the entry point for our application
when our test suite is trying to access it, config.ru is the
entry point when we're trying to access our app from the web.
=end
