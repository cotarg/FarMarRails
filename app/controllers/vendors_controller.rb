class VendorsController < ApplicationController
	belongs_to :market
	has_many :products
	has_many :sales
	

end
