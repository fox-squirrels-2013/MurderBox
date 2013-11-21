class Createcommentstable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :post
      t.text :body
      t.string :author
      t.integer :votes
    end
  end
end
