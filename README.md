# Capistrano::Endless

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/capistrano/endless`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-endless'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-endless

## Usage

```ruby
# Capfile
require "capistrano/setup"
require "capistrano/deploy"
require "capistrano/bundler"
require "capistrano/rvm"
require "capistrano/endless"
```

Configurable options, shown here with defaults:

```ruby
endless_pid =>  -> { File.join(shared_path, 'tmp', 'pids', 'endless.pid') }
endless_role => :app
endless_env => -> { fetch(:run_mode, 'production') }
endless_binary => -> { fetch(:application) }
endless_start_cmd => -> { "#{shared_path}/#{fetch(:endless_binary)} >> #{shared_path}/log/stdout.log 2>> #{shared_path}/log/stderr.log" }
endless_safe_restart_signal => "HUP"
endless_safe_stop_signal => "TERM"
image_name => "golang:1.9"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/capistrano-endless. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Capistrano::Endless project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/capistrano-endless/blob/master/CODE_OF_CONDUCT.md).
