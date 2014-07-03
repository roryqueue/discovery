class CreateSpacescapes < ActiveRecord::Migration
  def change
    create_table :spacescapes do |t|
      t.string :title, null: false
      t.string :description
      t.string :picture, null: false
      t.timestamps
    end
  end
end
