Rails.application.routes.draw do
  scope "(:locale)",locale: /en|ru/ do

    get 'people/alumni'
    get 'people/fuculty_advisors'
    get 'people/lecturers'
    get 'people/prospective_students'
    get 'people/students_groups'

    get 'offices_services/academic_programs'
    get 'offices_services/contacts'
    get 'offices_services/exchange'
    get 'offices_services/human_resource'
    get 'offices_services/office_of_dean'

    get 'news_events/announcements'
    get 'news_events/calendars_colloquia'
    get 'news_events/for_media'

    get 'faculty_research/centers_initiatives'
    get 'faculty_research/graduate_research'
    get 'faculty_research/masterworks'
    get 'faculty_research/research_interests'
    get 'faculty_research/undergraduate_research'

    get 'admission/bachalor_degree'
    get 'admission/college'
    get 'admission/exchange_program'
    get 'admission/foreign_students'
    get 'admission/master_degree'
    get 'admission/tution_fee'

    get 'academics/calendar'
    get 'academics/courses'
    get 'academics/graduate_program'
    get 'academics/program_objectives'
    get 'academics/undergraduate_program'

    get 'home/index'
    root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html 
  end
end
