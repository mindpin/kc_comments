module KcComments
  class Routing
    # KcComments::Routing.mount "/kc_comments", :as => 'kc_comments'
    def self.mount(prefix, options)
      KcComments.set_mount_prefix prefix

      Rails.application.routes.draw do
        mount KcComments::Engine => prefix, :as => options[:as]
      end
    end
  end
end
