class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.timestamps
    end

    create_table :posts do |t|
      t.string :title
      t.string :url
      t.integer :creator_id
      t.timestamps
    end

    create_table :comments do |t|
      t.text :content
      t.integer :author_id
      t.integer :post_id
      t.timestamps
    end
  end
end
