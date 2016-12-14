class CoffeeMachine < Product
  include Mongoid::Document

  ## Attributes
  field :water_line_compatible, type: Boolean

  ## Relations
  has_many :coffee_pods, inverse_of: :coffee_machine
  belongs_to :pod_size

  ## Validations
  validates :water_line_compatible, presence: true
  validates :type, presence: true
  validates :pod_size, presence: true

end
