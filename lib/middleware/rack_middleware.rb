# frozen_string_literal: true

require "escher"
require "rack"
require "escher-keypool"
require "escher/rack_middleware"

Escher::RackMiddleware.config do |c|
  # for read more about escher auth object initialization please visit escherauth.io
  c.add_escher_authenticator { Escher::Auth.new(CredentialScope, AuthOptions) }

  # this will be triggered every time a request hit your application
  c.add_credential_updater { Escher::Keypool.new.get_key_db }
end


