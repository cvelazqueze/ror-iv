# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AuthorsController, type: :routing do
  describe 'routing' do
    it 'routes to #new' do
      expect(get: '/authors/new').to route_to('authors#new')
    end

    it 'routes to #create' do
      expect(post: '/authors').to route_to('authors#create')
    end
  end
end
