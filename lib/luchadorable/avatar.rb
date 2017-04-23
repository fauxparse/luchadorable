module Luchadorable
  class Avatar
    attr_reader :hash

    def initialize(hash = 0)
      @hash = hash
    end

    def features
      @features ||= generate_features
    end

    def draw(size = 64)
      open_svg(size) + draw_features + close_svg
    end

    private

    def generate_features
      Features.features.inject([hash, []]) do |(value, features), klass|
        div, mod = value.divmod(klass.count)
        [div + mod, features + [klass.new(mod)]]
      end.last
    end

    def draw_features(feature_list = features[0..-1])
      return '' if feature_list.empty?
      feature_list.shift.draw do
        draw_features(feature_list)
      end
    end

    def open_svg(size)
      <<-EOS.split.map(&:strip).join(' ')
        <svg
          xmlns="http://www.w3.org/2000/svg"
          width="#{size}"
          height="#{size}"
          viewBox="0 0 64 64">
      EOS
    end

    def close_svg
      %Q{</svg>}
    end
  end
end
