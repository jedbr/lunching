require 'http'
require_relative 'endpoints'

module Lunching
  module Api
    class Client
      include Endpoints
    end
  end
end
