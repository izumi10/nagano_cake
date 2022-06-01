Rails.application.routes.draw do
  namespace :public do
    resources :orders, only:[:new, :index, :show, :confirm]
    resources :cart_items, except:[:new, :show, :edit]
    resources :addresses, except: [:new, :show]
    resources :customers, only: [:show, :edit, :update]
    resources :items, only: [:index, :show]
  end

  namespace :admin do
    resources :orders, only:[:show, :update]
    resources :customers, except:[:new, :create, :destroy]
    resources :items, except:[:destroy]
    resources :genres, except:[:new, :show, :destroy]
  end

  namespace :admin do
    get "/" => "homes#top"
  end

  namespace :public do
    root to: "homes#top"
    get 'homes/about'
  end



  devise_for :customers,skip: [:passwords],
  controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }

  devise_for :admin, skip: [:registrations, :passwords] ,
  controllers: {
  sessions: "admin/sessions"
  }


end
