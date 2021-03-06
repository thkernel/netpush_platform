Rails.application.routes.draw do

  
get "order/success"     => "card_orders#success", as: :success 
get "contacts/contact-book/:contact_book_uuid" => "contacts#index", as: :contacts_from_contact_book
get "card/order/new" => "card_orders#new", as: :new_card_order


get "import/contacts" => "contacts#import_contacts_modal", as: :import_contacts_modal
post "import/contacts" => "contacts#import_contacts", as: :import_contacts



  scope path:  "settings" do
	    resources :profiles
  end
  
	scope path: "dashboard" do 
		get "/validated_card_order/:id"     => "card_orders#validated_card_order", as: :validated_card_order

		resources :card_orders do   
			get "delete"
		end


		get "import/watchlist" => "watch_lists#import_watchlist_modal", as: :import_watchlist_modal
		post "import/watchlist" => "watch_lists#import_watchlist", as: :import_watchlist

		resources :features do   
			get "delete"
		end

		resources :activity_logs do   
			get "delete"
		end
  
		resources :watch_lists do   
			get "delete"
		end
		resources :card_types do   
			get "delete"
		end
		resources :uba_account_types do   
			get "delete"
		end
		resources :identity_types do   
			get "delete"
		end
		
	  resources :campaign_contactbooks do   
	    get "delete"
	  end
	  resources :campaigns do   
	    get "delete"
	  end
	  resources :contacts do   
	    get "delete"

	  end
	  resources :contact_books do   
	    get "delete"

	  end
	  
	  resources :orders do   
	    get "delete"
	  end
	  resources :products do   
	    get "delete"
	  end
	  resources :product_categories do   
	    get "delete"
	  end
	  resources :api_keys do   
	    get "delete"
	  end
	  resources :credentials  do   
	    get "delete"
	  end
	  resources :role_permissions do   
	    get "delete"
	  end
      resources :permissions do   
      	get "delete"
      end
       
       resources :roles do   
         get "delete"
       end
		

	     
	   get "/users"     => "custom_users#users_and_permissions", as: :all_users 
       get "/users/unregistered"     => "custom_users#unregistered", as: :unregistered_commission_percentage 
       post "/users/new"     => "custom_users#create", as: :create_user
       get "/users/new"     => "custom_users#new", as: :new_user
       get "/user/edit/:id" => "custom_users#edit", as: :edit_user
       patch "/user/update/:id" => "custom_users#update", as: :udapte_user
       delete "/user/destroy/:id" => "custom_users#destroy", as: :destroy_user
       get "/user/delete/:id" => "custom_users#delete", as: :delete_user
   end
   
     	 get "/dashboard" => "dashboard#index" , as: :dashboard
   
   
   
     
	     devise_for :users, path: '', controllers: { 
	       registrations: "users/registrations",
	       confirmations: 'users/confirmations',
	       passwords: "users/passwords",
	       sessions: "users/sessions"
	           
	       }, 
	       path_names: {
	           sign_in: 'login', 
	           sign_out: 'logout', 
	           password: 'secret', 
	           confirmation: 'verification', 
	           unlock: 'unblock', 
	           registration: 'signup', 
	           sign_up: '' 
	       }
      
	     #root 'config_options#new'
	     devise_scope :user do
	       root to: "users/sessions#new"
	       authenticated :user do
	         root 'dashboard#index', as: :authenticated_root
	       end
	   
	       unauthenticated do
	         root 'users/sessions#new', as: :unauthenticated_root
	       end
	     end
	   
	   
	     # Dynamic error pages
	     get "/404", to: "errors#not_found"
	     get "/422", to: "errors#unacceptable"
	     get "/500", to: "errors#internal_error"
	  
	#end


	# For API subdomain
	constraints subdomain: 'api' do
	  namespace :api do 
    	namespace :v1 do
    		# For mobile API Endpoint
  			mount API::Base, at: "/"
    	end
      end
	end


	#For platform subdomain
	#constraints subdomain: 'my' do
	  
	#end

end
