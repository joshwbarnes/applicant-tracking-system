puts 'Cleaning DB - please wait...'

puts 'Destroying candidate lists...'
Candidate.destroy_all

puts 'Destroying jobs...'
Job.destroy_all

puts 'Destroying users...'
User.destroy_all

puts 'Finished destroying DB'

# SEED USERS
user_one = User.create!(
  email: 'josh@gmail.com',
  password: '123456',
  )

# SEED CANDIDATES
candidate_first_name = Faker::Name.first_name
candidate_last_name = Faker::Name.last_name
candidate_address = Faker::Address.street_address
candidate_mobile_number = Faker::PhoneNumber.cell_phone
candidate_current_position = Faker::Job.title
candidate_current_employer = Faker::Company.name
candidate_location = Faker::Address.city

candidate_one = Candidate.create!(
  first_name: 'Alex',
  last_name: 'Jones',
  address: '100 Victoria Road',
  mobile_number: '0400100200',
  current_position: 'Product Designer',
  current_employer: 'Square',
  location: 'Melbourne',
  )

candidate_two = Candidate.create!(
  first_name: 'Kate',
  last_name: 'Hall',
  address: '100 Murray Street',
  mobile_number: '0400300400',
  current_position: 'Agile BA',
  current_employer: 'ANZ',
  location: 'Melbourne',
  )

puts "Created #{candidate_first_name} #{candidate_last_name}"

# SEED JOBS

  job_one = Job.create!(
    title: 'Software Engineer',
    work_type: 'Full-time',
    company: '99designs',
    workplace_address: 'Richmond',
    salary: '$150,000',
    )
puts "Created #{job_one.title}."

  job_two = Job.create!(
    title: 'Senior oftware Engineer',
    work_type: 'Full-time',
    company: 'Afterpay',
    workplace_address: 'Melbourne',
    salary: '$200,000',
    )
puts "Created #{job_two.title}."
end
