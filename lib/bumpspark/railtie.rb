if defined?(Rails)

  module Bumpspark

    class Railtie < Rails::Railtie
      initializer "bumpspark.helper" do |app|
        ActionView::Base.send(:include, Bumpspark::Helper)
      end
    end

  end

end
