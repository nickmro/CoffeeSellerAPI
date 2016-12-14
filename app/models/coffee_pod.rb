class CoffeePod
  include Mongoid::Document

  ## Associations
  has_one :flavor
  has_one :pack_size

  ## Validations
  validates :flavor, presence: true
  validates :pack_size, presence: true

end
