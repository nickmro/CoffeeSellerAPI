class Product
  include Mongoid::Document

  ## Attributes
  field :sku, type: String
  field :description, type: String

  ## Validations
  validates :sku, presence: true
  validates :description, presence: true
  validates :sku, uniqueness: true

end
