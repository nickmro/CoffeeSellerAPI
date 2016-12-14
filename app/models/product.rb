class Product
  include Mongoid::Document

  ## Attributes
  field :sku, type: String
  field :description, type: String

  ## Relations
  belongs_to :type, class_name: "ProductType"

  ## Validations
  validates :sku, presence: true, uniqueness: true
  validates :description, presence: true
  validates :type, presence: true

end
