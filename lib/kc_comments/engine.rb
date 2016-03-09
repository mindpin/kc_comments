module KcComments
  class Engine < ::Rails::Engine
    isolate_namespace KcComments
    config.to_prepare do
      ApplicationController.helper ::ApplicationHelper

      Dir.glob(Rails.root + "app/decorators/kc_comments/**/*_decorator.rb").each do |c|
        require_dependency(c)
      end
    end
  end
end
