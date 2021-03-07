# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


product = Product.create(name: "Xbox", price: 400, image_url: "https://compass-ssl.xbox.com/assets/83/53/83534a33-0998-43dc-915a-4ec0a686d679.jpg?n=10202018_Panes-3-up-1400_Hero-SX_570x570.jpg", description: "gaming console")

product = Product.create(name: "Call of Duty", price: 50, image_url: "https://www.callofduty.com/content/dam/atvi/callofduty/cod-touchui/warzone/social/wz-social-share.jpg", description: "video game")

product = Product.create(name: "Playstation 5", price: 500, image_url: "https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2021%2F03%2Fsony-playstation-5-smoking-exhaust-port-dust-news-001.jpg?q=90&w=1400&cbr=1&fit=max", description: "gaming console")

product = Product.create(name: "MacBook Air", price: 900, image_url: "https://c1.neweggimages.com/ProductImage/A5EF_131967865029483699atKX7xHd3J.jpg", description: "laptop")

product = Product.create(name: "AirPods", price: 200, image_url: "https://ss7.vzw.com/is/image/VerizonWireless/apple-airpods-with-wireless-charging-case-mrxj2am-a-a?fmt=pjpg&hei=520", description: "headphones")

product = Product.create(name: "Fender Stratocaster", price: 800, image_url: "https://www.stars-music.com/medias/fender/strat-player-mex-sss-pf-hd-146087.jpg", description: "Electric Guitar")

