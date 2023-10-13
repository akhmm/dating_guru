require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

first_file = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583493036/resto1_zs2got.jpg")
second_file = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583495099/resto02_gjektw.jpg")
third_file = URI.open("https://res.cloudinary.com/dg3jy8byy/image/upload/v1583240341/jwqhc0n6qge1o0apmcsm.jpg")
fourth_file = URI.open("https://res.cloudinary.com/dg3jy8byy/image/upload/v1583246331/c700x420_eycdpw.jpg")
fifth_file = URI.open("https://res.cloudinary.com/dg3jy8byy/image/upload/v1583241727/ivi8abpmkq3durbxc6sx.jpg")
sixth_file = URI.open("https://res.cloudinary.com/dg3jy8byy/image/upload/v1583246174/Veggie-rice-bowl-1400x919-mini-ba621247-21ff-419b-9604-3a27a255b90b-0-1400x919_lqtfuy.jpg")
seventh_file = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1584008607/sushisalsa_gyxlpb.jpg")
eighth_file = URI.open("https://res.cloudinary.com/dg3jy8byy/image/upload/v1583246102/rsz_firezza_-1_lpckbq.png")
ninth_file = URI.open("https://res.cloudinary.com/dg3jy8byy/image/upload/v1583241704/nqq1j4shbdvxajvyj0jt.jpg")
tenth_file = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583493036/resto10_juyclh.jpg")
eleventh_file = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583497714/resto_11_amhsw2.jpg")
twelfth_file = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583497713/resto_12_lll1im.jpg")
thirteenth = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583497763/resto_13revised_bcpnww.jpg")
fourteenth = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1584021720/japanese_resto_aquakyoto_phdose.jpg")
fifteenth = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1584021717/japanese_restaurant_akira_eetnvv.jpg")
sixteenth = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1584022347/shoryu_resto_x6iw9m.jpg")
seventeenth = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1584021714/hotstone_japanese_l1a306.jpg")
eightteenth = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1584021709/Wright_Brothers_fish_kk8ank.jpg")



User.destroy_all
Restaurant.destroy_all
Activity.destroy_all
Booking.destroy_all
Review.destroy_all
puts "all old data deleted"

user_1 = User.create! user_name: "Tony", email: "tony@gmail.com", password: "123456"
user_2 = User.create! user_name: "Katie", email: "cat@gmail.com", password: "123456"
puts "creating new restaurant"




    first_restaurant = Restaurant.create(
  name: "Passo Shoreditch",
  address: "Camden Passage, 33, Islington Green, London",
  category: "Italian",
  price: 60,
  open_hour: "12:30-15:00, 17:00-22:00 ",
  phone_number: "0232 983 9862",
  description: "Housemade pasta & clay-oven pizzas are among the offerings at this stylish Italian eatery & bar.",
  details_description:"Housemade pasta & clay-oven pizzas are among the offerings at this stylish Italian eatery & bar.",
  minimum_price: 40
  )
    first_restaurant.photo.attach(io: first_file, filename: "resto1_revise_mtuhwm.jpg" , content_type: 'image/jpg')

  second_restaurant = Restaurant.create(
  name: "Ippudo",
  address: "Hoxton St, London N1 6SH",
  category: "Japanese",
  price: 60,
  open_hour: "11:30-22:00",
  phone_number: "0208 983 9862",
  description: "Japanese spot for Hakata-style ramen also offers dumplings, sushi and steak in casual, modern digs.",
  details_description: "Ippudo, started in Daimyo Fukuoka (Hakata), renowned for its reinvented Hakata-style tonkotsu (pork-based) ramen. They introduced Aka-Maru (red circle) and Shiro-maru (white circle) as two main Ramen to chose from. Aka-maru has stronger broth and Shiro-maru a bit milder. Over the years, this two taste approach along with clean contemporary atmosphere and good service created new audience, especially women, and proved to work internationally as well. Ippudo brings high quality of service, environment, and good Ramen.",
  minimum_price: 40
  )
    second_restaurant.photo.attach(io: second_file, filename: "md3cimqoxws8cy9boyfj.png" , content_type: 'image/jpg')

    third_restaurant = Restaurant.create(
  name: "Pho house",
  address: "Kingsland Road",
  category: "Vietnamese",
  price: 40,
  open_hour: "11:30-21:00",
  phone_number: "0208 983 9862",
  description: "Compact and casual venue serving a range of classic noodle soup dishes from Vietnam.",
  details_description:"Compact and casual venue serving a range of classic noodle soup dishes from Vietnam.",
  minimum_price: 20
  )
    third_restaurant.photo.attach(io: third_file, filename: "jwqhc0n6qge1o0apmcsm.jpg" , content_type: 'image/jpg')

    fourth_restaurant = Restaurant.create(
  name: "Preto",
  address: "61 Richmond Avenue, London",
  category: "Grill",
  price: 60,
  open_hour: "11:30-23:30",
  phone_number: "0208 983 9862",
  description: "Unlimited spit-roasted meat from a Brazilian Churrascaria barbecue, carved at your table.",
  details_description: "Unlimited spit-roasted meat from a Brazilian Churrascaria barbecue, carved at your table.",
  minimum_price: 40
  )
    fourth_restaurant.photo.attach(io: fourth_file, filename: "c700x420_eycdpw.jpg" , content_type: 'image/jpg')

    fifth_restaurant = Restaurant.create(
  name: "The Ned",
  address: "300 Oxford St, Marylebone, London",
  category: "Seafood",
  price: 80,
  open_hour: "11:30-23:30",
  phone_number: "0208 983 9862",
  description: "Upscale chain restaurant serving sustainably sourced British fish & seafood, plus some meat dishes.",
  details_description: "Upscale chain restaurant serving sustainably sourced British fish & seafood, plus some meat dishes.",
  minimum_price: 60
  )
    fifth_restaurant.photo.attach(io: fifth_file, filename: "ivi8abpmkq3durbxc6sx.jpg" , content_type: 'image/jpg')

    sixth_restaurant = Restaurant.create(
  name: "Cafe Papaya",
  address: "Shoreditch",
  category: "Vegan",
  price: 40,
  open_hour: "11:30-22:00",
  phone_number: "0208 983 9862",
  description: "Plant-based British comfort food classics head up the Vegan menu at this edgy, fast-casual venue.",
  details_description:"Plant-based British comfort food classics head up the Vegan menu at this edgy, fast-casual venue.",
  minimum_price: 20
  )
    sixth_restaurant.photo.attach(io: sixth_file, filename: "Veggie-rice-bowl-1400x919-mini-ba621247-21ff-419b-9604-3a27a255b90b-0-1400x919_lqtfuy.jpg" , content_type: 'image/jpg')

    seventh_restaurant = Restaurant.create(
  name: "Sushi Kyoto",
  address: "Cremer St, London E2 8HD",
  category: "Japanese",
  price: 80,
  open_hour: "11:30-00:00",
  phone_number: "0208 983 9862",
  description: "Contemporary bar/restaurant with a waterside terrace and a menu of Japanese food and cocktails.",
  details_description: "Sushi Kyoto Restaurant is a Contemporary Japanese Cuisine newly introduced located in London.
Sushi Kyoto offers all the traditional dishes freshly prepared and cooked by our chefs from the popular in London. Our chefs have many years experience to cater for any need so come and enjoy one of the delicious meals with friends or family whilst relaxing in a tranquil yet modern dining area.
We pride ourselves with the high standard in food and service we offer to our customers. We had a lot of customer feedback for good service and texture in food. Sushi Kyoto is among the Best Japanese Restaurant in London.",
  minimum_price: 60
  )
    seventh_restaurant.photo.attach(io: seventh_file, filename: "169591_qxwjwp.jpg" , content_type: 'image/jpg')
    eighth_restaurant = Restaurant.create(
  name: "Brxton Italian",
  address: "Bow",
  category: "Italian",
  price: 60,
  open_hour: "11:30-23:30",
  phone_number: "0208 983 9862",
  description: "A menu focused on classic Sicilian cooking & fare in a modern, cozy setting with exposed brick.",
  details_description: "A menu focused on classic Sicilian cooking & fare in a modern, cozy setting with exposed brick.",
  minimum_price: 40
  )
    eighth_restaurant.photo.attach(io: eighth_file, filename: "rsz_firezza_-1_lpckbq.png" , content_type: 'image/jpg')

    ninth_restaurant = Restaurant.create(
  name: "Burger and Lobster",
  address: "Canary Wharf",
  category: "Seafood",
  price: 60,
  open_hour: "11:30-21:30",
  phone_number: "0208 983 9862",
  description: "Burgers, whole lobster or lobster rolls with chips and salad for set price in American-style diner.",
  details_description: "Burgers, whole lobster or lobster rolls with chips and salad for set price in American-style diner.",
  minimum_price: 40
  )
    ninth_restaurant.photo.attach(io: ninth_file, filename: "nqq1j4shbdvxajvyj0jt.jpg" , content_type: 'image/jpg')

tenth_restaurant = Restaurant.create(
  name: "TOZI",
  address: "Ariel Way, Shepherd's Bush, London",
  category: "Italian",
  price: 60,
  open_hour: "12:00-21:30",
  phone_number: "0208 983 9692",
  description: "Venetian sharing plates, cheese and meat in marble, wood and terracotta room with large group table.",
  details_description: "Venetian sharing plates, cheese and meat in marble, wood and terracotta room with large group table.",
  minimum_price: 40
  )
    tenth_restaurant.photo.attach(io: tenth_file, filename: "resto10_juyclh.jpg" , content_type: 'image/jpg')

eleventh_restaurant = Restaurant.create(
  name: "Essential Vegan Cafe",
  address: "6 Calvert Ave, Hackney, London",
  category: "Vegan",
  price: 50,
  open_hour: "09:00-22:00",
  phone_number: "0208 983 9692",
  description: "Homey, dog-friendly setting for vegan eats with a Brazilian flair, baked goods, coffee & BYOB..",
  details_description: "Homey, dog-friendly setting for vegan eats with a Brazilian flair, baked goods, coffee & BYOB.",
  minimum_price: 30
  )
    eleventh_restaurant.photo.attach(io: eleventh_file, filename: "resto10_juyclh.jpg" , content_type: 'image/jpg')

twelfth_restaurant = Restaurant.create(
  name: "Nanashi Shoreditch",
  address: "130 Hoxton St, London",
  category: "Japanese",
  price: 120,
  open_hour: "17:00-22:30",
  phone_number: "0208 983 9692",
  description: "Cozy, stylish restaurant with a Zen-like vibe for artful sushi, select sake & creative cocktails..",
  details_description: "Cozy, stylish restaurant with a Zen-like vibe for artful sushi, select sake & creative cocktails.",
  minimum_price: 100
  )
    twelfth_restaurant.photo.attach(io: twelfth_file, filename: "resto10_juyclh.jpg" , content_type: 'image/jpg')

thirteenth_restaurant = Restaurant.create(
  name: "Tanakatsu",
  address: "101 Kingsland Rd, Hackney, London E2 8DJ",
  category: "Japanese",
  price: 60,
  open_hour: "12:00-21:30",
  phone_number: "0208 983 9692",
  description: "Modern outpost serving katsu, sushi rolls & other classic Japanese entrees in a minimalist interior.",
  details_description:"Modern outpost serving katsu, sushi rolls & other classic Japanese entrees in a minimalist interior.",
  minimum_price: 40
  )
    thirteenth_restaurant.photo.attach(io: thirteenth, filename: "resto10_juyclh.jpg" , content_type: 'image/jpg')

fourteenth_restaurant = Restaurant.create(
  name: "Aqua Kyoto",
  address: "120 Hoxton St, London N1 6SH",
  category: "Japanese",
  price: 100,
  open_hour: "12:00-23:00",
  phone_number: "0208 983 9692",
  description: "Cocktails and Japanese dishes with a contemporary spin in an ultra-glossy designer rooftop setting.",
  details_description:"Cocktails and Japanese dishes with a contemporary spin in an ultra-glossy designer rooftop setting.",
  minimum_price: 80
  )
    fourteenth_restaurant.photo.attach(io: fourteenth, filename: "resto10_juyclh.jpg" , content_type: 'image/jpg')

fifteenth_restaurant = Restaurant.create(
  name: "Akira At Japan House London",
  address: "348 Old St, Hackney, London EC1V 9NQ",
  category: "Japanese",
  price: 120,
  open_hour: "18:00-23:00",
  phone_number: "020 3971 4646",
  description: "Japanese restaurant at a cultural venue plating sushi & grilled dishes on traditional tableware.",
  details_description:"Japanese restaurant at a cultural venue plating sushi & grilled dishes on traditional tableware.",
  minimum_price: 100
  )
    fifteenth_restaurant.photo.attach(io: fifteenth, filename: "resto10_juyclh.jpg" , content_type: 'image/jpg')

sixteenth_restaurant = Restaurant.create(
  name: "Hot Stone Steak and Sushi Bar",
  address: "101 Kingsland Rd, Hackney, London E2 8AG",
  category: "Japanese",
  price: 80,
  open_hour: "18:00-22:00",
  phone_number: "020 3302 8226",
  description: "Pared-down Japanese joint serving sushi, sashimi & kobe beef grilled on tableside stones.",
  details_description:"Pared-down Japanese joint serving sushi, sashimi & kobe beef grilled on tableside stones.",
  minimum_price: 60
  )
    sixteenth_restaurant.photo.attach(io: sixteenth, filename: "resto10_juyclh.jpg" , content_type: 'image/jpg')

seventeenth_restaurant = Restaurant.create(
  name: "Shoryu Ramen Shoreditch",
  address: "45 Great Eastern St, Hackney, London EC2A 4NR",
  category: "Japanese",
  price: 60,
  open_hour: "11:30-23:30",
  phone_number: "020 3302 8226",
  description: "Contemporary noodle restaurant serving a menu of ramen dishes, choice sakes and cocktails.",
  details_description:"Contemporary noodle restaurant serving a menu of ramen dishes, choice sakes and cocktails..",
  minimum_price: 40
  )
    seventeenth_restaurant.photo.attach(io: seventeenth, filename: "resto10_juyclh.jpg" , content_type: 'image/jpg')

eightteenth_restaurant = Restaurant.create(
  name: "Wright Brothers",
  address: "100 East Rd, Hoxton, London N1 6AA",
  category: "Seafood",
  price: 80,
  open_hour: "17:00-23:00",
  phone_number: "020 7324 7730",
  description: "Located in Spitalfields Market, this seafood spot with a marble bar is known for its oysters.",
  details_description:"Located in Spitalfields Market, this seafood spot with a marble bar is known for its oysters.",
  minimum_price: 60
  )
    eightteenth_restaurant.photo.attach(io: eightteenth, filename: "resto10_juyclh.jpg" , content_type: 'image/jpg')







# activity seeding(museum picture)
puts "creating new activity"

one = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583356609/01_muse_Victoria-and-Albert-museum-London_yqxpqc.jpg")
two = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583359769/02_replace_british_museum_cim7lu.jpg")
three = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583359073/03_muse_RIB-0019996-1360x765_zma1gz.jpg")
four = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583359073/4_muse_Natural-History-Museum_bddygg.jpg")
five = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583360402/05_national-gallery-view-from-trafalgar-square-p3346_007_w3faci.jpg")
six = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583359073/4_muse_Natural-History-Museum_bddygg.jpg")
seven = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583501019/07_broadway_market_kappn6.jpg")
eight = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583501020/08_netil_market_w04g78.jpg")
nine = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583501019/09_victoria_park_market_pbknhf.jpg")
ten = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583501019/10_bricklane_market_boxwli.jpg")
eleven = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583501019/11_oldspitalfield_market_bdvidp.jpg")
twelve = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583501020/12_bloombury_lane_n3ezx0.jpg")
thirteen = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583501019/13_bounce_old_street_tixjez.jpg")
fourteen = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1584019884/ben-hershey-4_n_qvud5tk-unsplash_f5uqbp.jpg")
fifteen = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583501761/15_climbing_ipqkb1.jpg")
sport_one = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1584022991/Untitled_design_1_gmgbxd.png")
sport_three = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1584008735/zapspace_x6qjyj.jpg")
sport_four = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1584028674/sport_four_replaced_doumve.jpg")
sport_five = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1584024341/vince-fleming-PhwLrQ40XG0-unsplash_tw806i.jpg")
sport_six = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1584024336/flo-karr-nCj0zBLIaAk-unsplash_ccpvra.jpg")
sport_seven = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1584024968/kayaking_sport_pszju7.jpg")
sport_eight = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1584024350/DClk6WmXUAATPoD_rzh5o9.jpg")
sport_nine = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1584024348/Couples-Yoga_lxwsjb.jpg")
sport_ten = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1584033322/rowing1_wioxre.jpg")

# activity seeding(museum data)

a_eight = Activity.create(
  name: "Netil Market",
  address: "13-23 Westgate Street, E8 3RL",
  open_hour: "Saturdays, 11:00-18:00",
  phone_number: "020 7770 6028",
  category: "Market",
  description: "Creative community of traders in arts, fashion and food, with a bar and Saturday stalls.",
  details_description: "Creative community of traders in arts, fashion and food, with a bar and Saturday stalls.",
  price: 0,
  minimum_price: 0
)

a_eight.photo.attach(io: eight, filename: "Untitled_design_rtvzta.png" , content_type: 'image/png')


a_sport_four = Activity.create(
  name: "Bat and Ball",
  address: "Westfield stratford city, The Street, London E20 1EN",
  open_hour: "11:00-19:00",
  phone_number: "020 3058 3020",
  category: "Sport",
  description: "Spread across two huge floors and home to 10 championship sized ping pong tables ",
  details_description: "Spread across two huge floors and home to 10 championship sized ping pong tables ",
  price: 40,
  minimum_price: 20
)

a_sport_four.photo.attach(io: sport_four, filename: "02_replace_british_museum_cim7lu.jpg" , content_type: 'image/jpg')




a_one = Activity.create(
  name: "Victoria and Albert Museum",
  address: "Cromwell Rd, South Kensington, London SW7 5BD",
  open_hour: "10:00-17:45",
  price: 0,
  description:"Blockbuster exhibitions and permanent decorative arts collection, with design shop and ornate cafe.",
  phone_number: "020 7942 2000",
  category: "Museum",
  details_description: "The Victoria and Albert Museum (often abbreviated as the V&A) in London is the world's largest museum of applied and decorative arts and design, as well as sculpture, housing a permanent collection of over 2.27 million objects.[4] It was founded in 1852 and named after Queen Victoria and Prince Albert.
  The V&A is located in the Brompton district of the Royal Borough of Kensington and Chelsea, in an area that has become known as 'Albertopolis' because of its association with Prince Albert, the Albert Memorial and the major cultural institutions with which he was associated. These include the Natural History Museum, the Science Museum, the Royal Albert Hall and Imperial College London. The museum is a non-departmental public body sponsored by the Department for Digital, Culture, Media and Sport. As with other national British museums, entrance is free.
  The V&A covers 12.5 acres (5.1 ha)[5] and 145 galleries. Its collection spans 5,000 years of art, from ancient times to the present day, from the cultures of Europe, North America, Asia and North Africa. However, the art of antiquity in most areas is not collected. The holdings of ceramics, glass, textiles, costumes, silver, ironwork, jewellery, furniture, medieval objects, sculpture, prints and printmaking, drawings and photographs are among the largest and most comprehensive in the world.",
  minimum_price: 0
)
a_one.photo.attach(io: one, filename: "01_muse_Victoria-and-Albert-museum-London_yqxpqc.jpg" , content_type: 'image/jpg')




a_two = Activity.create(
  name: "British Museum",
  address: "Great Russell St, Bloomsbury, London WC1B 3DG",
  open_hour: "10:00-17:30",
  phone_number: "020 7323 8299",
  category: "Theatre",
  description: "Huge showcase for global antiquities, including Egyptian mummies and ancient Greek sculptures.",
  details_description: "Huge showcase for global antiquities, including Egyptian mummies and ancient Greek sculptures.",
  price: 0,
  minimum_price: 0
)
a_two.photo.attach(io: two, filename: "02_replace_british_museum_cim7lu.jpg" , content_type: 'image/jpg')
a_ten = Activity.create(
  name: "Brick Lane Market",
  address: "Brick Ln, Spitalfields, London E1 6QR",
  open_hour: "10:00-18:00",
  phone_number: "020 7770 6028",
  category: "Market",
  description: "London street running from London Fields to the Regent's Canal in the London Borough of Hackney.",
  details_description: "London street running from London Fields to the Regent's Canal in the London Borough of Hackney.",
  price:0,
  minimum_price: 0
)
a_ten.photo.attach(io: ten, filename: "Untitled_design_rtvzta.png" , content_type: 'image/png')

a_sport_one = Activity.create(
  name: "Krav Maga Class",
  address: "43 Hoxton St, Hackney, London N1 6QN",
  open_hour: "15:00-21:00",
  phone_number: "020 8432 2023",
  category: "Sport",
  description: "Krav Maga is a military self-defence and fighting system developed for the Israel Defense Forces",
  details_description: "Krav Maga was developed in the 1930s by Imi Lichtenfeld, who in 1948 became Chief Instructor of Physical Fitness and Krav Maga for the Israeli Defence Force (IDF). After he started the IKMA in 1978, the FBI sent 22 people to Israel to attend a Krav Maga Basic Instructor Course, since which time it has expanded all over the world. ",
  price: 60,
  minimum_price: 30
)


a_sport_one.photo.attach(io: sport_one, filename: "02_replace_british_museum_cim7lu.jpg" , content_type: 'image/jpg')


a_three = Activity.create(
  name: "Tate Modern",
  address: "Bankside, London SE1 9TG",
  open_hour: "10:00-18:00",
  phone_number: "020 7887 8888",
  category: "Museum",
  description: "Modern-art gallery with international works on display, plus a cafe with panoramic river views.",
  details_description: "Modern-art gallery with international works on display, plus a cafe with panoramic river views.",
  price:0,
  minimum_price: 0
)
a_three.photo.attach(io: three, filename: "03_muse_RIB-0019996-1360x765_zma1gz.jpg" , content_type: 'image/jpg')

a_four = Activity.create(
  name: "Natural History Museum",
  address: "Cromwell Rd, South Kensington, London SW7 5BD",
  open_hour: "10:00-17:50",
  phone_number: "020 7942 5000",
  category: "Museum",
  description: "Huge showcase for global antiquities, including Egyptian mummies and ancient Greek sculptures.",
  details_description: "Huge showcase for global antiquities, including Egyptian mummies and ancient Greek sculptures.",
  price:0,
  minimum_price: 0
)
a_four.photo.attach(io: four, filename: "4_muse_Natural-History-Museum_bddygg.jpg" , content_type: 'image/jpg')


a_five = Activity.create(
  name: "The National Gallery",
  address: "Trafalgar Square, Charing Cross, London WC2N 5DN",
  open_hour: "10:00-18:00",
  phone_number: "020 7747 2885",
  category: "Museum",
  description: "Modern-art gallery with international works on display, plus a cafe with panoramic river views.",
  details_description: "Modern-art gallery with international works on display, plus a cafe with panoramic river views.",
  price:0,
  minimum_price: 0
)
a_five.photo.attach(io: five, filename: "05_national-gallery-view-from-trafalgar-square-p3346_007_w3faci.jpg" , content_type: 'image/jpg')

a_fifteen = Activity.create(
  name: "Mile End Climbing Wall",
  address: "Haverfield Rd, London E3 5BE",
  open_hour: "11:00-21:00",
  phone_number: "020 7183 1979",
  category: "Sport",
  description: "Bringing London's climbers together since 1986. Gift Vouchers. Give the gift of climbing to your loved ones.",
  details_description: "Bringing London's climbers together since 1986. Gift Vouchers. Give the gift of climbing to your loved ones.",
  price: 50,
  minimum_price: 30
)
a_fifteen.photo.attach(io: fifteen, filename: "Untitled_design_rtvzta.png" , content_type: 'image/png')
a_six = Activity.create(
  name: "Design Museum",
  address: "224-238 Kensington High St, Kensington, London W8 6AG",
  open_hour: "10:00-18:00",
  phone_number: "020 3862 5900",
  category: "Museum",
  description: "Huge showcase for global antiquities, including Egyptian mummies and ancient Greek sculptures.",
  details_description: "Huge showcase for global antiquities, including Egyptian mummies and ancient Greek sculptures.",
  price:0,
  minimum_price: 0
)
a_six.photo.attach(io: six, filename: "Untitled_design_rtvzta.png" , content_type: 'image/png')
# weekend market
a_seven = Activity.create(
  name: "Broadway Market",
  address: "Broadway Market, E8 4QJ",
  open_hour: "Saturdays 9:00-17:00.",
  phone_number: "020 7770 6028",
  category: "Market",
  description: "London street running from London Fields to the Regent's Canal in the London Borough of Hackney.",
  details_description: "London street running from London Fields to the Regent's Canal in the London Borough of Hackney.",
  price: 0,
  minimum_price: 0
)
a_seven.photo.attach(io: seven, filename: "Untitled_design_rtvzta.png" , content_type: 'image/png')




a_sport_three = Activity.create(
  name: "ZAPspace Trampoline Park",
  address: "369 High St, London E15 4QZ",
  open_hour: "11:00-17:00",
  phone_number: "020 8555 7029",
  category: "Sport",
  description: "Jump Up. Get Down. At the new Trampoline Park in East London. .",
  details_description: "Jump Up. Get Down. At the new Trampoline Park in East London. ",
  price: 30,
  minimum_price: 10
)

a_sport_three.photo.attach(io: sport_three, filename: "02_replace_british_museum_cim7lu.jpg" , content_type: 'image/jpg')





a_nine = Activity.create(
  name: "Victoria Park Market",
  address: "56-57, Gore Rd, London E9 7HN",
  open_hour: "Sundays 10:00-16:00",
  phone_number: "020 7770 6028",
  category: "Market",
  description: "Brick Lane Market is a London market centred on Brick Lane, in Tower Hamlets in east London.",
  details_description: "Brick Lane Market is a London market centred on Brick Lane, in Tower Hamlets in east London.",
  price: 0,
  minimum_price: 0
)
a_nine.photo.attach(io: nine, filename: "Untitled_design_rtvzta.png" , content_type: 'image/png')
a_eleven = Activity.create(
  name: "Old Spitalfields Market",
  address: "16 Commercial St, Spitalfields, London E1 6EW",
  open_hour: "10:00-18:00",
  phone_number: "020 7770 6028",
  category: "Market",
  description: "Creative community of traders in arts, fashion and food, with a bar and Saturday stalls.",
  details_description: "Creative community of traders in arts, fashion and food, with a bar and Saturday stalls.",
  price:0,
  minimum_price: 0
)
a_eleven.photo.attach(io: eleven, filename: "Untitled_design_rtvzta.png" , content_type: 'image/png')
#sport
a_twelve = Activity.create(
  name: "Bloomsbury Lanes",
  address: "Tavistock Hotel Bedford Way London WC1H 9EU",
  open_hour: "12:00-0:00",
  phone_number: "020 7183 1979",
  category: "Sport",
  description: "8 bowling lanes and DJ plus pizzas and burgers in American diner, with private karaoke booths.",
  details_description: "8 bowling lanes and DJ plus pizzas and burgers in American diner, with private karaoke booths.",
  price: 40,
  minimum_price: 20
)
a_twelve.photo.attach(io: twelve, filename: "Untitled_design_rtvzta.png" , content_type: 'image/png')

a_fourteen = Activity.create(
  name: "Tower Hamlets Tennis",
  address: "Victoria Park, London E9 5DY",
  open_hour: "9:00-21:00",
  phone_number: "020 7183 1979",
  category: "Sport",
  description: "Community Tennis club online court booking. Shadwell, Victoria Park, Canary Wharf - East London.",
  details_description:"Community Tennis club online court booking. Shadwell, Victoria Park, Canary Wharf - East London.",
  price: 40,
  minimum_price: 20
)
a_fourteen.photo.attach(io: fourteen, filename: "Untitled_design_rtvzta.png" , content_type: 'image/png')


#new seeding



a_sport_five = Activity.create(
  name: "Archery Fit",
  address: "Hatfield House, Merryweather Place, London, SE10 8EW",
  open_hour: "12:00-21:00",
  phone_number: "020 789 3544",
  category: "Sport",
  description: "Archery Fit is the best indoor archery club in London, UK. We are conveniently located in west Greenwich.",
  details_description: "Archery Fit is the best indoor archery club in London, UK. We are conveniently located in west Greenwich.",
  price: 60,
  minimum_price: 40
)

a_sport_five.photo.attach(io: sport_five, filename: "02_replace_british_museum_cim7lu.jpg" , content_type: 'image/jpg')

a_sport_six = Activity.create(
  name: "CC-London CYCLING",
  address: "30 Gresham Street, London EC2V 7PG",
  open_hour: "12:00-21:00",
  phone_number: "020 324 3543",
  category: "Sport",
  description: "We organise a selection of club rides every weekend to suit all abilities, as well as meeting in Regent’s Park.",
  details_description: "We organise a selection of club rides every weekend to suit all abilities, as well as meeting in Regent’s Park.",
  price: 40,
  minimum_price: 20
)

a_sport_six.photo.attach(io: sport_six, filename: "02_replace_british_museum_cim7lu.jpg" , content_type: 'image/jpg')


a_sport_seven = Activity.create(
  name: "Kayaking London",
  address: "106 Cheyne Walk, Chelsea, London SW10 0DG",
  open_hour: "11:00-19:00",
  phone_number: "07976 753924",
  category: "Sport",
  description: "Kayak on one of the world's most iconic stretches of water.",
  details_description: "Kayak on one of the world's most iconic stretches of water.",
  price: 40,
  minimum_price: 20
)

a_sport_seven.photo.attach(io: sport_seven, filename: "02_replace_british_museum_cim7lu.jpg" , content_type: 'image/jpg')

a_sport_eight = Activity.create(
  name: "London Fields Lido",
  address: "30 Gresham Street, London EC2V 7PG",
  open_hour: "10:00-18:00",
  phone_number: "020 7254 9038",
  category: "Sport",
  description: "London Fields Lido is heated outdoor swimming pool open all year round and located in Hackney.",
  details_description: "London Fields Lido is heated outdoor swimming pool open all year round and located in Hackney.",
  price: 30,
  minimum_price: 10
)

a_sport_eight.photo.attach(io: sport_eight, filename: "02_replace_british_museum_cim7lu.jpg" , content_type: 'image/jpg')

a_sport_nine = Activity.create(
  name: "AcroYogaDance Studio",
  address: "49 Tanner St, Bermondsey, London SE1 3PL",
  open_hour: "11:00-16:00",
  phone_number: "020 3322 2573",
  category: "Sport",
  description: "First AcroYoga Studio based in London Bridge.The Studio offers Courses, Academy, Workshops & Teacher Training.",
  details_description: "First AcroYoga Studio based in London Bridge.The Studio offers Courses, Academy, Workshops & Teacher Training.",
  price: 60,
  minimum_price: 40
)

a_sport_nine.photo.attach(io: sport_nine, filename: "02_replace_british_museum_cim7lu.jpg" , content_type: 'image/jpg')

a_sport_ten = Activity.create(
  name: "Rowing in the Park",
  address: "Bow, London E9 7DE",
  open_hour: "11:00-17:00",
  phone_number: "07852 127895",
  category: "Sport",
  description: "After 30 years Regal Boat Hire has returned rowing boats & pedalos to Victoria park.",
  details_description: "After 30 years Regal Boat Hire has returned rowing boats & pedalos to Victoria park.",
  price: 30,
  minimum_price: 10
)

a_sport_ten.photo.attach(io: sport_ten, filename: "02_replace_british_museum_cim7lu.jpg" , content_type: 'image/jpg')


# a_thirteen = Activity.create(
#   name: "Bounce Old Street",
#   address: "241 Old St, Old Street, London EC1V 9EY",
#   open_hour: "16:00-0:00",
#   phone_number: "020 7183 1979",
#   category: "Sport",
#   description: "Bounce is Europe's largest purpose-built 'Social Ping Pong Club' in London's most fun & vibrant destinations",
#   price: 40
# )

# a_thirteen.photo.attach(io: thirteen, filename: "Untitled_design_rtvzta.png" , content_type: 'image/png')


# a_thirteen = Activity.create(
#   name: "Bounce Old Street",
#   address: "241 Old St, Old Street, London EC1V 9EY",
#   open_hour: "16:00-0:00",
#   phone_number: "020 7183 1979",
#   category: "Sport",
#   description: "Bounce is Europe's largest purpose-built 'Social Ping Pong Club' in London's most fun & vibrant destinations",
#   price: 40
# )

# a_thirteen.photo.attach(io: thirteen, filename: "Untitled_design_rtvzta.png" , content_type: 'image/png')


Activity.all.each do |activity|
  1.times do
  review = Review.new(
    content: ["Nice staff and atmosphere, cool exhibitions and very easy to reach location", "A place to remember.We had great time there! Interesting people, cool atmosphere"].sample,
    rating: [4,5].sample,

    activity: activity,
    )
  review.user = user_2
  review.save!

  end
end

Restaurant.all.each do |restaurant|
  1.times do
 review2 = Review.new(
    content: ["Delicious restaurant!!! The food is really interesting, a culinary experience at an af-fordable price! The mix of cuisines is surprisingly perfect and the owners are abso-lutely lovely. I very strongly recommend!! (This is my first ever food review, it shows how much i liked this place),
      The food is amazing! The burger is incredible!! The place is very nice and the peo-ple working there are very friendly. It has been such a great experience! I recomendit to everybody!!!"].sample,
    rating: [4,5].sample,
    restaurant: restaurant,
    )
   review2.user = user_2
   review2.save!
  end
end
