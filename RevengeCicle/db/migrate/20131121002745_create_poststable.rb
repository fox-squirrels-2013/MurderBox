class CreatePoststable < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :author
      t.string :revengemail

      t.timestamps

    end
  end
end
