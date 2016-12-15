class Flavor
  include Mongoid::Document
  include Mongoid::Slug

  ## Attributes
  field :name, type: String

  ## Relations
  has_many :coffee_pods, inverse_of: :flavor

  ## Slug
  slug :name

  ## Validations
  validates :name, presence: true
end
