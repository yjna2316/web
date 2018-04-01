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
  #end
end
