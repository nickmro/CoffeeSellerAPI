class ProductType
  include Mongoid::Document
  include Mongoid::Slug

  ## Attributes
  field :name, type: String

  ## Relations
  has_many :products, inverse_of: :type

  ## Slug
  slug :name

  ## Validations
  validates :name, presence: true

end
