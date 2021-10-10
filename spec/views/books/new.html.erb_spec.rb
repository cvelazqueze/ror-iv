# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'books/new', type: :view do
  before do
    assign(:book, Book.new(
                    name: 'MyString',
                    author: nil
                  ))
  end

  it 'renders new book form' do
    render

    assert_select 'form[action=?][method=?]', books_path, 'post' do
      assert_select 'input[name=?]', 'book[name]'

      assert_select 'select[name=?]', 'book[author_id]'
    end
  end
end
