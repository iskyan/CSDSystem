class Profile < ApplicationRecord
  belongs_to :profile_role
  has_many :work_experiences
  has_many :educaitons
  has_one :skill
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
