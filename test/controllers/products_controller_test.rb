require 'test_helper'

class Api::V1::ProductsControllerTest < ActionController::TestCase

  def setup
    super
    @product = FactoryGirl.create(:espresso_machine_base_model)
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
