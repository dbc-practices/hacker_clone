class CreateVotes < ActiveRecord::Migration
  def change
    create_table :post_votes do |t|
      t.integer :post_id
      t.integer :voter_id
    end

    create_table :comment_votes do |t|
      t.integer :comment_id
      t.integer :voter_id
    end
  end
end
