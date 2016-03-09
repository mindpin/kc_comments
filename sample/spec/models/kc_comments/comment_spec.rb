require 'rails_helper'

RSpec.describe KcComments::Comment, type: :model do
  describe "建模" do
    class Book
      include Mongoid::Document
      include Mongoid::Timestamps
      include KcComments::Comment::HostableMethods

      field :name, type: String
    end

    it{
      user = create(:user)
      book = Book.create(name: "test_1")

      comment = book.comments.create(:content => "xxx", :user => user)
      expect(comment.created_at).not_to eq(nil)
      expect(comment.host).to eq(book)
      expect(comment.user).to eq(user)
    }
  end
end
