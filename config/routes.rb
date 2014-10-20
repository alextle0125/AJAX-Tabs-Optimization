TabsChallenge::Application.routes.draw do
  root :to => 'challenges#index'
  resources :challenges, :only => [:index]

  get '/tab/:id' => 'challenges#show', as: 'challenge'
  get '/challenges/:id' => 'challenges#all', as: 'unit'
end
