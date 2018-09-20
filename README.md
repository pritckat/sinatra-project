Sinatra::Project
This gem can be used  to create, view, update, and delete team compositions for the game of Overwatch. One can sign up to create their own teams, or without being a user just view created teams.

Installation
Add this line to your application's Gemfile:

gem 'sinatra-project'
And then execute:

$ bundle
Or install it yourself as:

$ gem install sinatra-project
Usage
To run the program after installation, navigate to 'sinatra-project'
enter 'bundle exec rake db:migrate' to create the database.
enter 'bundle exec rake db:seed' to load the characters into the database
enter 'shotgun' to get the uri for the server and type this into a web browser

Development
After checking out the repo, run bin/setup to install dependencies. You can also run bin/console for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run bundle exec rake install. To release a new version, update the version number in version.rb, and then run bundle exec rake release, which will create a git tag for the version, push git commits and tags, and push the .gem file to rubygems.org.

Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/'pritckat'/new-cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

License
The gem is available as open source under the terms of the MIT License.

Code of Conduct
Everyone interacting in the New::Cli project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the code of conduct.
