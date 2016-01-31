class AddAttachmentThumbnailToAccomodations < ActiveRecord::Migration
  def self.up
    change_table :accomodations do |t|
      t.attachment :thumbnail
    end
  end

  def self.down
    remove_attachment :accomodations, :thumbnail
  end
end
