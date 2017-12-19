# Array::Eqq

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/array/eqq`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'array-eqq'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install array-eqq

## Usage

```ruby
require "array/eqq"

using Array::Eqq

p [1, 2] === [1, 2]
# => true

p [Integer, String] === [1, "homu"]
# => true

p [Integer, String] === [1, "homu", 3]
# => false


def _
    proc { true }
end

def fizzbuzz n
    case [n % 3, n % 5]
    # n % 3 === 0 && n % 5 === 0
    when [0, 0]
        "FizzBuzz"
    # n % 3 === 0
    when [0, _]
        "Fizz"
    # n % 5 === 0
    when [_, 0]
        "Buzz"
    else
        n
    end
end

p (1..20).map &method(:fizzbuzz)
# => [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz", 16, 17, "Fizz", 19, "Buzz"]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/osyo-manga/gem-array-eqq.
