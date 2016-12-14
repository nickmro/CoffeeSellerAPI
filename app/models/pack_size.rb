class PackSize
  include Mongoid::Document

  ## Attributes
  field :name, type: String
  field :quantity, type: Integer

  ## Validations
  validates :name, presence: true
  validates :quantity, presence: true

end
