class RenameOrderInSurfCourses < ActiveRecord::Migration
  def change
    rename_column :surf_courses, :order, :position
  end
end
