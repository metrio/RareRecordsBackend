# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Owner.destroy_all
User.destroy_all
Record.destroy_all
RecordStore.destroy_all
RecordstoreRecord.destroy_all
Wishlist.destroy_all


kristen = Owner.create(username: "LimitedtoOne", email: "dlima.nyit@gmail.com", phone: "201-334-6337", password: "1234")
lto = RecordStore.create(owner_id: kristen.id, store_name: "Limited to One", address: "221 E 10th St, New York, NY 10003")

emily = User.create(username: "mleGrace711", email: "dlima.nyit@gmail.com", phone: "201-334-6337", password: "5678")
deme = User.create(username: "metrio", email: "dlima.nyit@gmail.com", phone: "201-334-6337", password: "1357")
