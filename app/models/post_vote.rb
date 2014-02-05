class PostVote < ActiveRecord::Base
  # Remember to create a migration!
  validates :post_id, :uniqueness => {scope: :voter_id}
  validates :post_id, :presence => true
  validates :voter_id, :presence => true
  belongs_to :post
  belongs_to :voter, class_name: "User"
end
