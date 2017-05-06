class ComputerSkill < ApplicationRecord
  belongs_to :skill_levels
  belongs_to :profiles
  belongs_to :computer_skill_lists
end
