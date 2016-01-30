class AddAttachmentThumbnailToSurfCourses < ActiveRecord::Migration
  def self.up
    change_table :surf_courses do |t|
      t.attachment :thumbnail
    end
  end

  def self.down
    remove_attachment :surf_courses, :thumbnail
  end
end
