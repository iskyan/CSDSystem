<<<<<<< HEAD
json.extract! skill, :id, :organizational_skill, :publicaton, :project, :profile_id, :created_at, :updated_at
=======
json.extract! skill, :id, :created_at, :updated_at
>>>>>>> master
json.url skill_url(skill, format: :json)
