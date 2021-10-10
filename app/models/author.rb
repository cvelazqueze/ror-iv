# frozen_string_literal: true

class Author < ApplicationRecord
  has_many :books, dependent: :nullify

  validates :name, presence: true
end
