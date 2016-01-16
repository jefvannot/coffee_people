# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cv.destroy_all
Job.destroy_all


Cv.create!({
  job: "Cuisinier",
  first_name: "Paul",
  last_name: "Verlaine",
  email: "pv@gmail.com",
  city: "Paris",
  experience: "Confirmé",
  start_date: "2016-01-01",
  comment: "super content"
  })
Cv.create!({
  job: "Barista",
  first_name: "Cheri",
  last_name: "Mini",
  email: "cm@gmail.com",
  city: "Paris",
  experience: "Confirmé",
  start_date: "2016-01-01",
  comment: "super mini"
  })
Cv.create!({
  job: "Patissier",
  first_name: "touk",
  last_name: "Touk",
  email: "tt@gmail.com",
  city: "Paris",
  experience: "Débutant",
  start_date: "2016-01-01",
  comment: "super content"
  })

Job.create!({
  firm_name: "fourchette",
  firm_type: "coffee shop",
  firm_email: "pv@gmail.com",
  proposed_job: "Cuisinier",
  alternativ_job: "Cuisinier",
  job_city: "Paris",
  job_start_date: "2016-01-01",
  comment: "super"
  })
Job.create!({
  firm_name: "couteau",
  firm_type: "hotel",
  firm_email: "pv@gmail.com",
  proposed_job: "Barista",
  alternativ_job: "Cuisinier",
  job_city: "Paris",
  job_start_date: "2016-01-01",
  comment: "super super"
  })
Job.create!({
  firm_name: "cuillere",
  firm_type: "resto",
  firm_email: "pv@gmail.com",
  proposed_job: "Barista",
  alternativ_job: "Cuisinier",
  job_city: "Paris",
  job_start_date: "2016-01-01",
  comment: "super super super"
  })

