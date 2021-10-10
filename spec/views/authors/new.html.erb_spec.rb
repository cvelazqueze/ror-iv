# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'authors/new', type: :view do
  before do
    assign(:author, Author.new(
                      name: 'MyString'
                    ))
  end

  it 'renders new author form' do
    render

    assert_select 'form[action=?][method=?]', authors_path, 'post' do
      assert_select 'input[name=?]', 'author[name]'
    end
  end
end
