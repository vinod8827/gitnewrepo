class ProductsController < ApplicationController
  def search
    result = Product.all
    render json: result
  end

  def search_via_active_record
    result = Product.where(status: 'active')
    render json: result
  end

  def search_via_inactive_record
    result = Product.where(status: 'inactive')
    render json: result
  end

  def personal_detail
    result = Product.where(id: params[:id])
    render json: result
  end
end
