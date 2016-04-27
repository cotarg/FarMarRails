class ProductsController < ApplicationController

	def index
	end

	def new
	end

	def create
	end

	def destroy
	end

  def product_create_params
    params.permit(product: [:name, ]) # these need to be finished with which params need to be let through
  end

  def product_update_params
    params.permit(product: [:name, ]) # these need to be finished with which params need to be let through
  end

end
