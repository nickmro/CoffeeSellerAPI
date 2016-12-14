require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  test "A Product must have a SKU" do
    product = Product.create
    product.save
    assert product.errors.keys.include?(:sku)
  end

  test "A Product must have a description" do
    product = Product.create
    product.save
    assert product.errors.keys.include?(:description)
  end
  
  test "A Product must have a Product Type" do
    product = Product.create
    product.save
    assert product.errors.keys.include?(:product_type)
  end

end
