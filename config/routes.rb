Rails.application.routes.draw do
  root 'welcome#index'

  # GET
  get 'auth/logout'
  get 'search/index'
  get 'welcome/search'
  get 'welcome/contact'
  get 'welcome/faq'
  get 'welcome/about_us'
  get 'search/estacionamiento'
  get 'search/index' , as: 'search'

  # POST
  post 'auth/login'
  post 'auth/lost_password'

  namespace "api" do
    namespace "v1" do
      resources :users, :except => [:new, :edit]
      resources :vehicles, :except => [:new, :edit]
      resources :offers, :except => [:new, :edit]
    end
  end
end
