Rails.application.routes.draw do
  # Home page
  root 'users#index'

  resources :users do 
  	collection do 
  		get 'markets'
  		get 'vendors'
  	end
  	get 'show_market', on: :member
  end

  resources :markets do 
  	collection do 
	  	get :show_markets
	  end
  	resources :vendors
  end

  resources :vendors do 
  	collection do 
	  	get :show_vendors
	  end
  	resources :products do 
	  	resources :sales 
  	end
  end

end
