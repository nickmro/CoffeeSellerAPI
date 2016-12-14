class Flavor
  include Mongoid::Document

  ## Attributes
  field :name, type: String

  ## Relations
  has_many :coffee_pods, inverse_of: :flavor

  ## Validations
  validates :name, presence: true
end
