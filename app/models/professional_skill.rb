class ProfessionalSkill < ApplicationRecord
  belongs_to :professional_skill_list
  belongs_to :skill_level
  belongs_to :profile
end
