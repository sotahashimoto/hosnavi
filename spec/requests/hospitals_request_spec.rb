require 'rails_helper'

RSpec.describe "Hospitals", type: :request do
  let(:hospital) { create(:hospital) }

  describe 'GET #index' do
    it 'リクエストが成功すること' do
      get hospitals_url
      expect(response.status).to eq 200
    end
  end

  describe 'GET #show' do
    it 'リクエストが成功すること' do
      get hospital_url hospital.id
      expect(response.status).to eq 200
    end
  end
end