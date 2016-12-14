require 'test_helper'

class CoffeePodProductTypeTest < ActiveSupport::TestCase
  
  test "A Coffee Pod Product Type must belong to a Coffee Machine Product Type" do
    coffee_pod_product_type = CoffeePodProductType.new
    coffee_pod_product_type.save
    assert coffee_pod_product_type.errors.keys.include?(:coffee_machine_product_type)
  end

end
