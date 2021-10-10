# Local Setup
## NOTE: This setup is not needed if the development environment is deployed via Gitpod

1. Install [git](https://git-scm.com/)
2. Install Ruby version in Gemfile (via [rvm](http://rvm.io/) or similar)
3. Open a terminal to the directory where you cloned this repository
4. `git init && git add . && git commit -m 'Initial commit'`
5. `gem install bundler --version 2.1.4 && bundle install`
6. `yarn install && bin/webpack`
6. `rails db:drop db:setup db:seed`
7. `rails server`
8. Open a web browser to `http://localhost:3000`
9. To run tests: `bundle exec rspec spec`
