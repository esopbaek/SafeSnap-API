class ImageSet < ActiveRecord::Base
  has_many :images
  belongs_to :patient
end
