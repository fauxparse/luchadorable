module Luchadorable
  module Features
    WHITE = Color.new('gray', 0).hex
    BLACK = Color.new('gray', 9).hex

    def self.register(feature)
      features << feature
    end

    def self.features
      @features ||= []
    end
  end
end
