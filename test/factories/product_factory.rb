FactoryGirl.define do
  factory :espresso_machine_base_model, class: Product do
    description 'espresso machine, base model'
    sku         'EM001'
    after(:build) do |product|
      product.product_type = create(:espresso_machine_product_type)
    end
  end
end