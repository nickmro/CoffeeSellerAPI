FactoryGirl.define do
  factory :espresso_machine_product_type, class: CoffeeMachineProductType do
    name 'Espresso Machine'
  end

  factory :large_machine_product_type, class: CoffeeMachineProductType do
    name 'Coffee Machine Large'
  end
end