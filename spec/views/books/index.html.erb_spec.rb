# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'books/index', type: :view do
  before do
    author = Author.create! name: 'An author name'
    assign(:books, [
             Book.create!(
               name: 'Name',
               author: author,
               year: 2013
             ),
             Book.create!(
               name: 'Name',
               author: author,
               year: 2021
             )
           ])
  end

  it 'renders a list of books' do
    render
    assert_select '.book-card > .card-heading', text: 'Name', count: 2
    assert_select '.book-card > .card-subheading', text: 'Author: An author name', count: 2
  end
end
