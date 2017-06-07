# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ComputerSkillList.delete_all
ProfessionalSkillList.delete_all
SkillLevel.delete_all
Group.delete_all

['admin', 'advisor', 'student'].each do |name|
  ProfileRole.find_or_create_by({role: name})

end


  #Skill Level List
  level_list = [
    'Excelent',
    'Good',
    'Average',
    'Poor'
  ]

  level_list.each do |level|
    SkillLevel.create( level: level)
  end

  #Professional Skill List
  professional_skill_list = [
    'Java',
    "Python",
    "PHP",
    "HTML, CSS, JavaScript",
    "MySQL",
    "SQLite",
    "PostreSQL",
    "Ruby",
    "C",
    "C++",
    "C#"
  ]

  professional_skill_list.each do |skill_list|
    ProfessionalSkillList.create( prof_skill: skill_list)
  end



#Computer Skill List
  computer_skill_list = [
    "Linux",
    "Windows",
    "Git",
    "Heroku"
  ]

  computer_skill_list.each do |comp_skill|
    ComputerSkillList.create( comp_skill: comp_skill)
  end



  #Groups
  groups = [
    'com16',
    'com15',
    'com14',
    'com13'
  ]

  groups.each do |groups|
    Group.create(name: groups)
  end
