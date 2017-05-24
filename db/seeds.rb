# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

['admin', 'advisor', 'student'].each do |name|
  ProfileRole.find_or_create_by({role: name})

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



end
