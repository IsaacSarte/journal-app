# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Journal, type: :model do
  # it { expect(described_class.new).to validate_presence_of :name }
  # it { expect(described_class.new).to validate_length_of :name }
  subject {
    described_class.new
  }

  it "is valid with all attributes" do
    subject.name = 'Testing Category'
    expect(subject).to be_valid
  end
end
