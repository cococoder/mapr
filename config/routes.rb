Rails.application.routes.draw do
  get'/mark/add/:body_map/left/:left/top/:top', controller: :mark, action: :add
  resources :body_maps do
    member do
      get 'clear'
    end
  end
  resources :marks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "body_maps#index"
end
