Spina::Engine.routes.draw do
  namespace :admin do
    resources :books
  end
end
