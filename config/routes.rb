Rails.application.routes.draw do
  resources :shortners
  root 'shortners#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # url shortning
  post "/short_url" => "shortners#short_url"


  # apis
  namespace :api, path: nil, defaults: { format: :json } do
    scope 'v1', module: :v1 do
      post "/shorten_url" => "shortners#create"
      post "/expand_url"  => "shortners#expand_url"
    end
  end
end
