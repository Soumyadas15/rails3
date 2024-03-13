Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :quizzes, only: [:show] do
    resources :questions, only: [] do
      resources :user_answers, only: [:create]
    end
  end
end