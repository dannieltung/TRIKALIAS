class PriceList < ApplicationRecord
  belongs_to :manufacturer
  has_many :skus
  accepts_nested_attributes_for :skus

end
