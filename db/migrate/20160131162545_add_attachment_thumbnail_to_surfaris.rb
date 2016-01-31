class AddAttachmentThumbnailToSurfaris < ActiveRecord::Migration
  def self.up
    change_table :surfaris do |t|
      t.attachment :thumbnail
    end
  end

  def self.down
    remove_attachment :surfaris, :thumbnail
  end
end
