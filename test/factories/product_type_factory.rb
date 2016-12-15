FactoryGirl.define do
  factory :espresso_machine_product_type, class: ProductType do
    name 'Espresso Machine'
  end

  factory :large_machine_product_type, class: ProductType do
    name 'Coffee Machine Large'
  end

  factory :small_machine_product_type, class: ProductType do
    name 'Coffee Machine Small'
  end

  factory :coffee_pod_small, class: ProductType do
    name 'Coffee Pod Small'
  end

  factory :coffee_pod_large, class: ProductType do
    name 'Coffee Pod Large'
  end

  factory :espresso_pod, class: ProductType do
    name 'Espresso Pod'
  end
end
