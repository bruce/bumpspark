require 'zlib'

module Bumpspark
  
  module Formats
    
    module PNG
      
      BLACK = [0,    0,    0]
      RED   = [0xFF, 0,    0]
      GREY  = [0x99, 0x99, 0x99]
      
      HEADER = [137, 80, 78, 71, 13, 10, 26, 10].pack("C*")
    
      # Generate a PNG
      def to_png
        generate_png
      end
  
      private
  
      def rows
        scaled_numbers.inject([]) { |ary, r|
          ary << [BLACK] * 15 << [BLACK] * 15
          ary.last[r / 9,4] = [(r > 50 and RED or GREY)] * 4
          ary
        }.transpose.reverse
      end

      def generate_png
        raw_data = rows.map { |row| [0] + row }.flatten.pack("C*")
        ihdr_data = [
          rows.first.length,rows.length,
          8,2,0,0,0
        ].pack("NNCCCCC")
        ihdr = chunk("IHDR", ihdr_data)
        trns = chunk("tRNS", ([ 0 ]*6).pack("C6"))
        idat = chunk("IDAT", Zlib::Deflate.deflate(raw_data))
        iend = chunk("IEND", "")
        HEADER + ihdr + trns + idat + iend
      end
  
      def chunk(type, data)
        to_check = type + data
        [data.length].pack("N") + to_check + [Zlib.crc32(to_check)].pack("N")
      end
      
    end
    
  end
  
end