module Lunching
  module Api
    module Serializers
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
