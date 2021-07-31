# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
# lists (of movies)
root to: 'lists#index'
resources :lists, except: [:edit, :update] do
  resources :bookmarks, only: [:new, :create]
end
delete 'bookmarks/lists/id:', to: 'bookmarks#destroy', as: :destroy_bookmark
end
