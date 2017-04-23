module Luchadorable
  module Features
    class Mask
      MASKS = [
        '',
        %Q{<circle cx="18" cy="32" r="12" /><circle cx="46" cy="32" r="12" />},
        %Q{<path d="M32 32 L12.2 12.2 A28 28 0 0 1 51.8 12.2 Z" />},
        %Q{<path d="M16 9 A28 28 0 0 1 16 55 A28 28 0 0 1 16 9 M48 9 A28 28 0 0 1 48 55 A28 28 0 0 1 48 9" />},
        %Q{<circle cx="32" cy="48" r="12" />},
        %Q{<path d="M12.8 52.38 a20 20 0 0 1 38.4 0 a28 28 0 0 1 -38.4 0" />},
        %Q{<path d="M6.69 20 h50.62 a28 28 0 0 1 0 24 h-50.62 a28 28 0 0 1 0 -24" />},
        %Q{<path d="M21 6.24 a28 28 0 0 1 6 -1.79 v12.55 a3 3 0 0 1 -6 0 v-10.76 M29 4.16 a28 28 0 0 1 6 0 v14.84 a3 3 0 0 1 -6 0 v-14.84 M37 4.45 a28 28 0 0 1 6 1.79 v10.76 a3 3 0 0 1 -6 0 v-12.55" />}
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
