module Luchadorable
  module Features
    class HighlightColor
      attr_reader :color

      def initialize(value)
        @color = Color.new(Color.hues.rotate(6)[value], 4)
      end

      def draw
        open_group + yield + close_group
      end

      def self.count
        Color.hues.count
      end

      private

      def open_group
        %Q{<g fill="#{color.hex}">}
      end

      def close_group
        %Q{</g>}
      end
    end

    register HighlightColor
  end
end

