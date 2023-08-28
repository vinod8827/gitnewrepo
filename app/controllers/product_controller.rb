class ProductController < ApplicationController
   def show
     page = params[:page] || 1 
     page_limit = params[:page_limit] || 10

     product = Product.page(page).per(page_limit)
     render json: {product: product, session_data: session}, status: :ok and return
   end
end