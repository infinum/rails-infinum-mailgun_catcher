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

To configure an exact path for the webhooks controller create an initializer (`mailgun_catcher.rb`) with the following content:
```ruby
MailgunCatcher::Engine.config.webhooks_path = 'custom_path'
```
This will allow you change the default webhook route from `/webhooks` to `/custom_path`.

Configure webhook on mailgun:
![](http://take.ms/HZRmm)


## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
