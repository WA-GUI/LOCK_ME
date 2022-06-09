# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Service.destroy_all
Service.create(name: "Cleaning", price: 100, tagligne: "test", photo: "charly-cleaning", description: "ojof jnrfij irjf ijr fi jrifj ij kj rfkj kirjf ikj rfij irj rfij rkjf ijnriofnjoiutnvorneioernrjtvpijrnvpijnrtijnvpjnretpijenvfc")
Service.create(name: "Cooking", price: 100, tagligne: "test", photo: "cooking")
# Service.create(name: "Call Boy", price: 300, tagligne: "test", photo: "images/Charly1")
Service.create(name: "Body Sushis", price: 100, tagligne: "test", photo: "charly-sushis")
Service.create(name: "Dance", price: 200, tagligne: "test", photo: "dance")
Service.create(name: "Coach Sportif", price: 250, tagligne: "test", photo: "charly-coach")
Service.create(name: "Body Massage", price: 150, tagligne: "test", photo: "charly-massage")
# Service.create(name: "Full Service", price: 500)
puts "#{Service.count} services created"
