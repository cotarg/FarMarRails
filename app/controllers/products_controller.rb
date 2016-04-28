class ProductsController < ApplicationController

	def index
		@products = Product.order(id: :asc)
		render :index
	end

	def show
    @vendor = Vendor.find(params[:id])
    render :detail_view
  end

	def new
	end

	def create
	end

	def destroy
   killed_record = Product.destroy(params[:id])
   if params[:id] = true 
     redirect_to products_show_path(killed_record.vendor_id)
   end 
	end

  def product_create_params
    params.permit(product: [:name, ]) # these need to be finished with which params need to be let through
  end

  def product_update_params
    params.permit(product: [:name, ]) # these need to be finished with which params need to be let through
  end

end
