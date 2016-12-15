class Api::V1::CoffeePodsController < ApplicationController
  respond_to :json

  def index
    @coffee_pods = coffee_pods params: params
    render json: @coffee_pods.to_json
  end

  private

  def coffee_pods(args)
    params = args[:params]

    if nil == params[:flavor_slug] && nil == params[:product_type_slug]
      return CoffeePod.all
    end

    coffee_pods_array = []

    if params[:flavor_slug]
      flavor = Flavor.find(params[:flavor_slug])
      coffee_pods_array = smallest_per_product_type flavor.coffee_pods
    end

    if params[:product_type_slug]
      type = ProductType.find(params[:product_type_slug])
      coffee_pods_array ||= CoffeePod.all
      coffee_pods_array = coffee_pods_array.select { |pod| pod.type == type }
      coffee_pods_array = smallest_per_product_type coffee_pods_array
    end

    coffee_pods_array
  end

  def smallest_per_product_type(pods)
    pods_hash = {}

    # Pull the lowest quantity pack for each represented product type
    pods.each do |pod|
      type = pod.type 
      if nil == pods_hash[type]
        pods_hash[type] = pod
        next
      elsif pods_hash[type].pack_size.quantity > pod.pack_size.quantity
        pods_hash[flavor] = pod
      end
    end

    pods_hash.values
  end

end
