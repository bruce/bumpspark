require 'base64'

module BumpsparkHelper
  
  # Generate a "bumpspark"-style sparkline image tag
  #
  # call-seq:
  #   <%= bumpspark_tag([20, 23, 12, 23]) %>
  def bumpspark_tag(numbers, html_opts={})
    graph = Bumpspark::Graph.new(numbers)
    tag(:img, html_opts.merge(:src => bumpspark_tag_src(graph)))
  end
  
  def bumpspark_tag_src(graph) #:nodoc:
    data = Base64.encode64(graph.to_png).delete("\n")
    return "data:image/png;base64,#{CGI.escape(data)}" 
  end
  
end