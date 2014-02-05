class CommentVote < ActiveRecord::Base
  validates :comment_id, :uniqueness => {scope: :voter_id}
  validates :comment_id, :presence => true
  validates :voter_id, :presence => true
  belongs_to :comment
  belongs_to :voter, class_name: "User"
  # Remember to create a migration!
end
