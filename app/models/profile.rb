class Profile < ApplicationRecord
  before_create :set_default_role
  has_many :work_experiences
  has_one :skill
  has_many :languages
  has_many :professional_skills
  has_many :computer_skills
  # belongs_to :profile_roles

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :cas_authenticatable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable

  def cas_extra_attributes=(extra_attributes)
     extra_attributes.each do |name, value|
       puts "extra_attributes:"+ name.to_s+" => "+ value.to_s
       case name.to_sym
       when :fullname
         self.fullname = value
       when :email
         self.email = value
       end
     end
   end

   private
   def set_default_role
     puts ProfileRole.find_by_role("admin").id
     self.profile_role_id ||= ProfileRole.find_by_role('admin').id
   end

end
