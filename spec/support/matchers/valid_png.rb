RSpec::Matchers.define :be_a_valid_png do |expected|
  match do |actual|
    image = Magick::Image.from_blob(actual).first
    image && image.mime_type == 'image/png'
  end
end
