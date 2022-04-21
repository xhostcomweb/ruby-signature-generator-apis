# frozen_string_literal: true

require_relative "lib/signature_generator/version"

Gem::Specification.new do |spec|
  spec.name = "signature_generator"
  spec.version = SignatureGenerator::VERSION
  spec.authors = ["Paul Anthony McGowan"]
  spec.email = ["xhostcom@gmail.com"]

  spec.summary = "Extendable Signature generator and caller/connector for APIs, web services, and other services."
  spec.description = "Uses Escher stateless signing and calling & connection type classes for API access in Rails."
  spec.homepage = "https://github.com/xhostcomweb/sig_gen_caller.git"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://xhostcom.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/xhostcomweb/sig_gen_caller.git"
  spec.metadata["changelog_uri"] = "https://github.com/xhostcomweb/sig_gen_caller/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Escher Stateless Signing gem dependency
  spec.add_dependency "escher"
  spec.add_dependency "escher-keypool", "~> 0.0.1"
  spec.add_dependency "escher-rack_middleware", "~> 0.3.5"
end
