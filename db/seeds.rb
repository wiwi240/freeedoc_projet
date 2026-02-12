require 'faker'

# Nettoyage
JoinTableDoctorSpecialty.destroy_all
Appointment.destroy_all
Doctor.destroy_all
Patient.destroy_all
Specialty.destroy_all
City.destroy_all

# Création
10.times { City.create!(name: Faker::Address.city) }
5.times { Specialty.create!(name: ["Cardio", "Généraliste", "Dentiste", "Interne", "ORL"].sample) }

10.times do
  Doctor.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    zip_code: Faker::Address.zip_code,
    city: City.all.sample
  )
end

20.times do
  Patient.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city: City.all.sample
  )
end

40.times do
  Appointment.create!(
    date: Faker::Time.forward(days: 20),
    doctor: Doctor.all.sample,
    patient: Patient.all.sample,
    city: City.all.sample
  )
end