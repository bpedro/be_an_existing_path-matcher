# `be_an_existing_path` [RSpec](http://rspec.info/) matcher

An RSpec matcher that checks if a given path exists.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'be_an_existing_path-matcher'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install be_an_existing_path-matcher

## Usage

`require` this gem on your `spec_helper.rb`:

```ruby
require 'be_an_existing_path'
```

Use it on any tests to check if a path exists, e.g.:

```ruby
RSpec.describe YourClass do
  let(:existing_path) { 'EXISTING_PATH' }
  let(:non_existing_path) { 'NON_EXISTING_PATH' }

  describe '#initialize' do
    context 'when the path exists' do
      subject { existing_path }
      it { is_expected.to be_an_existing_path }
    end

    context 'when the path doesn\'t exist' do
      subject { non_existing_path }
      it { is_expected.not_to be_an_existing_path }
    end
  end
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/be_an_existing_path-matcher/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
