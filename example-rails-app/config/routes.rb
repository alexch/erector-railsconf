ActionController::Routing::Routes.draw do |map|
  map.root :controller => "articles"
  map.resources :articles, :comments
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
