require 'http'
require_relative 'endpoints'

module Api
  class Client
    include Endpoints
  end
end
