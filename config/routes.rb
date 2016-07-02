Rails.application.routes.draw do
 
	root 'animes#index'
  resources 'animes', as: 'anime'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
