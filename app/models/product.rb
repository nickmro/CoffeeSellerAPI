class Product
  include Mongoid::Document

  ## Attributes
  field :sku, type: String
  field :description, type: String

  ## Relations
  belongs_to :product_type

  ## Validations
  validates :sku, presence: true
  validates :description, presence: true
  validates :product_type, presence: true

end