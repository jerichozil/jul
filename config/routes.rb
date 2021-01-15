Rails.application.routes.draw do
	root "categories#index"

	get "/categories/:id/:sort", to: "categories#show"

	resources :categories do
    	resources :products
  	end
end



#               Prefix Verb   URI Pattern                                              Controller#Action
#                 root GET    /                                                        categories#index
#    category_products GET    /categories/:category_id/products(.:format)              products#index
#                      POST   /categories/:category_id/products(.:format)              products#create
# new_category_product GET    /categories/:category_id/products/new(.:format)          products#new
# edit_category_product GET    /categories/:category_id/products/:id/edit(.:format)    products#edit
#     category_product GET    /categories/:category_id/products/:id(.:format)          products#show
#                      PATCH  /categories/:category_id/products/:id(.:format)          products#update
#                      PUT    /categories/:category_id/products/:id(.:format)          products#update
#                      DELETE /categories/:category_id/products/:id(.:format)          products#destroy
#           categories GET    /categories(.:format)                                    categories#index
#                      POST   /categories(.:format)                                    categories#create
#         new_category GET    /categories/new(.:format)                                categories#new
#        edit_category GET    /categories/:id/edit(.:format)                           categories#edit
#             category GET    /categories/:id(.:format)                                categories#show
#                      PATCH  /categories/:id(.:format)                                categories#update
#                      PUT    /categories/:id(.:format)                                categories#update
#                      DELETE /categories/:id(.:format)                                categories#destroy
