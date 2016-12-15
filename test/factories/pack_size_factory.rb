FactoryGirl.define do
  factory :pack_size_1_dozen, class: PackSize do
    name     '1 dozen'
    quantity 12
  end

  factory :pack_size_3_dozen, class: PackSize do
    name     '3 dozen'
    quantity 36
  end

  factory :pack_size_5_dozen, class: PackSize do
    name     '5 dozen'
    quantity 60
  end
end
