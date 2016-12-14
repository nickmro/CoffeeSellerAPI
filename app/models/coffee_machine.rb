class CoffeeMachine < Product
  include Mongoid::Document

  ## Attributes
  field :water_line_compatible, type: Boolean

  ## Relations
  has_many :coffee_pods, inverse_of: :coffee_machine
  belongs_to :type, class_name: "CoffeeMachineProductType"

  ## Validations
  validates :water_line_compatible, presence: true
  validates :type, presence: true

end
