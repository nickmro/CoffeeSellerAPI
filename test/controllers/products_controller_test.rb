require 'test_helper'

class Api::V1::ProductsControllerTest < ActionController::TestCase

  def setup
    super
    @espresso_machine_base_model = FactoryGirl.create(:espresso_machine_base_model)
    @large_coffee_machine_premium_model = FactoryGirl.create(:large_coffee_machine_premium_model)
  end

  test "GET #index should be successful" do
    get :index
    assert_template nil
    assert_response :success, format: :json
  end

  test "GET #index should return all Products" do
    get :index
    products_response = JSON.parse(response.body, symbolize_names: true)
    product_skus = products_response.map { |product| product[:sku] }
    assert product_skus.include?(@espresso_machine_base_model.sku)
    assert product_skus.include?(@large_coffee_machine_premium_model.sku)
  end

  test "GET #index WHEN Product Type is provided should only show Products of that type" do
    get :index, product_type_slug: @espresso_machine_base_model.type
    products_response = JSON.parse(response.body, symbolize_names: true)
    product_skus = products_response.map{ |product| product[:sku] }
    assert product_skus.include?(@espresso_machine_base_model.sku)
    assert_not product_skus.include?(@large_coffee_machine_premium_model.sku)
  end
  
  test "GET #show should be successful" do
    get :show, sku: @espresso_machine_base_model.sku
    assert_template nil
    assert_response :success, format: :json
  end

  test "GET #show should display the Product" do
    get :show, sku: @espresso_machine_base_model.sku
    product_response = JSON.parse(response.body, symbolize_names: true)
    assert_equal @espresso_machine_base_model.sku, product_response[:sku]
  end

  test "GET #show should include related items in its response" do
    get :show, sku: @espresso_machine_base_model.sku
    product_response = JSON.parse(response.body, symbolize_names: true)
    assert product_response.keys.include?(:related_items)
  end

end
