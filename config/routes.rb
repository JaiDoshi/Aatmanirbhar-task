Rails.application.routes.draw do
  devise_for :users
  resources :students
  get 'home/about_student_team'
  get 'home/volunteers'
  get 'home/student_team_projects'
  root 'home#about_student_team'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
