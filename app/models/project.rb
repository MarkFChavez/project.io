class Project < ActiveRecord::Base
  attr_accessible :title

  scope :latest, order('created_at DESC').limit(5)
end
