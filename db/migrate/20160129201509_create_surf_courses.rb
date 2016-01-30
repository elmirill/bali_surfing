class CreateSurfCourses < ActiveRecord::Migration
  def change
    create_table :surf_courses do |t|
      t.string :title
      t.text :content
      t.string :price_1
      t.string :price_2
      t.string :price_3

      t.timestamps null: false
    end
  end
end
