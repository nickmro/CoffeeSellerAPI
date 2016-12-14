require 'test_helper'

class CoffeePodTest < ActiveSupport::TestCase
  
  test "A Coffee Pod should have a coffee flavor" do
    coffee_pod = CoffeePod.new
    coffee_pod.save
    assert coffee_pod.errors.keys.include?(:flavor)
  end

  test "A Coffee Pod should have a pack size" do
    coffee_pod = CoffeePod.new
    coffee_pod.save
    assert coffee_pod.errors.keys.include?(:pack_size)
  end

end
