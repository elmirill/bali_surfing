class Accommodation < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  
  has_attached_file :thumbnail,
						styles: {
							thumb: {
								geometry: "800x530#",
								quality: "60",
								format: "JPG"
              }
            },
						preserve_files: true
	
	validates_attachment :thumbnail, 
						content_type: { content_type: ["image/jpeg", "image/png", "image/gif"] },
              size: { in: 0..1.megabytes }
  
end