BuffaloKids::Application.routes.draw do
  devise_for :users
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
  post "books/delete/:sbook_id" => "books#delete"  
  post "books/edit/:sbook_id" => "books#edit"  

  get "notices/index/:page" => "notices#index"
  get "notices/show/:notice_id" => "notices#show"
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
