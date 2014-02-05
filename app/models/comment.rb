class Comment < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  belongs_to :post
  # Remember to create a migration!
end
