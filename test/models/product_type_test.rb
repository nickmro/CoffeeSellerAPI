require 'test_helper'

class ProductTypeTest < ActiveSupport::TestCase
  
  test "A Product Type must have a name" do
    product_type = ProductType.new
    product_type.save
    assert product_type.errors.keys.include?(:name)
  end

end
