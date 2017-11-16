module Luchadorable
  module Features
    class Eyes
      EYES = [
        %Q{<g fill="#{WHITE}"><circle cx="18" cy="32" r="8" /><circle cx="46" cy="32" r="8" /><g fill="#{BLACK}"><circle cx="18" cy="32" r="3" /><circle cx="46" cy="32" r="3" /></g></g>},
        %Q{<g fill="#{WHITE}"><circle cx="18" cy="32" r="8" /><circle cx="46" cy="32" r="8" /><g fill="#{BLACK}"><circle cx="21" cy="32" r="3" /><circle cx="49" cy="32" r="3" /></g></g>},
        %Q{<g fill="#{WHITE}"><circle cx="18" cy="32" r="8" /><circle cx="46" cy="32" r="8" /><g fill="#{BLACK}"><rect x="16" y="26" width="4" height="12" rx="2" ry="2" /><rect x="44" y="26" width="4" height="12" rx="2" ry="2" /></g></g>},
        %Q{<g fill="#{WHITE}"><path d="M10 26 a2 2 0 0 1 2 -2 h6 a8 8 0 0 1 8 8 v6 a2 2 0 0 1 -2 2 h-6 a8 8 0 0 1 -8 -8 v-6 M38 32 a8 8 0 0 1 8 -8 h6 a2 2 0 0 1 2 2 v6 a8 8 0 0 1 -8 8 h-6 a2 2 0 0 1 -2 -2 v-6" /><g fill="#{BLACK}"><rect x="16" y="26" width="4" height="12" rx="2" ry="2" /><rect x="44" y="26" width="4" height="12" rx="2" ry="2" /></g></g>},
        %Q{<g fill="#{BLACK}"><g transform="rotate(45 18 32)"><rect x="16" y="26" width="4" height="12" rx="2" ry="2" /><rect x="12" y="30" width="12" height="4" rx="2" ry="2" /></g><g transform="rotate(45 46 32)"><rect x="44" y="26" width="4" height="12" rx="2" ry="2" /><rect x="40" y="30" width="12" height="4" rx="2" ry="2" /></g></g>},
        %Q{<path d="M10 32 a8 8 0 0 1 16 0 a2 2 0 0 1 -4 0 a4 4 0 0 0 -8 0 a2 2 0 0 1 -4 0 M38 32 a8 8 0 0 1 16 0 a2 2 0 0 1 -4 0 a4 4 0 0 0 -8 0 a2 2 0 0 1 -4 0" fill="#{BLACK}" />},
        %Q{<path d="M10 32 a8 8 0 0 0 16 0 a2 2 0 0 0 -4 0 a4 4 0 0 1 -8 0 a2 2 0 0 0 -4 0 M38 32 a8 8 0 0 0 16 0 a2 2 0 0 0 -4 0 a4 4 0 0 1 -8 0 a2 2 0 0 0 -4 0" fill="#{BLACK}" />},
        %Q{<g fill="#{BLACK}"><circle cx="18" cy="32" r="10" /><circle cx="46" cy="32" r="10" /><g fill="#{WHITE}"><circle cx="18" cy="27" r="3" /><circle cx="12" cy="30" r="2" /><circle cx="46" cy="27" r="3" /><circle cx="40" cy="30" r="2" /></g></g>}
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
