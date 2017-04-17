[User, Event, Comment, Genre, Product].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

# collage = Genres.create!(genre: "Collage")
# abstract = Genres.create!(genre: "Abstract")


sam = User.create!(name: "Sam Wakefield",
username: "samsw69",
email: "samsw69@icloud.com",
about: "An accomplished artist working in the community, sharing knowledge and creativity to allow others to experience art.  Specialises in mixed media and collage, beaded sculpture and silver jewellery making.  Please contact me to arrange a local meet-up!",
image: "https://s-media-cache-ak0.pinimg.com/originals/c4/4b/bf/c44bbffbe91da3a78960103f284b355b.jpg",
password: "password",
password_confirmation: "password")

eden = User.create!(name: "Eden WJ",
username: "EWJ",
email: "eden@ga.co",
about: "Interested in photography and textiles",
image: "https://shechive.files.wordpress.com/2011/03/beautiful-art-8.jpg",
password: "password",
password_confirmation: "password")

maureen = User.create!(name: "Maureen James",
username: "Moj",
email: "moj@ga.co",
about: "looking for some good homemade art",
image: "https://shechive.files.wordpress.com/2011/03/beautiful-art-8.jpg",
password: "password",
password_confirmation: "password")

e1 = Event.create!(title: "photography link-up",
location: "FH community centre",
date: Date.new(2017, 4, 28),
description: "We will be heading to the Sedgemoor fields to work on some landscape photography.",
image: "https://s-media-cache-ak0.pinimg.com/originals/e2/30/02/e23002cf95ed1204e8e2c301d661cc96.jpg",
user: sam, attendees: [eden, sam])

e2 = Event.create!(title: "mixed media art in the afternoon",
location: "artists home",
date: Date.new(2017, 5, 20),
description: "first meet-up to prep canvases for mixed collage.",
image: "https://s-media-cache-ak0.pinimg.com/originals/e2/30/02/e23002cf95ed1204e8e2c301d661cc96.jpg",
user: eden)

Comment.create!(body: "testing testing again in events ...", user: sam, event: e2)
Comment.create!(body: "testing testing again in events - number 2 ...", user: eden, event: e1)

Product.create!(title: "Skullduggery",
description: "Embellished with beads and costume jewellery and comes framed in a 60x60cm box frame.",
price: 89.99,
image: "https://s-media-cache-ak0.pinimg.com/originals/a0/86/6f/a0866fb1d8e7a72743200cfc9fc2fd28.jpg",
user: sam,
)

Product.create!(title: "Geisha Girl",
description: "abstract collage of a geisha, in paper, paint and sand.",
price: 109.99,
image: "https://s-media-cache-ak0.pinimg.com/originals/47/11/5b/47115b586d3a63efb427903ae1387a95.jpg",
user: sam,
)
