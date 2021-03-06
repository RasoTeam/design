Homepage::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):


  #resources :aboutus
  #resources :contacts
  #resources :ideas

  match '/signup/' => 'staticpages#signup'
  match '/signup2/' => 'staticpages#signup_admin'


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
  root :to => 'frontoffice/frontoffice#index'

namespace :signin do
  match '/signin', to: 'signin#index'
end

namespace :backoffice do
  match '/backoffice', to: 'backoffice#home'
  match '/show', to: 'backoffice#show'
end

namespace :frontoffice do
  match '/home', to: 'frontoffice#index'
  match '/about', to: 'frontoffice#aboutus'
  match '/idea', to: 'frontoffice#idea'
  match '/contacts', to: 'frontoffice#contacts'
end

#scope :module => "rasoemp" do
#  match '/home', to: 'rasoemp#index'
#end
namespace :rasoemp do
  match '/home', to: 'rasoemp#index'
  match '/jobs', to: 'rasoemp#jobs'
  match '/edit', to: 'rasoemp#editdetailscol'
  match '/jobdetails', to: 'rasoemp#job_details'
  match '/employees', to: 'rasoemp#employees'
  match '/publicjobs', to: 'rasoemp#public_jobs'
  match '/company', to: "rasoemp#company"
  match '/editcomp', to: "rasoemp#editcomp"
end

namespace :publicpages do
  match '/jobs', to: 'publicpages#jobs'
  match '/apply', to: 'publicpages#apply_form'
end


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
