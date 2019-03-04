# MailgunCatcher
Catch mailgun events and report to bugsnag

## Usage
Add this line to your application's Gemfile:

```ruby
gem 'mailgun_catcher'
```

And then execute:
```bash
$ bundle
```

Add to routes:
```ruby
mount MailgunCatcher::Engine, at: "/mailgun_catcher"
```

Configure custom controller name in an initializer (optional):
```ruby
MailgunCatcher::Engine.config.controller_name = 'custom_controller'
```

Configure webhook on mailgun:
![](http://take.ms/HZRmm)


## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
