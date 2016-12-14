class CoffeeMachineProductType < ProductType
  include Mongoid::Document

  ## Relations
  has_one :coffee_pod_product_type, inverse_of: :coffee_machine_product_type
  
end
