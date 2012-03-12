IsabelArt::Application.routes.draw do
  
  get "category/china"

  get "category/burma"

  get "category/asia"

  get "category/gandhara"

  get "category/porcelain"

  scope ":locale", :locale => /en|fr|es/ do
    match '/contact', to: 'static_pages#contact'
    match '/home', to: 'static_pages#home'
  end
  
  match '/:locale', to: 'static_pages#home'
  root to: 'static_pages#home'
end