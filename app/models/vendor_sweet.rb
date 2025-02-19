class VendorSweet < ApplicationRecord
    belongs_to :vendor, dependent: :destroy
    belongs_to :sweet, dependent: :destroy
    validates :price, presence: true
    validates :price, numericality: {greater_than_or_equal_to: 0}
end
