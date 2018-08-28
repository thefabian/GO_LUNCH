# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroy all data."
Lunch.destroy_all
Availability.destroy_all
Request.destroy_all
Department.destroy_all
Location.destroy_all
Profile.destroy_all
Company.destroy_all
User.destroy_all

puts "Create users..."

user_1 = User.create!(email: "test1@test.com", password: "secret")
user_2 = User.create!(email: "test2@test.com", password: "secret")
user_3 = User.create!(email: "test3@test.com", password: "secret")

puts "Created #{User.count} users"

#Lunch.create(user_1: user_1, user_2: user_2, location: "Berlin", date: Time.zone.now)

company = Company.create!(
  name: 'google',
  address: 'abc',
  locations: "hamburg",
  email: 'Hamburg@GMAIL.COM',
  # employee_range: "1-50 employees"
  # remote_photo_url: "https://www.google.de/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png"
)



puts "Creating profile..."

profiles = Profile.create!([
{
  first_name: 'Jesus',
  last_name: 'Christ',
  company: company,
  job_title: "Messiah",
  location: 'Himmel',
  description: 'The Badeschiff is a floating public swimming pool in Berlin, the capital city of Germany. Situated in the East Harbour section of the River Spree, the Badeschiff allows citizens to swim in a sanitary environment near the river.',
  user_id: user_2.id,
  remote_photo_url: "https://www.lds.org/youth/bc/youth/article/why-is-jesus-christ-important-in-my-life/images/Why-is-Jesus-Christ-Important-in-My-Life-main-1138511.jpg",
  admin: true,
},
{
  first_name: 'Maria',
  last_name: 'von Bethlehem',
  company: company,
  job_title: "Josef's bitch",
  location: 'Himmel',
  description: 'The Badeschiff is a floating public swimming pool in Berlin, the capital city of Germany. Situated in the East Harbour section of the River Spree, the Badeschiff allows citizens to swim in a sanitary environment near the river.',
  user_id: user_1.id,
  remote_photo_url: "https://www.lds.org/youth/bc/youth/article/why-is-jesus-christ-important-in-my-life/images/Why-is-Jesus-Christ-Important-in-My-Life-main-1138511.jpg",
  admin: true,
}
])




# (
# first_name: "Bruce",
#   last_name: 'Willis',
#   company: company,
#   job_title: "coder",
#   department: 'OPERATIONS',
#   location: 'himmel',
#   description: 'Walter Bruce Willis (born March 19, 1955) is an American actor, producer, and singer. Born to a German mother and American father in Idar-Oberstein, West Germany, his career began on the Off-Broadway stage and then in television in the 1980s, most notably as David Addison in Moonlighting (1985–1989).',
#   user_id: user_3.id,
#   remote_photo_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Bruce_Willis_by_Gage_Skidmore_3.jpg/440px-Bruce_Willis_by_Gage_Skidmore_3.jpg",
#   admin: true,)

puts "You have created #{Profile.count} profiles."


dp = Department.new(department: "Human Resources", company: company)
dp.save!

dp = Department.new(department: "Production", company: company)
dp.save!

dp = Department.new(department: "Sales", company: company)
dp.save!

dp = Department.new(department: "Marketing", company: company)
dp.save!

dp = Department.new(department: "Customer support", company: company)
dp.save!

dp = Department.new(department: "Accounting", company: company)
dp.save!

dp = Department.new(department: "Finance", company: company)
dp.save!

dp = Department.new(department: "Distribution", company: company)
dp.save!

dp = Department.new(department: "R&D", company: company)
dp.save!

dp = Department.new(department: "Information Technology", company: company)
dp.save!

dp = Department.new(department: "Purchasing", company: company)
dp.save!

dp = Department.new(department: "Legal Department", company: company)
dp.save!

