module MailgunCatcher
  class Engine < ::Rails::Engine
    extend Dry::Configurable

    setting :webhooks_path, 'webhooks'

    isolate_namespace MailgunCatcher
  end
end
