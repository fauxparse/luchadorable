module Luchadorable
  module Features
    class Eyes
      WHITE = Color.new('white').hex
      BLACK = Color.new('black').hex

      EYES = [
        %Q{<g fill="#{WHITE}"><circle cx="18" cy="32" r="8" /><circle cx="46" cy="32" r="8" /><g fill="#{BLACK}"><circle cx="18" cy="32" r="3" /><circle cx="46" cy="32" r="3" /></g></g>}
      ]

      def initialize(value)
        @type = value
      end

      def eyes
        @eyes ||= EYES[@type]
      end

      def draw
        eyes + yield
      end

      def self.count
        EYES.count
      end
    end

    register Eyes
  end
end
