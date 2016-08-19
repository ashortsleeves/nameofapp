class StaticPagesController < ApplicationController
	def index
  		@products = Product.limit(4)
	end

	def landing_page
  		@products = Product.limit(4)
	end

end

