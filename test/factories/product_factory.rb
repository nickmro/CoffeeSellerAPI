FactoryGirl.define do
  factory :espresso_machine_base_model, class: Product do
    description 'espresso machine, base model'
    sku         'EM001'
    after(:build) do |product|
      product.type = create(:espresso_machine_product_type)
    end
  end

  factory :large_coffee_machine_premium_model, class: Product do
    description 'large machine, premium model'
    sku         'CM102'
    after(:build) do |product|
      product.type = create(:large_machine_product_type)
    end
  end
end