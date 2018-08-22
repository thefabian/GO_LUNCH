# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroy all pools."
Profile.destroy_all
User.destroy_all
Company.destroy_all

puts "Create users..."

user_1 = User.create!(email: "test1@test.com", password: "secret")
user_2 = User.create!(email: "test2@test.com", password: "secret")

puts "Created #{User.count} users"

#Lunch.create(user_1: user_1, user_2: user_2, location: "Berlin", date: Time.zone.now)

company = Company.create!(
  name: 'google',
  address: 'abc',
  locations: "hamburg",
  departments: "HUMAN RESOURCES",
  email: 'Hamburg@GMAIL.COM',
  # employee_range: "1-50 employees"
  # remote_photo_url: "https://www.google.de/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png"
)



puts "Creating profile..."

profiles = Profile.create!(
  first_name: 'Jesus',
  last_name: 'christ',
  company: company,
  job_title: "Messiah",
  department: 'HUMAN RESOURCES',
  location: 'himmel',
  description: 'The Badeschiff is a floating public swimming pool in Berlin, the capital city of Germany. Situated in the East Harbour section of the River Spree, the Badeschiff allows citizens to swim in a sanitary environment near the river.',
  user_id: user_2.id,
  remote_photo_url: "https://www.lds.org/youth/bc/youth/article/why-is-jesus-christ-important-in-my-life/images/Why-is-Jesus-Christ-Important-in-My-Life-main-1138511.jpg",
  admin: true,

)

puts "You have created #{Profile.count} profiles."
