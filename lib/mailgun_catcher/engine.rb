module MailgunCatcher
  class Engine < ::Rails::Engine
    isolate_namespace MailgunCatcher

    def self.config
      @config ||= Config.new(webhooks_path: 'webhooks')
    end

    class Config
      attr_accessor :webhooks_path

      def initialize(webhooks_path:)
        @webhooks_path = webhooks_path
      end
    end
  end
end
