# KcComments

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/kc_comments`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kc_comments'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kc_comments

## Usage
include KcComments::Comment::HostableMethods
```ruby
class Book
  include Mongoid::Document
  include Mongoid::Timestamps
  include KcComments::Comment::HostableMethods

  field :name, type: String
end
```

how to comment
```ruby
book = Book.create(name: "test_1")

comment = book.comments.create(:content => "太好看啦", :user => user)
 => #<KcComments::Comment _id: 5710633bd4d1235415000002, created_at: 2016-04-15 03:42:51 UTC, updated_at: 2016-04-15 03:42:51 UTC, content: "太好看啦", user_id: BSON::ObjectId('571062e0d4d1235415000000'), host_type: "Book", host_id: BSON::ObjectId('57106307d4d1235415000001')>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/kc_comments.

