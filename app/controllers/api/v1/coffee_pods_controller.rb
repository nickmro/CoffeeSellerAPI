class Api::V1::CoffeePodsController < ApplicationController
  respond_to :json

  def index
    @coffee_pods = coffee_pods params: params
    render json: @coffee_pods.to_json
  end

  private

  def coffee_pods(args)
    params = args[:params]
    if params[:flavor_slug]
      flavor = Flavor.find(params[:flavor_slug])
      return smallest_per_product_type flavor.coffee_pods
    else
      return CoffeePod.all
    end
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
