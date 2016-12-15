require 'test_helper'

class CoffeeMachineTest < ActiveSupport::TestCase
  
  test "A Coffee Machine must have its water line compatibility indicated" do
    coffee_machine = CoffeeMachine.new
    coffee_machine.save
    assert coffee_machine.errors.keys.include?(:water_line_compatible)
  end

  test "A Coffee Machine must have a Coffee Machine Product Type" do
    coffee_machine = CoffeeMachine.new
    coffee_machine.save
    assert coffee_machine.errors.keys.include?(:type)
  end

  test "A Coffee Machine must have a Pod Size" do
    coffee_machine = CoffeeMachine.new
    coffee_machine.save
    assert coffee_machine.errors.keys.include?(:pod_size)
  end

  test "A Coffee Machine must have a list of compatible Coffee Pods matching its Pod Size" do
    coffee_machine = FactoryGirl.create(:small_coffee_machine_deluxe_model)
    small_pod = FactoryGirl.create(:small_coffee_pod_1_dozen_vanilla)
    large_pod = FactoryGirl.create(:large_coffee_pod_3_dozen_hazelnut)
    espresso_pod = FactoryGirl.create(:espresso_pod_5_dozen_caramel)

    # Give coffee machine a matching pod size to small pod
    matching_pod_size = FactoryGirl.create(:pod_size_small)
    coffee_machine.update(pod_size: matching_pod_size)
    small_pod.update(pod_size: matching_pod_size)

    assert coffee_machine.related_items.keys.include?(:coffee_pods)
    assert coffee_machine.related_items[:coffee_pods].include?(small_pod)

    assert_not coffee_machine.related_items[:coffee_pods].include?(large_pod)
    assert_not coffee_machine.related_items[:coffee_pods].include?(espresso_pod)
  end

  test "A Coffee Machine's related products must only include the lowest quantity pack for each flavor" do
    coffee_machine = FactoryGirl.create(:small_coffee_machine_deluxe_model)
    small_pod_1_dozen = FactoryGirl.create(:small_coffee_pod_1_dozen_vanilla)
    small_pod_3_dozen = FactoryGirl.create(:small_coffee_pod_3_dozen_vanilla)

    # Give coffee machine a matching pod size to small pods
    matching_pod_size = FactoryGirl.create(:pod_size_small)
    coffee_machine.update(pod_size: matching_pod_size)
    small_pod_1_dozen.update(pod_size: matching_pod_size)
    small_pod_3_dozen.update(pod_size: matching_pod_size)

    # Give pods matching flavors
    matching_flavor = FactoryGirl.create(:vanilla)
    small_pod_1_dozen.update(flavor: matching_flavor)
    small_pod_3_dozen.update(flavor: matching_flavor)

    assert coffee_machine.related_items[:coffee_pods].include?(small_pod_1_dozen)
    assert_not coffee_machine.related_items[:coffee_pods].include?(small_pod_3_dozen)
  end

end
