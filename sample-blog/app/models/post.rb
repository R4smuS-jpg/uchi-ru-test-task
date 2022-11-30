class Post < ApplicationRecord
  scope :recent, -> { Post.order('created_at DESC') }
end
