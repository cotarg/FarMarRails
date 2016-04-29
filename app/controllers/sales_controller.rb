class SalesController < ApplicationController


	def index
		@vendor = Vendor.all
    render :list_all
	end

	def new

	end

	def show
    @vendor = Vendor.find(params[:id])
    render :list_all
  end

	def create
	end

  def sales_create_params
    params.permit(sale: [:name, ]) # these need to be finished with which params need to be let through
  end

  def sales_update_params
    params.permit(sale: [:name, ]) # these need to be finished with which params need to be let through
  end

end
