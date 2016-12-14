class CoffeePod < Product
  include Mongoid::Document

  ## Relations
  belongs_to :flavor
  belongs_to :pack_size
  belongs_to :pod_size

  ## Validations
  validates :flavor, presence: true
  validates :pack_size, presence: true
  validates :type, presence: true
  validates :pod_size, presence: true

end
