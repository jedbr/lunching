module Lunching
  module Api
    module Deserializer
      class Order < Base

        def call
          @response.code == 200
        end

      end
    end
  end
end
