MentorMentee::Application.routes.draw do

  resources :answers
  resources :questions do 
 get 'load_subcategories',:on => :collection
end 

  namespace :admin do resources :subcategories end

  namespace :admin do resources :categories end

  namespace :admin do resources :home
	get "accounts"
  end

 	get "credentials/category"
	get "credentials/myprofile"
	get "credentials/studymat"
	get "credentials/career"
	get "credentials/contactus"
<<<<<<< HEAD
       get "credentials/question"
=======
	get "credentials/question"
>>>>>>> 31a48f4099fcbb35cb380bbc2504ca17d5c6e96d
  devise_for :users, :path_names => { :sign_up => "register" } 

  
   devise_scope :user do 

  #get "register"  => "devise/registrations#new" 
 # get "login"  => "devise/sessions#new"    
 # get "logout" => "devise/sessions#destroy"
#end 

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
get "myprofiles/edit"
get "myprofiles/update"
get "myprofiles/index"
  resources :credentials
   resources :myprofiles
  resources :login
  resources :questions
  resources :answers
   root :to => 'credentials#index'
end

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  match ':controller(/:action(/:id(.:format)))'
end
