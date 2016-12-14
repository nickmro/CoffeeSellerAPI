require 'test_helper'

class FlavorTest < ActiveSupport::TestCase
  
  test "A flavor must have a name" do
    flavor = Flavor.new
    flavor.save
    assert flavor.errors.keys.include?(:name)
  end

end
