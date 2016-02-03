class Page < ActiveRecord::Base
  validates :name, presence: true
  validates :permalink, presence: true, uniqueness: true
  
  has_attached_file :image,
						styles: {
							main: {
								geometry: "1000x420#",
								quality: "60",
								format: "JPG"
              }
            },
						preserve_files: true
	
  validates_attachment :image, 
						content_type: { content_type: ["image/jpeg", "image/png", "image/gif"] },
              size: { in: 0..1.megabytes }
  
  def to_param
    permalink
  end
  
end
