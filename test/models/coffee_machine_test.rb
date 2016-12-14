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

end
