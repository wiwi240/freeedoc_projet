1. FreeDoc
File: freedoc/README.md

Markdown

# FreeDoc - Healthcare Management System

This project is a Ruby on Rails application designed to manage medical appointments.

### Database Schema
* **Doctors**: Have a first name, last name, zip code, and belong to a city.
* **Patients**: Have a first name, last name, and belong to a city.
* **Appointments**: Link a doctor and a patient at a specific time and location.
* **Specialties**: Doctors can have multiple specialties (and a specialty can belong to multiple doctors) through a join table.
* **Cities**: All entities (Doctors, Patients, Appointments) are linked to a specific city.



### Setup
1. `bundle install`
2. `rails db:migrate`
3. `rails db:seed`

### Data Visualization
To see the data in a clean table, run `rails c` and use:
`tp Doctor.all, :first_name, :last_name, "city.name"`