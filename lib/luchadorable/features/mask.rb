module Luchadorable
  module Features
    class Mask
      MASKS = [
        '',
        '<circle cx="18" cy="32" r="11" /><circle cx="46" cy="32" r="11" />',
        '<path d="M32 32 L12.2 12.2 A28 28 0 0 1 51.8 12.2 Z" />'
      ]

      def initialize(value)
        @type = value
      end

      def mask
        @mask ||= MASKS[@type]
      end

      def draw
        mask + yield
      end

      def self.count
        MASKS.count
      end
    end

    register Mask
  end
end
