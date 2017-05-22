class DeviseCreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|

      t.integer :student_id, unique: true
      t.string :username
      t.string :name
      t.string :surname
      t.string :email
      t.string :address
      t.string :phone
      t.date :date_of_birth
      t.string :gender
      t.references :profile_role

      ## Database authenticatable
      t.string :email,              default: "your@email.com"
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at



      t.timestamps null: false
    end

    add_index :profiles, :email,                unique: true
    add_index :profiles, :reset_password_token, unique: true
    # add_index :profiles, :confirmation_token,   unique: true
    # add_index :profiles, :unlock_token,         unique: true
  end
end
