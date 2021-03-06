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

  test "A Product's SKU must be unique" do
    product_type = FactoryGirl.create(:large_machine_product_type)
    product = Product.create(description: 'product description', sku: 'sku', type: FactoryGirl.create(:espresso_machine_product_type))
    product.save
    product_2 = Product.create(description: 'product description', sku: 'sku', type: FactoryGirl.create(:espresso_machine_product_type))
    product_2.save
    assert product_2.errors.keys.include?(:sku)
  end

  test "A Product must have a Product Type" do
    product = Product.new
    product.save
    assert product.errors.keys.include?(:type)
  end

end
