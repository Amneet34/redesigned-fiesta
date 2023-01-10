class VendorSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :vendor_sweets, through: :sweets
  
end
