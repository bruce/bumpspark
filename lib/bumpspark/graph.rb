require "bumpspark/scale"
require "bumpspark/formats/png"
require "bumpspark/formats/string"
require "bumpspark/formats/data_uri"

module Bumpspark
  
  class Graph
    
    include Scale
    include Formats::PNG
    include Formats::String
    include Formats::DataURI

    attr_reader :numbers, :scale
    def initialize(numbers, scale = 1)
      @numbers = numbers
      @scale = scale
    end
  
  end

end
