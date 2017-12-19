# Capistrano::Rake::Unicorn::Rails

Unicorn start/stop cap task.

## Requirement

* Rails > 4.2
* Capistrano > 3.3.0

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-rake-unicorn-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-rake-unicorn-rails

## Usage

in your Capfile
```
require 'capistrano/rake/unicorn/rails'
```

```
cap -T

cap unicorn:force_stop             # Stop unicorn server immediately
cap unicorn:reload                 # Reload (Send USR2 Signal) unicorn process; if process not exists, up
cap unicorn:restart                # Restart unicorn server gracefully
cap unicorn:start                  # Start unicorn server
cap unicorn:stop                   # Stop unicorn server gracefully
```

in your deploy.rb

```
namespace :deploy do
  # ...
  after 'deploy:restart', 'unicorn:reload'
end
```

## Development

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version.
