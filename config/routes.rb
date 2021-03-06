Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
  
  
  # config/routes.rb
  scope "/:locale" do
    root "pages#main", as: "ruut"
    resources :pages, except: [:index, :show, :new, :create, :edit, :update, :delete]
    get 'pdf1' => "pages#pdf1", as: "pgs_pdf1"
    get 'pdf2' => "pages#pdf2", as: "pgs_pdf2"
    get "other_amenities/:id" => "pages#other_amenities", as: "gallery_other_amenities" 
    get "profile" => "pages#profile", as: "profile"
    get "production" => "pages#production", as: "production"
    get "vandm" => "pages#vandm", as: "vandm"
    get "contact_us" => "pages#contact_us", as: "contact_us"
    get "slippers" => "pages#slippers", as: "slippers"
    get "bottles" => "pages#bottles", as: "bottles"
    get "soaps" => "pages#soaps", as: "soaps"
  end
  
  # config/routes.rb
  # get '/:locale' => 'pages#main'

  # root "admin/visitors#index"
  
  
 
end
