module Bumpspark

  class Railtie < Rails::Railtie
    initializer "bumpspark.helper" do |app|
      require "bumpspark/helper"
      ActionView::Base.send(:include, Bumpspark::Helper)
    end
  end

end

puts "LOADED"
