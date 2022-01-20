require 'dry-configurable'
require 'mailgun_catcher/engine'
require 'mailgun_catcher/event'
require 'mailgun_catcher/notifier/bugsnag'

module MailgunCatcher
  extend Dry::Configurable

  setting(:notifiers, default: ["MailgunCatcher::Notifier::Bugsnag"])

  def self.setup
    yield config
  end
end
