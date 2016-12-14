require 'test_helper'

class CoffeeMachineTest < ActiveSupport::TestCase
  
  test "A Coffee Machine should have its water line compatibility indicated" do
    coffee_machine = CoffeeMachine.new
    coffee_machine.save
    assert coffee_machine.errors.keys.include?(:water_line_compatible)
  end

end
