Rails.application.routes.draw do
  resources :assess_quests
  
  resources :assessments
  
  resources :questions
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
