class ProfessionalSkill < ApplicationRecord
  belongs_to :professional_skill_lists
  belongs_to :profiles
end
