require 'thor'
require 'luchadorable'

module Luchadorable
  class CLI < Thor
    desc 'random', 'generate a random Luchadorable avatar'
    method_options :size => :integer
    def random
      puts Luchadorable::Avatar.new(rand(1_048_576)).draw(options[:size] || 64)
    end
  end
end
