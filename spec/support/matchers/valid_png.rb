require "chunky_png"

RSpec::Matchers.define :be_a_valid_png do |expected|
  match do |actual|
    datastream = ChunkyPNG::Datastream.from_blob(actual)
    image = ChunkyPNG::Image.from_datastream(datastream)
    image.height > 0 && image.width > 0
  end
end
