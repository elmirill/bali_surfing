class AddAttachmentThumbnailToAccommodations < ActiveRecord::Migration
  def self.up
    change_table :accommodations do |t|
      t.attachment :thumbnail
    end
  end

  def self.down
    remove_attachment :accommodations, :thumbnail
  end
end
