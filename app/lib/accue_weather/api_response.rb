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

    def temperature_24_hours
      hash = {}

      response[:body].each do |v|
        key = Time.at(v['EpochTime']).to_datetime

        hash[key] = v['Temperature']['Metric'] if hash[key].blank?

        hash[key].merge(weather_text: weather_text)
      end
    end
  end
end
