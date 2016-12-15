FactoryGirl.define do
  factory :espresso_machine_base_model, class: CoffeeMachine do
    description           'espresso machine, base model'
    sku                   'EM001'
    water_line_compatible false
    after(:build) do |product|
      product.type = create(:espresso_machine_product_type)
      product.pod_size = create(:pod_size_espresso)
    end
  end

  factory :large_coffee_machine_premium_model, class: CoffeeMachine do
    description           'large machine, premium model'
    sku                   'CM102'
    water_line_compatible false
    after(:build) do |product|
      product.type     = create(:large_machine_product_type)
      product.pod_size = create(:pod_size_large)
    end
  end

  factory :small_coffee_machine_deluxe_model, class: CoffeeMachine do
    description           'small maching, deluxe model, water line compatible'  
    sku                   'CM003'
    water_line_compatible true
    after(:build) do |product|
      product.type     = create(:small_machine_product_type)
      product.pod_size = create(:pod_size_small)
    end
  end

  factory :small_coffee_pod_1_dozen_vanilla, class: CoffeePod do
    description 'small coffee pod, 1 dozen, vanilla'
    sku         'CP001'
    after(:build) do |product|
      product.type      = create(:coffee_pod_small)
      product.pod_size  = create(:pod_size_small)
      product.flavor    = create(:vanilla)
      product.pack_size = create(:pack_size_1_dozen)
    end
  end

  factory :small_coffee_pod_3_dozen_vanilla, class: CoffeePod do
    description 'small coffee pod, 3 dozen, vanilla'
    sku         'CP003'
    after(:build) do |product|
      product.type      = create(:coffee_pod_small)
      product.pod_size  = create(:pod_size_small)
      product.flavor    = create(:vanilla)
      product.pack_size = create(:pack_size_3_dozen)
    end
  end

  factory :large_coffee_pod_3_dozen_hazelnut, class: CoffeePod do
    description 'large coffee pod, 3 dozen, hazelnut'
    sku         'CP143'
    after(:build) do |product|
      product.type      = create(:coffee_pod_large)
      product.pod_size  = create(:pod_size_large)
      product.flavor    = create(:hazelnut)
      product.pack_size = create(:pack_size_3_dozen)
    end
  end

  factory :espresso_pod_5_dozen_caramel, class: CoffeePod do
    description 'espresso pod, 5 dozen, caramel'
    sku         'EP015'
    after(:build) do |product|
      product.type      = create(:espresso_pod)
      product.pod_size  = create(:pod_size_espresso)
      product.flavor    = create(:caramel)
      product.pack_size = create(:pack_size_5_dozen)
    end
  end
end
