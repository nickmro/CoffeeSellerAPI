class ProductType
  include Mongoid::Document
  include Mongoid::Slug

  ## Attributes
  field :name, type: String

  ## Slug
  slug :name

  ## Validations
  validates :name, presence: true

end
