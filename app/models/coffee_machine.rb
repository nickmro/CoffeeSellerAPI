class CoffeeMachine < Product
  include Mongoid::Document

  ## Attributes
  field :water_line_compatible, type: Boolean

  ## Validations
  validates :water_line_compatible, presence: true

end
