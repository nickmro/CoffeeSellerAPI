class Api::V1::CoffeePodsController < ApplicationController
  respond_to :json

  def index
    @coffee_pods = coffee_pods params: params
    render json: @coffee_pods.to_json
  end

  private

  def coffee_pods(args)
    if params[:flavor_slug]
      flavor = Flavor.find(params[:flavor_slug])
      return flavor.coffee_pods
    else
      return CoffeePod.all
    end
  end

end
