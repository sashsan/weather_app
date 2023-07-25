# frozen_string_literal: true

module AccueWeather
  class APIRequestFactory
    def uniq_id(city)
      generic_request.merge(
        {
          q: city,
          offset: false,
          alias: false
        }
      )
    end

    private

    def generic_request
      {
        apiKey: ENV.fetch('ACCUE_WEATHER_API_KEY'),
        language: 'en',
        details: false
      }
    end
  end
end
