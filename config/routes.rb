Rails.application.routes.draw do
  get 'informations/index'
  devise_for :stores
  devise_for :users
  root to: "informations#index"
end
