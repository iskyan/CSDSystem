class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.string :education_period, null: false
      t.string :education_type , null:false
      t.string :faculty, null: false
      t.timestamps
    end
  end
end
