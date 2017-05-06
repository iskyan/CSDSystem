class CreateComputerSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :computer_skills do |t|
      t.references :profile, foreign_key: true
      t.references :comp_skill_list, foreign_key: true
      t.references :skill_level, foreign_key: true
      t.timestamps
    end
  end
end
