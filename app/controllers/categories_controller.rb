class CategoriesController < ApplicationController
	def index
		@categories = Category.order(name: :asc)
	end

	def show
		@categories = Category.order(name: :asc)
    	@category = Category.find(params[:id])
    	@products = Product.where(:category_id => params[:id]).order(name: (params[:sort])? (params[:sort]) : (:asc)).paginate(page: params[:page], per_page: 5)
	end

end
