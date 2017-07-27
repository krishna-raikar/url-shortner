Rails.application.routes.draw do
  resources :shortners
  root 'shortners#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #url shortning
  post "/short_url" => "shortners#short_url"
end
