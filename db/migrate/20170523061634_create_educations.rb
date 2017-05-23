class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.string :education_period
      t.string :education_type
      t.string :faculty
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
