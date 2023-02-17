# frozen_string_literal: true

class ProductsController < ApplicationController
  def show
    @product = Product.find_by(slug: params[:slug])
    @other_products = Product.where.not(id: @product.id).limit(4).order("RANDOM()")
  end

  def index
    @pagy, @products = pagy(Product.order(created_at: :desc))
  end
end
