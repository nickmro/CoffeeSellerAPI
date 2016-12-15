Rails.application.routes.draw do
  
  # API
  namespace :api do
    scope module: :v1,
          constraints: ApiConstraints.new(version: 1, default: true) do

      resources :products, :only => [:index, :show], param: :sku

      resources :product_types, :only => [], param: :slug do
        resources :products, :only => [:index]
      end

      resources :flavors, :only => [], param: :slug do
        resources :coffee_pods, :only => [:index]
      end
    end
  end

end
