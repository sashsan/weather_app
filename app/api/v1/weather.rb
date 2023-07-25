# frozen_string_literal: true

# Top level module
module V1
  # Weather API
  class Weather < Grape::API
    CITY = 'miami'

    before do
      def client
        @client ||= ::AccueWeather::Client.new('weather app')
      end

      def uniq_id
        @uniq_id ||= client.uniq_id(city: CITY).uniq_id
      end
    end

    resource :weather do
      desc 'get current temperature'
      # rubocop:disable Style/HashSyntax
      get '/current' do
        result = client.current_temperature(uniq_id: uniq_id)

        present city: CITY, text: result.weather_text, temperature: result.temperature
      end
      # rubocop:enable Style/HashSyntax
    end
  end
end
