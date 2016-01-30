class AddOrderToSurfCourses < ActiveRecord::Migration
  def change
    add_column :surf_courses, :order, :integer
  end
end
