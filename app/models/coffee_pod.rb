class CoffeePod < Product
  include Mongoid::Document

  ## Relations
  belongs_to :flavor, inverse_of: :coffee_pods
  belongs_to :pack_size
  belongs_to :pod_size

  ## Validations
  validates :flavor, presence: true
  validates :pack_size, presence: true
  validates :type, presence: true
  validates :pod_size, presence: true

  ## Methods

  # Returns a has with lists of related items
  def related_items
    related_items = { :coffee_machines => related_coffee_machines }
    related_items
  end

  private

  # Returns a list of related coffee machines
  def related_coffee_machines
    pod_size.coffee_machines
  end

end
