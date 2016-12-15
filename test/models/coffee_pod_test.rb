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

  test "A Coffee Pod must have a Pod Size" do
    coffee_pod = CoffeePod.new
    coffee_pod.save
    assert coffee_pod.errors.keys.include?(:pod_size)
  end

  test "A Coffee Pod must have a list of compatible Coffee Machines matching its Pod Size" do
    coffee_pod = FactoryGirl.create(:small_coffee_pod_1_dozen_vanilla)
    small_coffee_machine = FactoryGirl.create(:small_coffee_machine_deluxe_model)
    large_coffee_machine = FactoryGirl.create(:large_coffee_machine_premium_model)
    espresso_machine = FactoryGirl.create(:espresso_machine_base_model)

    # Give coffee pod a matching pod size to small machine
    matching_pod_size = FactoryGirl.create(:pod_size_small)
    coffee_pod.update(pod_size: matching_pod_size)
    small_coffee_machine.update(pod_size: matching_pod_size)

    assert coffee_pod.related_items.keys.include?(:coffee_machines)
    assert coffee_pod.related_items[:coffee_machines].include?(small_coffee_machine)

    assert_not coffee_pod.related_items[:coffee_machines].include?(large_coffee_machine)
    assert_not coffee_pod.related_items[:coffee_machines].include?(espresso_machine)
  end

end
