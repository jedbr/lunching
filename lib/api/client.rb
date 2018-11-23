require 'http'
require_relative 'endpoints'

module Lunching
  module Api
    class Client
      include Endpoints

      API_DOMAIN = 'https://api.lunching.pl/api'.freeze
      LOGIN_EMAIL = ''.freeze
      PASSWORD = ''.freeze

      def initialize
        @client = HTTP.basic_auth(user: LOGIN_EMAIL, pass: PASSWORD)
      end

      Endpoints.public_instance_methods.each do |endpoint_name|
        define_method(endpoint_name) do |*args, **kwargs|
          JSON.parse super(*args, *kwargs).body
        end
      end

      [:get, :post].each do |request_method|
        define_method(request_method) do |path, **kwargs|
          @client.public_send(request_method, "#{API_DOMAIN}#{path}", *kwargs)
        end
        private request_method
      end
    end
  end
end
