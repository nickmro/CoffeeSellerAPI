Rails.application.routes.draw do
  
  # API
  namespace :api do
    scope module: :v1,
          constraints: ApiConstraints.new(version: 1, default: true) do

      resources :products, :only => [:show], param: :sku
    end
  end

end
