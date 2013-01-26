require "base64"
require "cgi"

module Bumpspark
  
  module Formats
    
    module DataURI
    
      # Generate a Data URI
      # @see http://en.wikipedia.org/wiki/Data_URI_scheme
      #
      # @return [String]
      #
      def to_data_uri
        data = Base64.encode64(to_png).delete("\n")
        "data:image/png;base64,#{CGI.escape(data)}"
      end
    
    end
    
  end
  
end
