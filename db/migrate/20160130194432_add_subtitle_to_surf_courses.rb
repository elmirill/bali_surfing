class AddSubtitleToSurfCourses < ActiveRecord::Migration
  def change
    add_column :surf_courses, :subtitle, :string
  end
end
