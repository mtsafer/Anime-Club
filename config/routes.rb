Rails.application.routes.draw do
 
	root 'animes#index'
	get 'delete/:id' => 'animes#destroy'
  resources 'animes'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
