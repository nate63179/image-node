Node::Application.routes.draw do
  match 'images/:url' => "images#show", :as => :image, :via => :get
  match 'images/:filename' => "images#update", :as => :images, :via => :put
  match 'images/:filename' => "images#destroy", :as => :delete_image, :via => :delete
end
