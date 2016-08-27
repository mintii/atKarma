# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 
User.create(
	first_name: "Mary", 
	last_name: "Poppins", 
	email_address: "mary@poppins.com",
	phone_number: "734-123-4567", 
	city: "Chicago", 
	blocked_users: "", 
	rating: 4.9,
	password: "password")

User.create(
	first_name: "Eric", 
	last_name: "Powell", 
	email_address: "ericdawg@gmail.com", 
	phone_number: "616-123-4567", 
	city: "Chicago", 
	blocked_users: "", 
	rating: 3.9,
	password: "password")

User.create(
	first_name: "Sami", 
	last_name: "Grendel", 
	email_address: "sami_dragon@gmail.com", 
	phone_number: "273-123-4567", 
	city: "Chicago", 
	blocked_users: "", 
	rating: 5.0,
	password: "password")

Task.create(
	difficulty: 1, 
	points: 400, 
	requester_id: 2,
	completer_id: User.find_by(email_address: "ericdawg@gmail.com").id,
	category: "cooking", 
	completer_beginning_location: "latitude: 41.890939 longitude: -87.617209",
	start_time: "4:00 pm",
	finish_time: "8:30 pm",
	longitude: "-87.6264987",
	latitude: "41.8839246"
	)

Task.create(
	difficulty: 6, 
	points: 500, 
	requester_id: 3,
	completer_id: User.find_by(email_address: "ericdawg@gmail.com").id,
	category: "laundry", 
	completer_beginning_location: "latitude: 41.8840417 longitude: -87.6264987",
	start_time: "12:00 pm",
	finish_time: "8:30 pm",
	latitude: "41.9986043",
	longitude: "-87.6599763"
	)

Task.create(
	difficulty: 2, 
	points: 100, 
	requester_id: 1,
	completer_id: User.find_by(email_address: "ericdawg@gmail.com").id,
	category: "grocery", 
	completer_beginning_location: "latitude: 41.9106129 longitude: -87.6558287",
	start_time: "9:00 am",
	finish_time: "1:15 pm",
	longitude: "41.9251607",
	latitude: "-87.6554236"
	)