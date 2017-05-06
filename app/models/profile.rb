class Profile < ApplicationRecord
<<<<<<< HEAD
  before_create :set_default_role
  has_many :work_experiences
  has_one :skill
<<<<<<< HEAD
  has_many :languages
  has_many :professional_skills
  has_many :computer_skills
=======
>>>>>>> fcc68e4fc2ae3fa4c1f66d7d3818648246e49b45
  # belongs_to :profile_roles

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :cas_authenticatable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable

<<<<<<< HEAD
  def cas_extra_attributes=(extra_attributes)
     extra_attributes.each do |name, value|
=======

  def cas_extra_attributes=(extra_attributes)
     extra_attributes.each do |name, value|
       puts "DEBUG: cas_extra_attributes CALLED"
>>>>>>> fcc68e4fc2ae3fa4c1f66d7d3818648246e49b45
       puts "extra_attributes:"+ name.to_s+" => "+ value.to_s
       case name.to_sym
       when :fullname
         self.fullname = value
       when :email
         self.email = value
       end
     end
<<<<<<< HEAD
   end

   private
   def set_default_role
=======
  end

   private
   def set_default_role
     puts "DEBUG: PROFILE ROLE SET"
>>>>>>> fcc68e4fc2ae3fa4c1f66d7d3818648246e49b45
     puts ProfileRole.find_by_role("admin").id
     self.profile_role_id ||= ProfileRole.find_by_role('admin').id
   end

=======
  belongs_to :profile_role
  has_many :work_experiences
  has_many :educaitons
  has_one :skill
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
>>>>>>> master
end
