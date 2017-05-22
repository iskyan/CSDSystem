class Language < ApplicationRecord
  belongs_to :skill_level
  belongs_to :profile
end
