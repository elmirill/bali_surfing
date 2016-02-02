class Picture < ActiveRecord::Base
  belongs_to :gallery
  
  has_attached_file :image,
						styles: {
							thumb: {
								geometry: "300x300#",
								quality: "60",
								format: "JPG"
								},
              sidebar_thumb: {
                geometry: "300x200#",
								quality: "60",
								format: "JPG"
                },
							original: {
								geometry: "1500x1500>",
								quality: "60",
								format: "JPG"
								}
							},
						preserve_files: true,
            default_url: 'image_placeholder.jpg'
	
	validates_attachment :image, 
						content_type: { content_type: ["image/jpeg", "image/png", "image/gif"] },
						size: { in: 0..1.megabytes }
  
end
