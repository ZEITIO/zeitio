Rails.application.routes.draw do  

  resources :companies
  root to: "static#home"
  get 'about', to: "static#about"
  get 'contact', to: "static#contact"
end
