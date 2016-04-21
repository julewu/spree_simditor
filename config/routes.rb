Spree::Core::Engine.routes.draw do
  namespace :admin do
    resource :pictures, only: [:create]
  end
end
