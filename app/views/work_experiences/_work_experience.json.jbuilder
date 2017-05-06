<<<<<<< HEAD
json.extract! work_experience, :id, :work_period, :position, :place, :profile_id, :created_at, :updated_at
=======
json.extract! work_experience, :id, :created_at, :updated_at
>>>>>>> master
json.url work_experience_url(work_experience, format: :json)
