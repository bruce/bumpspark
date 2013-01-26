module Bumpspark  
  VERSION = '2.0.0'
end

require "bumpspark/graph"
require "bumpspark/railtie" if defined?(Rails)
