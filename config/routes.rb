Rails.application.routes.draw do
  devise_for :users

  root 'visitors#index'

  resources :students do
    get :subjects
    resources :students_payments
  end

  resources :teachers do
    get :subjects
  end

  resources :students_payments, only: :index

  get 'reports/subjects', to: 'reports#subjects', as: 'report_subjects'
end
