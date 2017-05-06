class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.string :organizational_skill, null: false
      t.string :publication, null:false
      t.string :project, null:false
      
      t.timestamps
    end
  end
end
