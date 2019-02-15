module Lunching
  module Model
    class CategoryItem

      attr_reader :name, :sizes

      def initialize(name:, sizes: [])
        @name = name
        @sizes = sizes
      end

    end
  end
end
