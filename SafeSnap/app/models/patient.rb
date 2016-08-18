class Patient < User
  has_many :categories
  belongs_to :physician
end
