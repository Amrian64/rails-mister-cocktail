Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails, only: [ :index, :show, :new, :create] do
    resources :doses, only: [:new, :create, :destroy], shallow: true
  end

end


# CocktailsController
#   routing
#     routes to #index (FAILED - 16)
#     routes to #new (FAILED - 17)
#     routes to #show (FAILED - 18)
#     routes to #create (FAILED - 19)

# DosesController
#   routing
#     routes to #new (FAILED - 20)
#     routes to #create (FAILED - 21)
#     routes to #destroy (FAILED - 22)

