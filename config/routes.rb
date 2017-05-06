Rails.application.routes.draw do

  resources :skills
<<<<<<< HEAD
  devise_for :profiles do
    resources :work_experiences
  end
  resources :profile_roles
=======

  get 'profile/edit'
  get 'profile/dashboard'

  # Rails.application.routes.draw do
  #       devise_for :users, controllers: {
  #         sessions: 'users/sessions'
  #       }
  #     end


  devise_for :profiles, controllers: {
    sessions: 'profiles/sessions'
  }

  resources :work_experiences

  resources :profile_roles

>>>>>>> fcc68e4fc2ae3fa4c1f66d7d3818648246e49b45
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
