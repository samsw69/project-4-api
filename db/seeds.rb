[User, Event, Comment, Genre, Product].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

# collage = Genres.create!(genre: "Collage")
# abstract = Genres.create!(genre: "Abstract")


sam = User.create!(name: "Sam Wakefield",
username: "samsw69",
email: "samsw69@icloud.com",
about: "An accomplished artist working in the community, sharing knowledge and creativity to allow others to experience art.  Specialises in mixed media and collage, beaded sculpture and silver jewellery making.  Please contact me to arrange a local meet-up!",
image: File.open(File.join(Rails.root, "db/images/SamW.jpg")),
password: "password",
password_confirmation: "password")

eden = User.create!(name: "Eden WJ",
username: "EWJ",
email: "eden@ga.co",
about: "Interested in photography and textiles",
image: File.open(File.join(Rails.root, "db/images/EWJ-heart.jpg")),
password: "password",
password_confirmation: "password")

maureen = User.create!(name: "Maureen James",
username: "Moj",
email: "moj@ga.co",
about: "looking for some good homemade art",
image: File.open(File.join(Rails.root, "db/images/Moj-semi.jpg")),
password: "password",
password_confirmation: "password")

e1 = Event.create!(title: "photography link-up",
location: "FH community centre",
date: Date.new(2017, 4, 28),
description: "We will be heading to the Sedgemoor fields to work on some landscape photography.",
image: File.open(File.join(Rails.root, "db/images/countryside.jpg")), user: sam, attendees: [sam])

e2 = Event.create!(title: "mixed media art in the afternoon",
location: "artists home",
date: Date.new(2017, 5, 20),
description: "first meet-up to prep canvases for mixed collage.",
image: File.open(File.join(Rails.root, "db/images/collage.jpg")), user: eden)

Comment.create!(body: "testing testing again in events ...", user: sam, event: e2)
Comment.create!(body: "testing testing again in events - number 2 ...", user: eden, event: e1)

Product.create!(title: "Skullduggery",
description: "Embellished with beads and costume jewellery and comes framed in a 60x60cm box frame.",
price: 89.99,
image: File.open(File.join(Rails.root, "db/images/skull.jpg")),
user: eden
)

Product.create!(title: "Geisha Girl",
description: "abstract collage of a geisha, in paper, paint and sand.",
price: 109.99,
image: File.open(File.join(Rails.root, "db/images/Geisha.jpg")),
user: sam
)
