require 'yaml'

module Lunching
  class Config < BasicObject
    FILENAME = 'config.yml'.freeze

    @config = ::OpenStruct.new(
      ::File.file?(FILENAME) ? ::YAML.load_file(FILENAME) : {}
    ).freeze

    class << self
      def respond_to_missing?(name, include_private = false)
        @config.respond_to_missing? name, include_private
      end

      def method_missing(name, *args, &block) # rubocop:disable Style/MethodMissingSuper
        @config.send(name, *args, &block)
      end
    end
  end
end
