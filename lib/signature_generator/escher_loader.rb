# frozen_string_literal: true

require_relative "../middleware/rack_middleware"

module SignatureGenerator
  class EscherLoader
    def initialize(escher_file)
      @escher_file = escher_file
    end

    def load
      Escher.load(@escher_file)
    end
  end
end
