module Bumpspark
  
  module Scale
          
    def scaled_numbers
      nums = numbers.empty? ? [0] : numbers
      min, max = nums.min, nums.max
      width = max - min
      return [1] * nums.size if width == 0
      width = width * @scale
      nums.map do |result|
        ((result - min) * 100 / width.to_f).to_i
      end
    end
    
  end
  
end