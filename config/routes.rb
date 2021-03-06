Rails.application.routes.draw do
  resources :conditions
  resources :mychats
  devise_for :users

  root controller: :rooms, action: :index

  resources :room_messages
  resources :rooms
  get 'rooms/message'
  get 'moving_car' => "mychats#moving_car" 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
