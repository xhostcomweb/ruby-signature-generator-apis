# frozen_string_literal: true

RSpec.describe SignatureGenerator::EscherLoader do
  let(:loader) { described_class.new(path) }
  let(:path) { "spec/fixtures/escher_loader_spec.rb" }
  # let(:path) { File.expand_path("fixtures/lines.log", __dir__) }
  describe "#load" do
    subject(:path) { loader.load(filename) }
    it "returns the path to escher-rack-middleware file" do
      expect(path).to eq(path)
    end
    it "has a public method add_escher_authenticator" do
      expect(SignatureGenerator.respond_to?(:add_escher_authenticator)).to be true
    end

    it "has a public method add_credential_updater" do
      expect(SignatureGenerator.respond_to?(:add_credential_updater)).to be true
    end
  end
end
