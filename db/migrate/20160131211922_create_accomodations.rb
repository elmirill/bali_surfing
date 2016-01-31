class CreateAccomodations < ActiveRecord::Migration
  def change
    create_table :accomodations do |t|
      t.string :title
      t.string :subtitle
      t.text :content
      t.string :price_1
      t.string :price_2
      t.string :price_3
      t.integer :position

      t.timestamps null: false
    end
  end
end
