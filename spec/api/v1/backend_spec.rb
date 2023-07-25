require 'rails_helper'

describe ::V1::Backend do
  context 'get status of backend work' do
    let(:path) { '/api/v1/health' }

    subject do
      get path
      response
    end

    it 'returns status 200' do
      is_expected.to be_successful
    end
  end
end