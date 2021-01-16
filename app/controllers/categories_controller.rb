class CategoriesController < ApplicationController
	def index
		@categories = Category.order(name: :asc)
	end

	def show
		@categories = Category.order(name: :asc)
    	@category = Category.find(params[:id])
    	@products = Product.where(:category_id => params[:id])
	    	.order(name: (params[:sort])? (params[:sort]) : (:asc))
	    	.paginate(page: params[:page])
	    @totalProducts = @products.count
	    @rangeHigh = Product.per_page * (params[:page]? params[:page].to_i : 1)
	    @rangeLow = @rangeHigh - 4
	    @rangeHigh = @rangeHigh > @totalProducts ? @totalProducts : @rangeHigh
	end

end
