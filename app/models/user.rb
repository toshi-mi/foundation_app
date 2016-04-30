class User < ActiveRecord::Base
  has_many :posts
  has_many :likes, dependent: :destroy
  has_many :liking_posts, through: :likes, source: :post
end
