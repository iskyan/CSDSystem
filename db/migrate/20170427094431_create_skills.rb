class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.string :organizational_skill
      t.string :publicaton
      t.string :project
      t.references :profile, foreign_key: true
      t.timestamps
    end
  end
end
