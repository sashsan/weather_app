# frozen_string_literal: true

module AccueWeather
  class APIResponse
    include ApplicationHelper

    attr_accessor :response

    def initialize(response)
      @response = response
    end

    def uniq_id
      @uniq_id ||= get_nested_value(response, 'Key')
    end

    def weather_text
      @weather_text ||= get_nested_value(response, 'WeatherText')
    end

    def temperature
      @temperature ||= get_nested_value(response, 'Metric')
    end
  end
end
