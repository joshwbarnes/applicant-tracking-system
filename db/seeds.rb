puts 'Cleaning DB - please wait...'

puts 'Destroying candidate lists...'
Candidate.destroy_all

puts 'Destroying jobs...'
Job.destroy_all

puts 'Destroying users...'
User.destroy_all

puts 'Finished destroying DB'

# SEED USERS


# SEED CANDIDATES
candidate_first_name = Faker::Name.first_name
candidate_last_name = Faker::Name.last_name
candidate_address = Faker::Address.street_address
candidate_mobile_number = Faker::PhoneNumber.cell_phone
candidate_current_position = Faker::Job.title
candidate_current_employer = Faker::Company.name
candidate_location = Faker::Address.city

candidates.each do |candidate|
  Candidate.create!

puts "Created #{candidate_first_name} #{candidate_last_name}"

# SEED JOBS
15.times do
  job_title = Faker::Job.title
  job_work_type = Faker::Job.employment_type
  job_company = Faker::Company.name
  job_workplace_address = Faker::Address.street_address
  job_salary = Faker::Number.number (digits: 5)
  puts "Creating #{job_title}"
Job.create!(title: job_title, work_type: job_work_type, company: job_company, workplace_address: job_workplace_address, salary: job_salary)
end
