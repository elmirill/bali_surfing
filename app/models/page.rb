class Page < ActiveRecord::Base
  validates :permalink, uniqueness: true
  
  def to_param
    permalink
  end
  
end
