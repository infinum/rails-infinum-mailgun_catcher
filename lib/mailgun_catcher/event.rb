module MailgunCatcher
  class Event
    attr_reader :params

    def initialize(params)
      @params = params.to_unsafe_h
    end

    def notify_bugsnag
      Bugsnag.notify(EventError.new(self))
    end

    def error_message
      "[#{severity}] [#{reason}] #{recipient}"
    end

    def event_data
      params.fetch('event-data', {})
    end

    private

    def recipient
      event_data.fetch('recipient', 'no recipient')
    end

    def event
      event_data.fetch('event', 'unkown event')
    end

    def severity
      event_data.fetch('severity', '')
    end

    def reason
      event_data.fetch('reason', '')
    end
  end
end
