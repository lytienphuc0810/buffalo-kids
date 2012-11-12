BuffaloKids::Application.routes.draw do
  get "books/index" => "books#index"
  
  post "book_reservations/new/:book_id" => "book_reservations#new"
  post "book_reservations/delete/:book_reservation_id" => "book_reservations#delete"  
  get "book_reservations/index/:page" => "book_reservations#index"
  get "book_reservations/show/:book_reservation_id" => "book_reservations#show"
  get "book_reservations/home/:page" => "book_reservations#home"

  post "photo_registrations/new/:book_id" => "photo_registrations#new"
  post "photo_registrations/delete/:photo_registration_id" => "photo_registrations#delete"  
  get "photo_registrations/index/:page" => "photo_registrations#index"
  get "photo_registrations/show/:photo_registration_id" => "photo_registrations#show"
  get "photo_registrations/home/:page" => "photo_registrations#home"

  get "books/index/:page" => "books#index"
  get "books/show/:book_id" => "books#show"
  get "books/new" => "books#new"
  get "books/edit/:book_id" => "books#edit"  
  post "books/create/" => "books#create"
  post "books/update/:book_id" => "books#update"
  post "books/delete/:book_id" => "books#delete"  

  get "notices/index/:page" => "notices#index"
  get "notices/show/:notice_id" => "notices#show"

  get "users/index/:page" => "users#index"
  get "users/show/:user_id" => "users#show"
  get "users/new" => "users#new"
  post "users/create" => "users#create"
  post "users/update/:user_id" => "users#update"
  get "users/edit/:user_id" => "users#edit"
  post "users/delete/:user_id" => "users#delete"


  get "book_instances/index/:book_id/:page" => "book_instances#index"
  get "book_instances/new/:book_id" => "book_instances#new"
  get "book_instances/edit/:book_instance_id" => "book_instances#edit"
  post "book_instances/create/:book_id" => "book_instances#create"
  post "book_instances/update/:book_instance_id" => "book_instances#update"
  post "book_instances/delete/:book_instance_id" => "book_instances#delete"

  get "faq" => "etcs#faq"

  get "/search/book_search_reservation/:page" => "searches#book_search_reservation"
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  devise_for :users do
    get "/", :to => "devise/sessions#new"
  end

  root :to => "devise/sessions#new"
  
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
