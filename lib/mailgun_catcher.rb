require 'mailgun_catcher/engine'
require 'mailgun_catcher/event'
require 'mailgun_catcher/notifier/bugsnag'

module MailgunCatcher
  def self.setup
    yield config
  end

  def self.config
    @config ||= Config.new(notifiers: ['MailgunCatcher::Notifier::Bugsnag'])
  end

  class Config
    attr_accessor :notifiers

    def initialize(notifiers:)
      @notifiers = notifiers
    end
  end
end
