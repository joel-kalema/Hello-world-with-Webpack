Rails.application.routes.draw do
  namespace :v1, defaults: { format: 'json'} do
    get 'greeting', to: 'greetings#index'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '*page', to: 'static#index', constraints: lambda { |req|
    !req.xhr? && req.format.html?
  }
  # Defines the root path route ("/")
  root "static#index"
end
