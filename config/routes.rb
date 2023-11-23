Rails.application.routes.draw do
  
  devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

namespace :admin do
     resources :customers, only: [:index, :show, :edit, :update]
     resources :genres, only: [:index, :create, :edit, :update]
     root to: 'homes#top'
      get 'homes/top'
  end
  
  scope module: :public do
   resources :recipes, only: [:index, :update, :destroy, :create] do
      collection do 
        delete 'destroy_all'
      end
    end
    resources :customers, only: [:show, :edit, :update]  do
     get 'customers/leave'
     get 'customers/withdraw'
    end
    
    root :to => 'homes#top'
    get 'homes/about'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
