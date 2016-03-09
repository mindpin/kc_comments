module KcComments
  class Comment
    include Mongoid::Document
    include Mongoid::Timestamps

    field :content, type: String

    belongs_to :user
    belongs_to :host, polymorphic: true

    module HostableMethods
      extend ActiveSupport::Concern
      included do
        has_many :comments, :as => :host,  :class_name => "KcComments::Comment"
      end
    end
  end
end
