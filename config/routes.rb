Rails.application.routes.draw do
  # Home page
  root 'users#index'

  resources :vendors do
  	resources :products do
	  	resources :sales, only: [:create, :new]
  	end
  	collection do
	  	get :show_vendors
	  end
  	member do 
  		resources :sales, only: [:index]
  	end
  end

  resources :users do
  	collection do
  		get 'markets'
  		get 'markets/:id', action: "show_market", as: "show_market"
  	end
  end

  resources :markets do
  	collection do
	  	get :show_markets
	  end
  	resources :vendors
  end

end
