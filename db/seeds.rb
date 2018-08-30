# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroy all data."
Availability.destroy_all
Request.destroy_all
Lunch.destroy_all
Profile.destroy_all
Department.destroy_all
Location.destroy_all
Company.destroy_all
Conversation.destroy_all
Message.destroy_all
User.destroy_all

puts "Create users..."

user_1 = User.create!(email: "leonard@caltech.edu", password: "secret")
user_2 = User.create!(email: "sheldon@caltech.edu", password: "secret")
user_3 = User.create!(email: "howard@caltech.edu", password: "secret")
user_4 = User.create!(email: "raj@caltech.edu", password: "secret")
user_5 = User.create!(email: "bernadette@caltech.edu", password: "secret")
user_6 = User.create!(email: "amy@caltech.edu", password: "secret")

puts "Created #{User.count} users"

#Lunch.create(user_1: user_1, user_2: user_2, location: "Berlin", date: Time.zone.now)

company = Company.create!(
  name: 'California Institute of Technology',
  address: '1200 E California Blvd, Pasadena, CA 91125, USA',
  locations: "Pasadena",
  email: 'info@caltech.edu',
  price: 100
  # employee_range: "1-50 employees"
  # remote_photo_url: "https://www.google.de/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png"
)

dp1 = Department.new(department: "Experimental Physics", company: company)
dp1.save!

dp2 = Department.new(department: "Theoretical Physics", company: company)
dp2.save!

dp3 = Department.new(department: "Neurobiology", company: company)
dp3.save!

dp4 = Department.new(department: "Aerospace Engineering", company: company)
dp4.save!

dp5 = Department.new(department: "Microbiology", company: company)
dp5.save!

dp6 = Department.new(department: "Astrophysics", company: company)
dp6.save!

puts "Creating profile..."

leonard = Profile.create!(
  first_name: 'Leonard',
  last_name: 'Hofstadter',
  company: company,
  department_id: dp1.id,
  job_title: "Experimental Physicist",
  location: 'Pasadena',
  description: 'Leonard Hofstadter is the best friend and former roommate of Sheldon Cooper, husband of Penny Hofstadter, and he works as a experimental physicist doing research at the California Institute of Technology with Sheldon, Howard, and Raj.',
  user_id: user_1.id,
  remote_photo_url: "https://pbs.twimg.com/profile_images/2654852680/87ee5ed912ea7364a29a380be9b22285.jpeg",
  admin: true)


sheldon = Profile.create!(
  first_name: 'Sheldon',
  last_name: 'Cooper',
  company: company,
  department_id: dp2.id,
  job_title: "Theoretical Physicist",
  location: 'Pasadena',
  description: "Sheldon Cooper is Leonard Hofstadter's best friend and former roommate, Amy Farrah Fowler's husband and he works as a theoretical physicist doing research at the California Institute of Technology with Leonard, Raj, and Howard.",
  user_id: user_2.id,
  remote_photo_url: "https://www.jokeme.fr/images/sheldon-cooper.jpg",
  admin: true
  )

howard = Profile.create!(
  first_name: 'Howard',
  last_name: 'Wolowitz',
  company: company,
  department_id: dp4.id,
  job_title: "Aerospace Engineer",
  location: 'Pasadena',
  description: "Howard Wolowitz is Bernadette Rostenkowski's husband, now a father, and he works as an aerospace engineer at the California Institute of Technology with Leonard, Sheldon, and Raj.",
  user_id: user_3.id,
  remote_photo_url: "http://www.postavy.cz/foto/howard-wolowitz-foto.jpg",
  admin: true
  )

raj = Profile.create!(
  first_name: 'Raj',
  last_name: 'Koothrappali',
  company: company,
  department_id: dp6.id,
  job_title: "Astrophysicist",
  location: 'Pasadena',
  description: 'Rajesh "Raj" Koothrappali works as a astrophysicist doing research at the California Institute of Technology sometimes working with Leonard, Sheldon, and Howard.',
  user_id: user_4.id,
  remote_photo_url: "https://pbs.twimg.com/profile_images/566327713707749376/KtScs-wm_400x400.jpeg",
  admin: true
  )

bernadette = Profile.create!(
  first_name: 'Bernadette',
  last_name: 'Rostenkowski-Wolowitz',
  company: company,
  department_id: dp5.id,
  job_title: "Microbiologist",
  location: 'Pasadena',
  description: "Bernadette Rostenkowski-Wolowitz is Howard Wolowitz's wife and a new mother. She works at as a microbiologist at Zangen with Penny and was also once a waitress with Penny at the Cheesecake Factory.",
  user_id: user_5.id,
  remote_photo_url: "http://www.postavy.cz/foto/bernadette-rostenkowski-foto.jpg",
  admin: true
  )

amy = Profile.create!(
  first_name: 'Amy',
  last_name: 'Farrah Fowler',
  company: company,
  department_id: dp3.id,
  job_title: "Neurobiologist",
  location: 'Pasadena',
  description: "Amy Farrah Fowler is Sheldon Cooper's girlfriend and a neurobiologist currently working at Caltech.",
  user_id: user_6.id,
  remote_photo_url: "http://www.postavy.cz/foto/amy-farrah-fowler-foto.jpg",
  admin: true
  )

puts "You have created #{Profile.count} profiles."
