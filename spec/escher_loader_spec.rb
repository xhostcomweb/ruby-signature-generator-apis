# frozen_string_literal: true

RSpec.describe SignatureGenerator::EscherLoader do
  describe "#load" do
    let(:escher_loader) { EscherLoader.new }
    let(:escher_file) { File.join(File.dirname(__FILE__), "../../lib/middleware/rack_middleware.rb") }
    it "loads the escher middleware config file" do
      expect(escher_loader.load(escher_file)).to have_class(Escher::RackMiddleware)
    end
  end

  it "has a public method add_escher_authenticator" do
    expect(SignatureGenerator.respond_to?(:add_escher_authenticator)).to be true
  end

  it "has a public method add_credential_updater" do
    expect(SignatureGenerator.respond_to?(:add_credential_updater)).to be true
  end
end
