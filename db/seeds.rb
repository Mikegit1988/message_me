# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#user = User.create(username: "innocent", password: "innocent123")
#user = User.create(username: "nerly", password: "nerly123")
#user = User.create(username: "kyrah", password: "kyrah123")
#user = User.create(username: "grace", password: "grace123")
#user = User.create(username: "eustache", password: "eustache123")
#user = User.create(username: "johane", password: "johane123")

message = Message.create(body: "Bonjour a Kyrah", user_id: "1")
message = Message.create(body: "My first birthday is today", user_id: "2")
message = Message.create(body: "I am beautiful", user_id: "1")
message = Message.create(body: "I love Daddy so much", user_id: "2")
message = Message.create(body: "I am smart", user_id: "5")