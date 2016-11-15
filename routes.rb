# mapping url to the specific action in the 'home' controller to act something  
Rails.application.routes.draw do
  get '/' => 'home#main'
  get '/create_new_post' => 'home#create_new_post'
  post '/save_new_post' => 'home#save_new_post'
  get '/show_db' => 'home#show_db'
  get '/main' => 'home#main'
  get '/show_infos' => 'post#show_infos' 
  
  get 'tags/:tag', to:'post#show_infos', as: :tag
  resources :posts
  
  get 'change_post/:post_id' => "home#change_post"
  get 'save_change/:post_id' => "home#save_change"
  get 'delete_post/:post_id' => "home#delete_post"



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
