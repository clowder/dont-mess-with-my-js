# DontMessWithMyJs

Adds `Cache-Control: no-transform` to your responses (via rack middleware) so that
[bytemobile's](http://www.bytemobile.com/) [bmi.js](https://google.com/search?q=bmi.js)
doen't bugger your page's assets.

## Installation

Add this line to your application's Gemfile:

    gem 'dont-mess-with-my-js'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dont-mess-with-my-js

## Usage

### Rails

*app/config/application.rb*

    config.middleware.insert_before ActionDispatch::Static, Rack::DontMessWithMyJs

*app/config/production.rb*

    config.serve_static_assets = true

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Addendum

This is a parody, you should probably just set `config.static_cache_control` if your using Rails.
