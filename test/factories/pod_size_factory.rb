FactoryGirl.define do
  factory :pod_size_small, class: PodSize do
    name 'Small'
  end

  factory :pod_size_large, class: PodSize do
    name 'Large'
  end

  factory :pod_size_espresso, class: PodSize do
    name 'Espresso'
  end
end
