class Patient < User
  belongs_to :physician
  has_many :image_sets
end
