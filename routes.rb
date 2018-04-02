# mapping url to the specific action in the 'post' controller to act something  
Rails.application.routes.draw do
  get '/' => 'post#main'
  get '/create_new_post' => 'post#create_new_post'
  post '/save_new_post' => 'post#save_new_post'
  get '/list' => 'post#list'
  get '/main' => 'post#main'
  get '/show_infos' => 'post#show_infos' 
  
  get 'tags/:tag', to:'post#show_infos', as: :tag
  resources :posts
  
  get 'modify_post_view/:post_id' => "post#modify_post_view"
  get 'save_change/:post_id' => "post#save_change"
  get 'delete_post/:post_id' => "post#delete_post"
end
