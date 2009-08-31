module Bumpspark
  
  class Graph
    
    include Formats::PNG

    attr_reader :numbers
    def initialize(numbers)
      @numbers = numbers
    end
  
  end

end