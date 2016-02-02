class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :caption
      t.string :alt
      t.integer :position
      t.references :gallery, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
