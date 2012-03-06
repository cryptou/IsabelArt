IsabelArt::Application.routes.draw do
  match '/contact', to: 'static_pages#contact'
  root to: 'static_pages#home'
end