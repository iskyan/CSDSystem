class ComputerSkill < ApplicationRecord
  belongs_to :computer_skill_list
  belongs_to :skill_level
  belongs_to :profile
end
