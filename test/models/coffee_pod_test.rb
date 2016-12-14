require 'test_helper'

class CoffeePodTest < ActiveSupport::TestCase
  
  test "A Coffee Pod must have a coffee flavor" do
    coffee_pod = CoffeePod.new
    coffee_pod.save
    assert coffee_pod.errors.keys.include?(:flavor)
  end

  test "A Coffee Pod must have a pack size" do
    coffee_pod = CoffeePod.new
    coffee_pod.save
    assert coffee_pod.errors.keys.include?(:pack_size)
  end

  test "A Coffee Pod must have a Coffee Pod Product Type" do
    coffee_pod = CoffeePod.new
    coffee_pod.save
    assert coffee_pod.errors.keys.include?(:type)
  end

end
