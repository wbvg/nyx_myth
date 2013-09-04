NyxChapter::Application.routes.draw do


devise_for :users, path_names: {register: "sign_up", sign_in: "login", sign_out: "logout" }




  devise_scope :user do

    get 'register' => 'devise/registrations#new', as: :register
    get 'login' => 'devise/sessions#new', as: :login
    get 'logout' => 'devise/sessions#destroy', as: :logout

  end
resources :home, :about, :chapters, :sections, :forums, :comments
resources :users

    root :to => 'home#index'

end
