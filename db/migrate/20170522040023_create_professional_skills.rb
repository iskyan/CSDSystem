class CreateProfessionalSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :professional_skills do |t|
      t.references :professional_skill_list, foreign_key: true
      t.references :skill_level, foreign_key: true
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
