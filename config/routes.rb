Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/adminstrator', as: 'rails_admin'
  resources :profile_roles

  get 'profile/edit'
  get 'profile/dashboard'
  get 'profile/students'


  devise_for :profiles, :path => 'profiles'



  resources :profile do
    resources :work_experiences
    resources :skills
    resources :educations
    resources :languages
    resources :professional_skills
    resources :computer_skills
    resources :groups

  end





  scope "(:locale)",locale: /en|ru/ do

    get 'people/alumni'
    get 'people/fuculty_advisors'
    get 'people/lecturers'
    get 'people/prospective_students'
    get 'people/students_groups'
    get 'people/office_of_dean'

    get 'news_events/announcements'
    get 'news_events/news'

    get 'about/contacts'
    get 'about/system_information'

    get 'admission/bachalor_degree'
    get 'admission/college'
    get 'admission/exchange_program'
    get 'admission/foreign_students'
    get 'admission/master_degree'

    get 'academics/calendar'
    get 'academics/courses'
    get 'academics/graduate_program'
    get 'academics/undergraduate_program'

    get 'home/index'
    root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
