class User < ActiveRecord::Base
  has_many :posts, foreign_key: :creator_id
  has_many :comments, foreign_key: :author_id
  has_many :comment_votes, foreign_key: :voter_id
  has_many :post_votes, foreign_key: :voter_id
  validates :username, :presence => true
  # Remember to create a migration!
end
