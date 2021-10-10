# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :author

  validates :name, presence: true
  validates :year, presence: true
end
