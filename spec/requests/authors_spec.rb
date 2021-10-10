# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Authors', type: :request do
  describe 'GET /authors/new' do
    it do
      get new_author_path
      expect(response).to have_http_status(:ok)
    end
  end
end
