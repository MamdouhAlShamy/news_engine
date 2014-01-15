News::Application.routes.draw do

  get "sessions/new"
  	get "users/new"
	root 'welcome#index'
	#resources :details
	get 'details/:id' => 'welcome#details'
	# 
	get 'parse' => 'welcome#parse'
	# get list of categories
	get 'category' => 'welcome#category'
	# get news from category <Id>
	get 'category/:id' => 'welcome#getNewsOfCategory'
	
	# ORDERED PROVIDERS
	# get news from category ordered w providers
	#resources :priority
	#get	'/orderedCategory/:priority' => 'welcome#getCategoryOrderedByProviders'
	get 'orderedCategory/:category_id' => 'welcome#getCategoryOrderedByProviders'
	#get ':welcome/:getCategoryOrderedByProviders/:id' => 'welcome#getCategoryOrderedByProviders'
	
	
	get 'provider' => 'welcome#getListOfProviders'
	
	get '/category/parseCategory/:id' => 'welcome#parseCategory'
	
	# register
	resources :users
	get 'register' => 'users#new'		# web registration
	post 'register' => 'users#createMobile'	# mobile registration

	#login/out
	resources :sessions, :only => [:new, :create, :destroy]
	get 'login' => 'sessions#new'
	get 'logout' => 'sessions#destroy'
	post 'login' => 'sessions#createMobile'
	
	# UpdateRate
	resources :category_id
	get 'categoryTest/user' => 'sessions#getUpdateToUserDateCategoryHeadlines'
	#get 'user/updateCategory/:category_id' => 'sessions#getUpdateToUserDateCategoryHeadlines' # commented due 2 last_update_time postgre Glitchs
	
	get 'user/updateCategory/:category_id' => 'welcome#getRecentStories'
	
	# mark as read
	# Session independent mark as read
	get 'readTest/:user_id' => 'welcome#setStoryRead'
	# session dep
	get 'readTestSession/:story_id' => 'sessions#setStoryRead'
	
	get '/listUsers' => 'users#getUsers'
	
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
