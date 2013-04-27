class Avatar < ActiveRecord::Base
  belongs_to :user
  attr_accessible :photo_content_type, :photo_file_name, :photo_file_size, :photo_updated_at, :photo

  has_attached_file :photo

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 1.megabyte
  validates_attachment_content_type :photo, :content_type => ['image/jpeg','image/png','image/gif']

  def set_as_avatar
  	#set all to false, then specific avatar to true
  	a = Avatar.where(:active => true).first
  	a.active = false
  	a.save
  	
  	self.active = true
  end
end
