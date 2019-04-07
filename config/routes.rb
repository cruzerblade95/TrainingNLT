Rails.application.routes.draw do
  resources :beneficiaries
  resources :training_attendeds
  resources :honors_and_awards
  resources :professional_memberships
  resources :working_experiences
  resources :qualification_details
  resources :bank_accounts
  resources :payrolls
  resources :relatives
  resources :children
  resources :legal_spouses
  devise_for :users
  root 'pages#login'
  resources :personal_details
  resources :pins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pins' => 'pins#index'
#personal_detail - spouse - children - relatives - qualification - experience - honor - training
  #registration routes
  get 'staff_register' => 'personal_details#new'
  get 'staff_register2' => 'legal_spouses#new'
  get 'staff_register3' => 'children#new'
  get 'staff_register4' => 'relatives#new'
  get 'staff_register5' => 'payrolls#new'
  get 'staff_register6' => 'bank_accounts#new'
  get 'staff_register7' => 'qualification_details#new'
  get 'staff_register8' => 'working_experiences#new'
  get 'staff_register9' => 'professional_memberships#new'
  get 'staff_register10' => 'honors_and_awards#new'
  get 'staff_register11' => 'training_attendeds#new'
  get 'staff_register_finish' => 'pages#finish_register_staff'

  get 'admin_home' => 'pages#admin_home'
  get 'view_all_staff' => 'pages#staff_management'
  get 'show_staff_table' => 'personal_details#index'
  get 'show_training_table' => 'training_attendeds#index'
end
