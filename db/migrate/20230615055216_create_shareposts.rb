class CreateShareposts < ActiveRecord::Migration[5.2]
  def change
    create_table :shareposts do |t|
      t.string :post
      t.string :post_title
      t.integer :user_id

      t.timestamps
    end
  end
end
