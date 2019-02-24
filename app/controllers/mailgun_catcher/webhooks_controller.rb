module MailgunCatcher
  class WebhooksController < MailgunCatcher::ApplicationController
    def create
      MailgunCatcher::Event.new(params).notify_bugsnag
      head :ok
    end
  end
end
