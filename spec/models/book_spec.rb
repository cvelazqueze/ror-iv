# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Book, type: :model do
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :year }
  it { is_expected.to belong_to :author }
end
