class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string "title"
      t.string "content"
      t.string "tag_list"
      t.string "image"
      t.string "category"
      t.timestamps null: false
    end
  end
end
