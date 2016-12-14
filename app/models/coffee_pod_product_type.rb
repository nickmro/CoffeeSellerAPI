class CoffeePodProductType < ProductType
  include Mongoid::Document

  ## Relations
  belongs_to :coffee_machine_product_type

  ## Validations
  validates :coffee_machine_product_type, presence: true

end
