class CreateWorkExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :work_experiences do |t|
      t.string :work_period, null: false
      t.string :position, null: false
      t.string :place,null: false
      t.timestamps
    end
  end
end
