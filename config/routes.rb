Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/login'

  namespace "api" do
    namespace "v1" do
      resources :users, :except => [:new, :edit]
    end
    namespace "v1" do
      resources :vehicles, :except => [:new, :edit]
    end
    namespace "v1" do
      resources :offers, :except => [:new, :edit]
    end
  end
end

