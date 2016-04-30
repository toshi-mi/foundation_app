class Post < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :like_users, through: :likes, source: :user
end
