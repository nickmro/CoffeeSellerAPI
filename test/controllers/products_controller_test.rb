require 'test_helper'

class Api::V1::ProductsControllerTest < ActionController::TestCase

  def setup
    super
    @product = FactoryGirl.create(:espresso_machine_base_model)
  end

  test "GET #index should be successful" do
    get :index
    assert_template nil
    assert_response :success, format: :json
  end

  test "GET #index should return all Products" do
    get :index
    products_response = JSON.parse(response.body, symbolize_names: true)
    assert_equal Product.count, products_response.count
    assert products_response.map { |product| product[:sku] }.include?(@product.sku)
  end

  test "GET #index WHEN Product Type is provided should only show Products of that type" do
    get :index, product_type_slug: @product.type
    products_response = JSON.parse(response.body, symbolize_names: true)
    matching_products = Product.all.select { |product| product.product_type == product.type }
    assert_equal matching_products.count, products_response.count
  end
  
  test "GET #show should be successful" do
    get :show, sku: @product.sku
    assert_template nil
    assert_response :success, format: :json
  end

  test "GET #show should display the Product" do
    get :show, sku: @product.sku
    product_response = JSON.parse(response.body, symbolize_names: true)
    assert_equal @product.sku, product_response[:sku]
  end

end
