Rails.application.routes.draw do
  devise_for :users
  root "homes#index"
  resources :posts
  devise_scope :user do
    post "user/guest_sign_in", to: "users/session#guest_sign_in"
  end
end
