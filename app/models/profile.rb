class Profile < ApplicationRecord
  before_create :set_default_role
  # belongs_to :profile_roles

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



   private
   def set_default_role
     puts ProfileRole.find_by_role("admin").id
     self.profile_role_id ||= ProfileRole.find_by_role('admin').id
   end

end
