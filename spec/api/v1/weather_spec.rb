# frozen_string_literal: true

require 'rails_helper'

describe ::V1::Weather do
  context 'get current temperature' do
    let(:path) { '/api/v1/weather/current' }

    subject do
      get path
      response
    end

    it 'with success and return json' do
      client = double('hello ruby')

      res = { 'WeatherText': 'Party cloudy', 'Metric': {
        'Value': 22.0, 'Unit': 'C', 'UnitType': 17
      } }

      expect(::AccueWeather::Client).to receive(:new)
        .and_return(client)

      expect(client).to receive_message_chain(:uniq_id, :uniq_id)
        .and_return('5643434')

      expect(client).to receive(:current_temperature)
        .and_return(::AccueWeather::APIResponse.new(res))

      is_expected.to be_successful
      expect(response.status).to eq(200)
    end


  end
end
