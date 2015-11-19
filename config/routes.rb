Rails.application.routes.draw do
  # Home page
  root 'users#index'

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

  resources :vendors do
  	collection do
	  	get :show_vendors
	  end
  	member do 
  		resources :sales, only: [:index]
  	end
  	resources :products do
	  	resources :sales, only: [:create, :new]
  	end
  end

end
