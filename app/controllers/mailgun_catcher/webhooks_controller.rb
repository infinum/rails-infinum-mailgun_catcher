module MailgunCatcher
  class WebhooksController < MailgunCatcher::ApplicationController
    def create
      MailgunCatcher::Event.new(params).notify
      head :ok
    end
  end
end
