class Profile < ApplicationRecord
  before_validation :set_default_role
  mount_uploader :profile_image, ProfileImageUploader
  has_many :work_experiences
  has_many :educations
  has_one :skill
  has_many :languages
  has_many :professional_skills
  has_many :computer_skills
  belongs_to :profile_role
  #has_attached_file :photo

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :cas_authenticatable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable


  def cas_extra_attributes=(extra_attributes)
     extra_attributes.each do |name, value|
       puts "DEBUG: cas_extra_attributes CALLED"
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
       puts "DEBUG: PROFILE ROLE SET"
       puts ProfileRole.find_by_role("student").id
       if self.profile_role_id==nil
         self.profile_role_id=ProfileRole.find_by_role("student").id
       end
      #  self.profile_role_id ||= ProfileRole.find_by_role('student').id
     end


end
