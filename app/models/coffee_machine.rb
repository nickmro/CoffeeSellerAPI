class CoffeeMachine < Product
  include Mongoid::Document

  ## Attributes
  field :water_line_compatible, type: Boolean

  ## Relations
  belongs_to :pod_size

  ## Validations
  validates :water_line_compatible, presence: true
  validates :type, presence: true
  validates :pod_size, presence: true

  ## Methods

  # Returns a hash with list of related items
  def related_items
    related_items = { :coffee_pods => related_coffee_pods }
    related_items
  end

  private

  # Returns a list of related coffee pods
  def related_coffee_pods
    pods_hash = {}

    # Pull the lowest quantity pack for each represented flavor
    matching_pods = pod_size.coffee_pods
    matching_pods.each do |pod|
      flavor = pod.flavor 
      if nil == pods_hash[flavor]
        pods_hash[flavor] = pod
        next
      elsif pods_hash[flavor].pack_size.quantity > pod.pack_size.quantity
        pods_hash[flavor] = pod
      end
    end

    pods_hash.values
  end

end
