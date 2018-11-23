module Lunching
  module Api
    class Client
      extend Endpoints

      API_DOMAIN =  'https://api.lunching.pl/api'.freeze
      LOGIN_EMAIL = ''.freeze
      PASSWORD =    ''.freeze

      @client = HTTP.basic_auth(user: LOGIN_EMAIL, pass: PASSWORD)

      class << self
        Endpoints.public_instance_methods.each do |endpoint_name|
          define_method(endpoint_name) do |*args, **kwargs|
            serializer = serializer_for(endpoint_name)
            serializer.new(super(*args, *kwargs)).call
          end
        end

        private

        %i[get post delete].each do |request_method|
          private( # rubocop:disable Style/AccessModifierDeclarations
            define_method(request_method) do |path, **kwargs|
              @client.public_send(request_method, "#{API_DOMAIN}#{path}", *kwargs)
            end
          )
        end

        def serializer_for(endpoint_name)
          const_name = endpoint_name.to_s.split("_").map(&:capitalize).join
          Lunching::Api::Serializers.const_get(const_name)
        end
      end

    end
  end
end
