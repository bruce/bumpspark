module Bumpspark
  
  module Formats
    
    module String
    
      # Generate a string
      def to_s
        scaled_numbers.join(', ')
      end
    
    end
    
  end
  
end