Rails.application.routes.draw do
  resources 'users' do 
    collection do
      get :login 
      get :register
    end
  end
  
  

  root 'shareposts#index'
  resources 'shareposts' do
    collection do
      # get :register
      # get :login 
      get :new
    end

  end
  get 'shareposts/new'
  get 'shareposts/register'
  get 'shareposts/login'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
