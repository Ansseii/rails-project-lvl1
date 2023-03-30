### Hexlet tests and linter status:
[![Actions Status](https://github.com/Ansseii/rails-project-lvl1/workflows/hexlet-check/badge.svg)](https://github.com/Ansseii/rails-project-lvl1/actions)
[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop)
[![Ruby Style Guide](https://img.shields.io/badge/code_style-community-brightgreen.svg)](https://rubystyle.guide)
[![CI](https://github.com/Ansseii/rails-project-lvl1/actions/workflows/linter-tests-check.yml/badge.svg?branch=main)](https://github.com/Ansseii/rails-project-lvl1/actions/workflows/linter-tests-check.yml)

# HexletCode

Form generator

```ruby
HexletCode.form_for @user, url: '/users' do |f|
      f.input :name, class: 'user-input'
      f.input :job, as: :text, rows: 50, cols: 50
      f.submit 'Save me'
end

# <form action="/users" method="post">
# <input name="name" type="text" value="Tom" class="user-input">
# <textarea cols="50" name="job" rows="50">project manager</textarea>
# <input type="submit" value="WoW">
# </form>
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hexlet_code'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install hexlet_code

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `make test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
