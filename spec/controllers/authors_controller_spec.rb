# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # Author. As you add validations to Author, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    { name: 'Mark Twain' }
  end

  let(:invalid_attributes) do
    { doesnt_exist: 'Mark Twain' }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AuthorsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET #new' do
    it 'returns a success response' do
      get :new, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Author' do
        expect do
          post :create, params: { author: valid_attributes }, session: valid_session
        end.to change(Author, :count).by(1)
      end

      it 'redirects to the created author' do
        post :create, params: { author: valid_attributes }, session: valid_session
        expect(response).to redirect_to(new_book_path)
      end
    end

    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: { author: invalid_attributes }, session: valid_session
        expect(response).to be_successful
      end
    end
  end
end
