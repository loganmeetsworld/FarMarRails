Rails.application.routes.draw do
  # Home page
  root 'users#index'

  resources :users do 
  	collection do 
  		get 'markets'
  	end
  	get 'show_market', on: :member
  end

  resources :markets do 
  	resources :vendors 
  end

  resources :vendors do 
  	resources :products do 
	  	resources :sales 
  	end
  end

end
