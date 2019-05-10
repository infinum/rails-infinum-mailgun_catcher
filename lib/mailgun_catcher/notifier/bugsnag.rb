module MailgunCatcher
  module Notifier
    class Bugsnag
      def notify(event)
        Bugsnag.notify(event)
      end
    end
  end
end
