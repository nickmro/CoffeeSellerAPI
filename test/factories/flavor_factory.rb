FactoryGirl.define do
  factory :vanilla, class: Flavor do
    name 'vanilla'
  end

  factory :hazelnut, class: Flavor do
    name 'hazelnut'
  end

  factory :caramel, class: Flavor do
    name 'caramel'
  end
end
