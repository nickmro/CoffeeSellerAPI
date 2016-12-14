class PodSize
  include Mongoid::Document

  ## Attributes
  field :name, type: String

  ## Relations
  has_many :coffee_pods, inverse_of: :pod_size
  has_many :coffee_machines, inverse_of: :pod_size

  ## Validations
  validates :name, presence: true
end
