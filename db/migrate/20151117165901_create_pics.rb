class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|   # pic is db/Model, picture is asset/resource
      t.text :caption
      t.integer :place_id

      t.string :picture
      
      t.timestamps
    end
  end
end
