FactoryGirl.define do
  factory :espresso_machine_base_model, class: CoffeeMachine do
    description           'espresso machine, base model'
    sku                   'EM001'
    water_line_compatible false
    after(:build) do |product|
      product.type = create(:espresso_machine_product_type)
    end
  end

  factory :large_coffee_machine_premium_model, class: CoffeeMachine do
    description           'large machine, premium model'
    sku                   'CM102'
    water_line_compatible false
    after(:build) do |product|
      product.type = create(:large_machine_product_type)
    end
  end
end