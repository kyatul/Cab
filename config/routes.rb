Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  root 'trip#index'
  post 'destination-cities' => 'trip#destination_cities'
  post 'trip-search' => 'trip#search'

  get 'admin' => 'admin#index'
  get 'admin/cities' => 'city#index'
  get 'admin/new-city' => 'city#new'
  post 'admin/new-city' => 'city#create'
  delete 'admin/city/:id' => 'city#destroy', as: :admin_city

  get 'admin/cars' => 'car#index'
  get 'admin/new-car' => 'car#new'
  post 'admin/new-car' => 'car#create'
  delete 'admin/car/:id' => 'car#destroy', as: :admin_car

  get 'admin/routes' => 'route#index'
  get 'admin/new-route' => 'route#new'
  post 'admin/new-route' => 'route#create'
  delete 'admin/route/:id' => 'route#destroy', as: :admin_route

  get 'admin/cars-available' => 'cars_available#index'
  get 'admin/new-car-available' => 'cars_available#new'
  post 'admin/new-car-available' => 'cars_available#create'
  delete 'admin/car-available/:id' => 'cars_available#destroy', as: :admin_car_available
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
