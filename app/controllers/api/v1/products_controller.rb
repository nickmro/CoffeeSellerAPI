class Api::V1::ProductsController < ApplicationController
  respond_to :json

  def show
    @product = Product.find_by(sku: params[:sku])
    render json: @product.to_json
  end

  def index
    @products = filter_products(Product.all, params)
    render json: @products.to_json
  end

  private

  def filter_products(products, params)
    if params[:product_type_slug]
      product_type = ProductType.find(params[:product_type_slug])
      products = products.select { |product| product.type == product_type }
    end
    products
  end

end
