class Comment < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  belongs_to :post
  has_many :comment_votes
  # Remember to create a migration!
end
