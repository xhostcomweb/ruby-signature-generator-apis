# frozen_string_literal: true

RSpec.describe SignatureGenerator do
  it "has a version number" do
    expect(SignatureGenerator::VERSION).not_to be nil
  end

  it should "contain a public method add_escher_authenticator" do
    expect(SignatureGenerator.respond_to?(:add_escher_authenticator)).to be true
  end
end
