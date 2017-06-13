# Bc3client

How to create a gem using bundler:
http://bundler.io/v1.12/guides/creating_gem.html

How run a single test: 
bundle exec rspec ./spec/bc3client_spec.rb:12

How to execute a curl request for basecamps:
curl -H "Authorization: Bearer BAhbB0kiAbB7ImNsaWVudF9pZCI6IjRkYjg1YTFmYjIwYjRiY2RmODg1YWNhNDFmZWI2NjI5MzYyODc0ZDkiLCJleHBpcmVzX2F0IjoiMjAxNy0wNi0yMVQwMTo0MzowNloiLCJ1c2VyX2lkcyI6WzMyNDYzMjA1XSwidmVyc2lvbiI6MSwiYXBpX2RlYWRib2x0IjoiZTE3Yzg5YzJkZjE5ODAzNzRkZTk4OWU2NjQwNzI5ZDEifQY6BkVUSXU6CVRpbWUNoVYdwPVfbqwJOg1uYW5vX251bWkCQwI6DW5hbm9fZGVuaQY6DXN1Ym1pY3JvIgdXkDoJem9uZUkiCFVUQwY7AEY=--6f0259e559b7d0f34aa2142ebc48fbaca2ea8bb5" -H 'User-Agent: MyApp (yourname@example.com)' https://3.basecampapi.com/3735142/projects.json

How to execute a curl request for to-do lists:
curl -s -H "Authorization: Bearer BAhbB0kiAbB7ImNsaWVudF9pZCI6IjRkYjg1YTFmYjIwYjRiY2RmODg1YWNhNDFmZWI2NjI5MzYyODc0ZDkiLCJleHBpcmVzX2F0IjoiMjAxNy0wNi0yMVQwMTo0MzowNloiLCJ1c2VyX2lkcyI6WzMyNDYzMjA1XSwidmVyc2lvbiI6MSwiYXBpX2RlYWRib2x0IjoiZTE3Yzg5YzJkZjE5ODAzNzRkZTk4OWU2NjQwNzI5ZDEifQY6BkVUSXU6CVRpbWUNoVYdwPVfbqwJOg1uYW5vX251bWkCQwI6DW5hbm9fZGVuaQY6DXN1Ym1pY3JvIgdXkDoJem9uZUkiCFVUQwY7AEY=--6f0259e559b7d0f34aa2142ebc48fbaca2ea8bb5" -H 'User-Agent: MyApp (yourname@example.com)' https://3.basecampapi.com/3735142/buckets/3515307/todosets/492500724/todolists.json

How to execute a curl request for a to-do list:
curl -s -H "Authorization: Bearer BAhbB0kiAbB7ImNsaWVudF9pZCI6IjRkYjg1YTFmYjIwYjRiY2RmODg1YWNhNDFmZWI2NjI5MzYyODc0ZDkiLCJleHBpcmVzX2F0IjoiMjAxNy0wNi0yMVQwMTo0MzowNloiLCJ1c2VyX2lkcyI6WzMyNDYzMjA1XSwidmVyc2lvbiI6MSwiYXBpX2RlYWRib2x0IjoiZTE3Yzg5YzJkZjE5ODAzNzRkZTk4OWU2NjQwNzI5ZDEifQY6BkVUSXU6CVRpbWUNoVYdwPVfbqwJOg1uYW5vX251bWkCQwI6DW5hbm9fZGVuaQY6DXN1Ym1pY3JvIgdXkDoJem9uZUkiCFVUQwY7AEY=--6f0259e559b7d0f34aa2142ebc48fbaca2ea8bb5" -H 'User-Agent: MyApp (yourname@example.com)' https://3.basecampapi.com/3735142/buckets/3515307/todolists/492501801.json


https://3.basecampapi.com/3735142/buckets/3515307/todosets/492500724.json

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/bc3client`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bc3client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bc3client

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/bc3client.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

