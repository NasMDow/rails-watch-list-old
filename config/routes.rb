# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
# lists (of movies)
root to: 'lists#index'
resources :lists, except: [:edit, :update] do
  resources :bookmarks, only: [:new, :create]
end

#get 'lists', to: 'lists#index', as: :lists
#post 'lists', to: 'lists#create'
#get 'lists/new', to: 'lists#new', as: :new_list
#get 'lists/:id', to: 'lists#show', as: :list
#get 'list/:id', to: 'lists#destroy', as: :destroy_list

# bookmarks (list of comments for a movie)
#get 'bookmarks/new/lists/:id/movies/:id', to: 'bookmarks#new', as: :new_bookmark
#post 'bookmarks/list/:id/movies/:id', to: 'bookmarks#create'
delete 'bookmarks/lists/id:', to: 'bookmarks#destroy', as: :destroy_bookmark
end
