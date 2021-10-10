# frozen_string_literal: true

class AddYearToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :year, :integer
  end
end
