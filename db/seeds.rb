User.destroy_all
user_1 = User.new(email: "test@test.com", password: "123456")
user_1.save!
puts "Utilisateur créé"

Hotel.destroy_all
hotel = Hotel.new(name: "Hotel1", address: "St Marie")
hotel.save!
puts "hotel créé"

Room.destroy_all
room_1 = Room.new(price_per_night: 150, capacity: 2, hotel_id: hotel.id)
room_1.save!
room_2 = Room.new(price_per_night: 250, capacity: 3, hotel_id: hotel.id)
room_2.save!
room_3 = Room.new(price_per_night: 300, capacity: 2, hotel_id: hotel.id)
room_3.save!
room_4 = Room.new(price_per_night: 400, capacity: 1, hotel_id: hotel.id)
room_4.save!
puts "rooms créées"
