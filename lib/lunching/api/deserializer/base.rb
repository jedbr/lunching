module Lunching
  module Api
    module Deserializer
      class Base

        def initialize(response)
          @response = response
        end

        def call
          JSON.parse @response.body
        end

      end
    end
  end
end
