# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # Book. As you add validations to Book, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    { name: 'A book name', author_id: Author.create!(name: 'Mark Twain').id, year: 2013 }
  end

  let(:invalid_attributes) do
    { doesnt_exist: 'A book name' }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BooksController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'returns a success response' do
      Book.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #new' do
    it 'returns a success response' do
      get :new, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Book' do
        expect do
          post :create, params: { book: valid_attributes }, session: valid_session
        end.to change(Book, :count).by(1)
      end

      it 'redirects to the created book' do
        post :create, params: { book: valid_attributes }, session: valid_session
        expect(response).to redirect_to(books_path)
      end
    end

    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: { book: invalid_attributes }, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe 'PUT #update' do
    let(:new_attributes) do
      { favorite: '1' }
    end

    it 'updates the requested book' do
      book = Book.create! valid_attributes
      put :update, params: { id: book.to_param, book: new_attributes }, session: valid_session
      book.reload
      expect(book).to be_favorite
    end

    it 'redirects to the books path' do
      book = Book.create! valid_attributes
      put :update, params: { id: book.to_param, book: valid_attributes }, session: valid_session
      expect(response).to redirect_to(books_path)
    end
  end
end
