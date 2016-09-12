class PatientSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :profile_photo_url

  has_many :image_sets
end
