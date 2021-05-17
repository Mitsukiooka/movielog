require 'rails_helper'

RSpec.describe "Works", type: :request do
  describe "GET /index" do
    it 'render index' do
      get '/works'
      expect(response.body).to include 'My Works'
    end
  end
end
