require 'dry-configurable'
require 'mailgun_catcher/engine'
require 'mailgun_catcher/event'
require 'mailgun_catcher/event_error'
require 'mailgun_catcher/notifier/bugsnag'

module MailgunCatcher
  extend Dry::Configurable

  setting(:notifier, MailgunCatcher::Notifier::Bugsnag.new)

  def self.setup
    yield config
  end
end
