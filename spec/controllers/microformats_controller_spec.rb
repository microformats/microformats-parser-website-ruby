require 'rails_helper'

RSpec.describe MicroformatsController, type: :controller do
  describe 'GET #show' do
    it 'returns http redirect' do
      get :show
      expect(response).to have_http_status(:redirect)
    end
  end
end
