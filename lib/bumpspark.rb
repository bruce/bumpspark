require File.dirname(__FILE__) << "/bumpspark/formats/png"
require File.dirname(__FILE__) << "/bumpspark/formats/string"
require File.dirname(__FILE__) << "/bumpspark/scale"
require File.dirname(__FILE__) << "/bumpspark/graph"

module Bumpspark
  VERSION = File.read(File.dirname(__FILE__) << "/../VERSION").strip
end