class CreateLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :languages do |t|
      t.string :language
      t.references :skill_level, foreign_key: true
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
