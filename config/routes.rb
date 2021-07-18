Rails.application.routes.draw do
  resources :assess_quests
  resources :questions
  resources :assessments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
