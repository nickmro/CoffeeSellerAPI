class Api::V1::ProductsController < ApplicationController
  respond_to :json

  def index
    @products = filter_products(Product.all, params)
    render json: @products.to_json
  end

  def show
    @product = Product.find_by(sku: params[:sku])
    render json: @product.to_product_json
  end

  private

  def filter_products(products, params)
    if params[:product_type_slug]
      product_type = ProductType.find(params[:product_type_slug])
      return product_type.products
    else
      return Product.all
    end
  end

end
