require 'rails_helper'

RSpec.describe "Works", type: :request do
  describe "GET /index" do
    it 'render index' do
      get '/works'
      expect(response).to have_http_status(200)
    end
  end
end
