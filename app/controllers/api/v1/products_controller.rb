class Api::V1::ProductsController < ApplicationController
  respond_to :json

  def show
    @product = Product.find_by(sku: params[:sku])
    render json: @product.to_json
  end

end
