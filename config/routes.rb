PortfolioSite::Application.routes.draw do
  resources :resume
  resources :home

  root to: "home#index"
end
