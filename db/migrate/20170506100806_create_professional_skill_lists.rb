class CreateProfessionalSkillLists < ActiveRecord::Migration[5.0]
  def change
    create_table :professional_skill_lists do |t|
      t.string  :prof_skill
      t.timestamps
    end
  end
end
