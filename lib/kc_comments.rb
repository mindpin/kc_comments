module KcComments
  class << self
    def kc_comments_config
      self.instance_variable_get(:@kc_comments_config) || {}
    end

    def set_mount_prefix(mount_prefix)
      config = KcComments.kc_comments_config
      config[:mount_prefix] = mount_prefix
      KcComments.instance_variable_set(:@kc_comments_config, config)
    end

    def get_mount_prefix
      kc_comments_config[:mount_prefix]
    end
  end
end

# 引用 rails engine
require 'kc_comments/engine'
require 'kc_comments/rails_routes'
