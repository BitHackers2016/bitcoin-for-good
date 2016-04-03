# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Charity.create(ein: '123456', name: 'Charity A', city: 'A City', state: 'StateA', email: 'charitya@boots.org', country: 'USA')
Charities.create({ein: '123457', name: 'Charity B', city: 'B City',
                  state: 'StateB', email: 'charityb@boots.org', country: 'USA'})
Charities.create({ein: '123458', name: 'Charity C', city: 'C City',
                  state: 'StateC', email: 'charityC@boots.org', country: 'USA'})
Charities.create({ein: '123459', name: 'Charity D', city: 'D City',
                  state: 'StateD', email: 'charityd@boots.org', country: 'USA'})
Charities.create({ein: '123460', name: 'Charity E', city: 'E City',
                  state: 'StateE', email: 'chariteboots.org', country: 'USA'})