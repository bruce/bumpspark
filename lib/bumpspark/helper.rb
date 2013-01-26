require 'base64'
require 'cgi'

module Bumpspark
  module Helper
    
    # Generate a bumpspark-style sparkline image tag
    #
    # @return [String]
    #
    def bumpspark_tag(numbers, html_opts={})
      graph = Bumpspark::Graph.new(numbers)
      tag(:img, html_opts.merge(src: graph.to_data_uri))
    end
    
  end
end
