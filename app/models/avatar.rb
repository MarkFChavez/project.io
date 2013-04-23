class Avatar < ActiveRecord::Base
  belongs_to :user
  attr_accessible :photo_content_type, :photo_file_name, :photo_file_size, :photo_updated_at, :photo

  has_attached_file :photo

  validates :photo, :presence => true
end
