# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


product = Product.create(name: "Xbox", price: 400, image_url: "https://compass-ssl.xbox.com/assets/83/53/83534a33-0998-43dc-915a-4ec0a686d679.jpg?n=10202018_Panes-3-up-1400_Hero-SX_570x570.jpg", description: "gaming console")

product = Product.create(name: "Call of Duty", price: 50, image_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/ps5-1-1591910417.jpg?crop=1.00xw:0.907xh;0,0&resize=1200:*", descrption: "video game")
