require 'test_helper'
require 'rmagick'

class BumpsparkTest < Test::Unit::TestCase
  
  context "generating pngs" do
    
    should "work for an empty bumpspark" do
      assert_valid_png []
    end
    
    should "work for a bumpspark with one datapoint" do
      assert_valid_png [1]      
    end
    
    should "work for a bumpspark with multiple datapoints" do
      assert_valid_png [1, 2, 3]
    end
    
  end
  
  def assert_valid_png(data)
    image = Magick::Image.from_blob(generate(data)).first
    assert image, "No valid image generated"
    assert_equal "image/png", image.mime_type, "Image has wrong mime type"
  end
  
  def generate(data, format=:png)
    Bumpspark::Graph.new(data).send("to_#{format}")
  end

end
