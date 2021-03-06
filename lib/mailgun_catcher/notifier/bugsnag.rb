module MailgunCatcher
  module Notifier
    class Bugsnag
      def notify(event)
        error_event = EventError.new(event)
        ::Bugsnag.notify(error_event)
      end
    end

    class EventError < StandardError
      attr_reader :event

      def initialize(event)
        @event = event
        super(event.error_message)
      end

      def bugsnag_meta_data
        { event_details: event.event_data }
      end

      def bugsnag_context
        'mailgun'
      end

      def bugsnag_grouping_hash
        event.grouping_error_message
      end
    end
  end
end
