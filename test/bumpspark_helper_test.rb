require 'test_helper'

require 'active_support'
require 'action_view'
require 'action_controller'

require 'bumpspark_helper'

BumpsparkHelper.send(:include, ActionView::Helpers::TagHelper)
BumpsparkHelper.send(:include, ActionView::Helpers::AssetTagHelper)

class BumpsparkHelperTest < Test::Unit::TestCase
  
  include BumpsparkHelper
  include ActionView::Helpers::AssetTagHelper
  
  should "generate an image" do
    tag = bumpspark_tag([1, 2, 3])
    assert tag.include?('<img'), tag
    assert tag.include?('src'), tag
  end
  
end
