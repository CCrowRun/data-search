Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'searches#index'
  get '/org_search', to: 'searches#org_search'
end