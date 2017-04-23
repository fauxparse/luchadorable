module Luchadorable
  module Features
    class Mouth
      MOUTHS = [
        %Q{<circle cx="32" cy="48" r="8" fill="#{BLACK}" />},
        %Q{<path d="M40 48 a8 8 0 0 1 -16 0 a2 2 0 0 1 2 -2 h12 a2 2 0 0 1 2 2" fill="#{BLACK}" />},
        %Q{<path d="M21 57.76 a28 28 0 0 0 6 1.79 v-12.55 a3 3 0 0 0 -6 0 v10.76 M29 59.84 a28 28 0 0 0 6 0 v-14.84 a3 3 0 0 0 -6 0 v14.84 M37 59.55 a28 28 0 0 0 6 -1.79 v-10.76 a3 3 0 0 0 -6 0 v12.55" fill="#{BLACK}" />},
        %Q{<path d="M24.05 47.89 a18 18 0 0 0 15.89 0 a2 2 0 0 1 1.79 3.58 a22 22 0 0 1 -19.47 0 a2 2 0 0 1 1.79 -3.58" fill="#{BLACK}" />},
        %Q{<path d="M24.05 47.89 a18 18 0 0 1 15.89 0 a2 2 0 0 0 1.79 -3.58 a22 22 0 0 0 -19.47 0 a2 2 0 0 0 1.79 3.58" fill="#{BLACK}" />},
        %Q{<path d="M22 48 a2 2 0 0 1 4 0 a2 2 0 0 0 4 0 a2 2 0 0 1 4 0 a2 2 0 0 0 4 0 a2 2 0 0 1 4 0 a6 6 0 0 1 -12 0 h4 a6 6 0 0 1 -12 0" fill="#{BLACK}" fill-rule="nonzero" />},
        %Q{<g fill="#{BLACK}"><path d="M9.02 48 h45.96 a28 28 0 0 1 -3.38 4 h-39.2 a28 28 0 0 1 -3.38 -4" /><rect x="23" y="45" width="4" height="10" rx="2" ry="2" /><rect x="30" y="44" width="4" height="12" rx="2" ry="2" /><rect x="37" y="45" width="4" height="10" rx="2" ry="2" /></g>},
        %Q{<rect x="22" y="46" width="20" height="4" rx="2" ry="2" fill="#{BLACK}" /><path d="M24 48 h4 v3 a2 2 0 0 1 -4 0 v-3 m12 0 h4 v3 a2 2 0 0 1 -4 0 v-3" fill="#{WHITE}">}
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
