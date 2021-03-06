# Memorybee

A little bridge between [memrise](http://memrise.com) and
[beeminder](http://beeminder.com)

## Installation

Add this line to your application's Gemfile:

    gem 'memorybee'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install memorybee

## Usage

While you're free to do what you like with this, I use it on heroku.

    mkdir memorybee-poller
    cd memorybee-poller
    git init
    echo 'source "https://rubygems.org"
    ruby "2.0.0"
    gem "memorybee"" > Gemfile
    echo "require 'memorybee'; Memorybee::poll" > poll.rb
    bundle
    git add .
    git commit . -m "poller"
    heroku create
    git push heroku master
    heroku addons:add scheduler:standard
    heroku addons:open scheduler
    # add a schedule to run "ruby poll.rb" daily
    heroku config:set MEMRISE_USER=your_memrise_username
    heroku config:set BMNDR_GOALNAME=your_memrise_goalname
    # nb: this won't create the goal on memrise, you have to do
    # that yourself. Use a "gain weight" goal, as the number of plants
    # metric is absolute rather than relative.



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
