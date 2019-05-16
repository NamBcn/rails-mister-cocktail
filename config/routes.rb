Rails.application.routes.draw do
  get 'cocktails/index'
  get 'cocktails/new'
  get 'cocktails/create'
  get 'cocktails/show'
  resources :cocktails, only: [:index, :show, :new, :create]
   # do
   #    resources :ingredients, only: [:show] do
   #     resources :doses, only: [:new, :create, :delete]
   #   end
   # end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# A user can see the list of cocktails
# GET "cocktails" #index

# A user can see the details of a given cocktail
# with the dose needed for each ingredient

# GET "cocktails/42" #show
# A user can create a new cocktail #new
# GET "cocktails/new"
# POST "cocktails" #create

# GET "cocktails/42/doses/new" #new
# POST "cocktails/42/doses" #create

# A user can delete a dose that belongs to an existing cocktail.
# How can we make a delete link again?
# DELETE "doses/25" #delete
