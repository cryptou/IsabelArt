IsabelArt::Application.routes.draw do

  scope ":locale", :locale => /en|fr|es/ do
    match '/contact',    to: 'static_pages#contact'
    match '/home',      to: 'static_pages#home'
    match '/china',       to: 'category#china'
    match '/burma',     to: 'category#burma'
    match '/asia',         to: 'category#asia'
    match '/gandhara', to: 'category#gandhara'
    match '/porcelain', to: 'category#porcelain'
  end
  
  match '/:locale', to: 'static_pages#home'
  root to: 'static_pages#home'
end