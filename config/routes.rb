Rails.application.routes.draw do
  root 'home#index'
  get  'index'       => 'home#index'
  get  'about'       => 'home#about'
  get  'resume'      => 'home#resume'
  get  'contact'     => 'home#contact'
  resources :messages, only: [:new, :create]
end
