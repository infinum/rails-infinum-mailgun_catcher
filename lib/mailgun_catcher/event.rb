module MailgunCatcher
  class Event
    attr_reader :params

    def initialize(params)
      @params = params.to_unsafe_h
    end

    def notify
      notifiers.each { |notifier| notifier.notify(self) }
    end

    def error_message
      "[#{severity}] [#{reason}] #{recipient}: #{delivery_status}"
    end

    def grouping_error_message
      "[#{severity}] [#{reason}] #{recipient}"
    end

    def event_data
      params.fetch('event-data', {})
    end

    private

    def notifiers
      MailgunCatcher.config.notifiers.map { |notifier| notifier.constantize.new }
    end

    def delivery_status
      return delivery_status_message if delivery_status_message.present?
      return delivery_status_description if delivery_status_description.present?

      'missing delivery status message'
    end

    def delivery_status_message
      event_data.fetch('delivery-status', {}).fetch('message', '')
    end

    def delivery_status_description
      event_data.fetch('delivery-status', {}).fetch('description', '')
    end

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
