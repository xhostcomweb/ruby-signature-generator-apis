# frozen_string_literal: true

require_relative "../middleware/rack_middleware"

module SignatureGenerator
  class EscherLoader
    def initialize(path)
      @path = path
    end
    # { File.expand_path("../../lib/middleware/rack_middleware.rb", __dir__) }
    #def load; end
    # end
  end
end
