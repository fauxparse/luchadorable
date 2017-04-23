module Luchadorable
  module Features
    def self.register(feature)
      features << feature
    end

    def self.features
      @features ||= []
    end
  end
end
