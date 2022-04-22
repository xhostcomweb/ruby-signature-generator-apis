# frozen_string_literal: tru

RSpec.describe SignatureGenerator::EscherLoader do
  let(:escher_loader) { described_class.new(path) }
  let(:path) { File.expand_path("spec/fixtures/files/escher.json") }
  let(:escher_json) { JSON.parse(File.read(path)) }
  describe "#escher_loader" do
    it "reads sample file" do
      expect(escher_json).read.to eq(
        {
          "add_escher_authenticator": {
            "type": "object",
            "properties": {
              "add_escher_authenticator": {
                "type": "object"
              }
            }
          },
          "add_credential_updater": {
            "type": "object",
            "properties": {
              "add_credential_updater": {
                "type": "object"
              }
            }
          }
        }
)     # it "returns the path to escher-rack-middleware file" do
      # expect(path).to eq(path)
      # end
      it "has a public method add_escher_authenticator" do
        expect(SignatureGenerator.respond_to?(:add_escher_authenticator)).to be true
      end

      it "has a public method add_credential_updater" do
        expect(SignatureGenerator.respond_to?(:add_credential_updater)).to be true
      end
    end
  end
end
