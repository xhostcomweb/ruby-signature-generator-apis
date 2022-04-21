# frozen_string_literal: true

RSpec.describe SignatureGenerator do
  it "has a version number" do
    expect(SignatureGenerator::VERSION).not_to be nil
  end

  it "has a public method add_escher_authenticator" do
    expect(SignatureGenerator.respond_to?(:add_escher_authenticator)).to be true
  end

  it "has a public method add_credential_updater" do
    expect(SignatureGenerator.respond_to?(:add_credential_updater)).to be true
  end
end
