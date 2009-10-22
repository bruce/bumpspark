module Bumpspark
  
  class Graph
    
    include Scale
    include Formats::PNG
    include Formats::String

    attr_reader :numbers, :scale
    def initialize(numbers, scale = 1)
      @numbers = numbers
      @scale = 1
    end
  
  end

end