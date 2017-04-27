class CreateWorkExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :work_experiences do |t|
      t.string :work_period
      t.string :position
      t.string :place
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
