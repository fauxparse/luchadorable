module Luchadorable
  module Features
    class Mouth
      WHITE = Color.new('white').hex
      BLACK = Color.new('black').hex

      MOUTHS = [
        %Q{<circle cx="32" cy="48" r="8" fill="#{BLACK}" />}
      ]

      def initialize(value)
        @type = value
      end

      def mouth
        @mouth ||= MOUTHS[@type]
      end

      def draw
        mouth + yield
      end

      def self.count
        MOUTHS.count
      end
    end

    register Mouth
  end
end
