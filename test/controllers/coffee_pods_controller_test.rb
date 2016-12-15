require 'test_helper'

class Api::V1::CoffeePodsControllerTest < ActionController::TestCase

  def setup
    super
    @small_coffee_pod_3_dozen_vanilla = FactoryGirl.create(:small_coffee_pod_3_dozen_vanilla)
    @large_coffee_pod_3_dozen_hazelnut = FactoryGirl.create(:large_coffee_pod_3_dozen_hazelnut)
    @espresso_pod_5_dozen_caramel = FactoryGirl.create(:espresso_pod_5_dozen_caramel)
  end
  
  test "GET #index should be successful WHEN flavor is specified" do
    get :index, flavor_slug: @small_coffee_pod_3_dozen_vanilla.flavor
    assert_template nil
    assert_response :success, format: :json
  end

  test "GET #index WHEN Flavor is provided should only show Coffee Pods of that flavor" do
    get :index, flavor_slug: @small_coffee_pod_3_dozen_vanilla.flavor
    coffee_pods_response = JSON.parse(response.body, symbolize_names: true)
    response_skus = coffee_pods_response.map{ |pod| pod[:sku] }
    assert response_skus.include?(@small_coffee_pod_3_dozen_vanilla.sku)
    assert_not response_skus.include?(@large_coffee_pod_3_dozen_hazelnut.sku)
    assert_not response_skus.include?(@espresso_pod_5_dozen_caramel.sku)
  end
end
