# frozen_string_literal: true

RSpec.describe SignatureGenerator do
  it "has a version number" do
    expect(SignatureGenerator::VERSION).not_to be nil
  end
end
