module MailgunCatcher
  class Engine < ::Rails::Engine
    extend Dry::Configurable

    setting :resource_name, 'webhooks'

    isolate_namespace MailgunCatcher
  end
end
