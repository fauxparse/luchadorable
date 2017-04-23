module Luchadorable
  module Features
    class Face
      attr_reader :color

      def initialize(value)
        @color = Color.new(Color.hues[value], 6)
      end

      def draw
        face_circle + yield
      end

      def self.count
        Color.hues.count
      end

      private

      def face_circle
        %Q{<circle cx="32" cy="32" r="28" fill="#{color.hex}" />}
      end
    end

    register Face
  end
end

