class VehicleSerializer < ActiveModel::Serializer
  attributes :id, :make, :model, :registration_plate_number
  has_one :user
end
