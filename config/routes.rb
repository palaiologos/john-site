Rails.application.routes.draw do
  root 'home#index'
  get  'index'       => 'home#index'
  get  'about'       => 'home#about'
  get  'resume'      => 'home#resume'
  get  'resume'      => 'home#projects'
  get  'contact'     => 'messages#new'
  post 'contact'     => 'messages#create'
  resources :messages, only: [:new, :create]
end
