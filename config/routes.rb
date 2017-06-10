Rails.application.routes.draw do


  





 

  get 'items/new'

  get 'items/show'

  get 'bills/index'

  get '/va' => 'empsess#destroy'

  get '/log' => 'customer_invoices#destroy' 

get '/logout' => 'customer_bookings#destroy' 

get 'admin_logout' => 'admin_sessions#destroy'

get 'emp_logout' => "emp_sessions#destroy"


  get '/emp_log' => 'emp_invoices#destroy'




  resources :indexs
  resources :admins
  resources :admin_sessions
  resources :emp_sessions
  resources :customers
  resources :custms
  resources :emp_appoinments
  resources :emp_bookings  
  resources :emp_invoices
  resources :emp_bills
  resources :items
  resources :bills do 
    collection do 
    match 'search' => 'bills#search' ,via: [:get, :post], as: :search 
  match 'export' => 'bills#export' ,via: [:get, :post]
  match 'download' => 'bills#download' ,via: [:get, :post]
  end
end
  resources :employees
  resources :appoinments
  resources :customers
  resources :customer_invoices
  resources :customer_bookings
  #get 'customer_booking/new'
  match ':controller/:action/:id', via: [:get, :post]
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'indexs#new'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
