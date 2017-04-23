require 'json'

module Luchadorable
  class Color
    attr_reader :color, :index

    def initialize(color, index = 6)
      @color = color
      @index = index
    end

    def hex
      @hex ||= self.class.hex(color, index)
    end

    def self.hues
      colors.keys - %w(black white gray)
    end

    def self.hex(color, index)
      indexed(colors[color], index)
    end

    def self.colors
      @colors ||=
        File.open(File.dirname(__FILE__) + '/../../open_color.json') do |f|
          JSON.parse(f.read)
        end
    end

    def self.indexed(hue, index)
      case hue
      when nil then nil
      when Array then hue[index]
      else hue
      end
    end
    private_class_method :indexed
  end
end
