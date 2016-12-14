FactoryGirl.define do
  factory :espresso_machine_product_type, class: ProductType do
    name 'Espresso Machine'
  end

  factory :large_machine_product_type, class: ProductType do
    name 'Coffee Machine Large'
  end
end
