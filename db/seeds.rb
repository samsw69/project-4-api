[User, Event, Comment, Genre, Product].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

cross_stitch = Genre.create!(name: "Cross Stitch")
embroidery = Genre.create!(name: "Embroidery")
photography = Genre.create!(name: "Photography")
sculpture = Genre.create!(name: "Sculpture")
oil = Genre.create!(name: "Oil")
textiles = Genre.create!(name: "Textiles")
floral_arrangement = Genre.create!(name: "Floral")
mixed_media = Genre.create!(name: "Mixed Media")
beading = Genre.create!(name: "Beading")


sam = User.create!(name: "Sam Wakefield",
username: "samsw69",
email: "samsw69@icloud.com",
about: "Specialises in mixed media and collage, beaded sculpture and silver jewellery making.  Please contact me to arrange a local meet-up!",
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
image: File.open(File.join(Rails.root, "db/images/maureen.jpg")),
password: "password",
password_confirmation: "password")

jake = User.create!(name: "Jake Adams",
username: "JakeyPops",
email: "jake@ga.co",
about: "a master of the cross stitch, I love trying all art and will be looking into knitted tree-wraps next",
image: File.open(File.join(Rails.root, "db/images/jakey_pops.jpg")),
password: "password",
password_confirmation: "password")

buki = User.create!(name: "Buki Thomson",
username: "BukiT",
email: "buki@ga.co",
about: "life drawing specialist, interested in the female form - always looking for subjects to draw.",
image: File.open(File.join(Rails.root, "db/images/buki.jpg")),
password: "password",
password_confirmation: "password")

alice = User.create!(name: "Alice Marshall",
username: "Big Al",
email: "alice@ga.co",
about: "cross stitch - the best in town - looking for a worthy competitor in the are of armchair doilies",
image: File.open(File.join(Rails.root, "db/images/alice.jpg")),
password: "password",
password_confirmation: "password")

ajay = User.create!(name: "Ajay Lard",
username: "Lardhouse",
email: "ajay@ga.co",
about: "specialist in all things pineapple.  Available for (pineapple) art commissions",
image: File.open(File.join(Rails.root, "db/images/pineapple_head.jpg")),
password: "password",
password_confirmation: "password")

e1 = Event.create!(title: "photography link-up",
location: "FH community centre",
date: Date.new(2017, 4, 28),
genre_id: 3,
description: "We will be heading to the Sedgemoor fields to work on some landscape photography.",
image: File.open(File.join(Rails.root, "db/images/countryside.jpg")), user: sam, attendees: [sam, jake, buki])
Comment.create!(body: "will wellies be provided?", user: buki, event: e1)

e2 = Event.create!(title: "mixed media art in the afternoon",
location: "artists home",
date: Date.new(2017, 5, 20),
genre_id: 8,
description: "first meet-up to prep canvases for mixed collage.",
image: File.open(File.join(Rails.root, "db/images/collage.jpg")), user: eden)

Comment.create!(body: "shall I bring the prosecco...", user: sam, event: e2)
Comment.create!(body: "and some crisps...", user: eden, event: e2)

e3 = Event.create!(title: "cross stitch masters - Heat 1",
location: "Stratford town hall",

date: Date.new(2017, 5, 27),
genre_id: 1,
description: "hotly contested competition for the cross-stitch queen - first round - kick-off at 7pm sharp!",
image: File.open(File.join(Rails.root, "db/images/cross_stitch_comp.jpg")), user: alice, attendees: [alice, jake, buki, ajay])

Comment.create!(body: "bring it on Alice - gunning for the crown ...", user: jake, event: e3)
Comment.create!(body: "is it too late to enter guys? ...", user: buki, event: e3)
Comment.create!(body: "Jake, it ended in tears last year.  Are you sure you can bring your A-stitch?", user: alice, event: e3)

Product.create!(title: "Skullduggery",
description: "Embellished with beads and costume jewellery and comes framed in a 60x60cm box frame.",
genre_ids: [2],
price: 89.99,
image: File.open(File.join(Rails.root, "db/images/skull.jpg")),
user: eden,
)
Product.create!(title: "Skullbeadery",
description: "Embellished with beads and costume jewellery - framed in a 60x60cm box frame.",
genre_ids: [2],
price: 89.99,
image: File.open(File.join(Rails.root, "db/images/aztec_skull.jpg")),
user: eden,
)
Product.create!(title: "Girl with Tea",
description: "abstract collage of an oriental lady drinking from a red tea cup.",
genre_ids: [8],
price: 109.99,
image: File.open(File.join(Rails.root, "db/images/j_tea.jpg")),
user: sam
)
Product.create!(title: "Girl with Tea II",
description: "abstract collage of an oriental lady drinking from a red & white tea cup.",
genre_ids: [8],
price: 109.99,
image: File.open(File.join(Rails.root, "db/images/tea.jpg")),
user: sam
)
Product.create!(title: "Bead art",
description: "A vibrant colourful picture which includes a variety of coloured beads.",
genre_ids: [9],
price: 15.50,
image: File.open(File.join(Rails.root, "db/images/bead_art.jpg")),
user: maureen
)
Product.create!(title: "Heart cusion in cross stitch",
description: "Beautiful pillow - grey with red heart 40x40cm - hand stitched.",
genre_ids: [1],
price: 9.99,
image: File.open(File.join(Rails.root, "db/images/cushio_heart.jpg")),
user: alice
)
Product.create!(title: "cross stitch colourful cushion",
description: "handmade cross stitch made with love!",
genre_ids: [1],
price: 19.99,
image: File.open(File.join(Rails.root, "db/images/cushion_cross_stitch.jpg")),
user: jake
)
Product.create!(title: "GSP Pillow",
description: "handmade cushions for German Shorthaired Pointer fans!",
genre_ids: [1],
price: 19.99,
image: File.open(File.join(Rails.root, "db/images/GSP.jpg")),
user: sam
)
Product.create!(title: "Awkward balloon",
description: "personal stories told through cross stitch - a boy and his balloon #awkward.",
genre_ids: [1],
price: 2.99,
image: File.open(File.join(Rails.root, "db/images/awkward_balloon.jpg")),
user: alice
)
Product.create!(title: "Geisha Girl",
description: "abstract collage of a geisha, in paper, paint and sand.",
genre_ids: [8],
price: 109.99,
image: File.open(File.join(Rails.root, "db/images/Geisha.jpg")),
user: sam
)
Product.create!(title: "cat pew...",
description: "edgy gift for a loved one - gun toting cat!",
genre_ids: [1],
price: 19.99,
image: File.open(File.join(Rails.root, "db/images/cat_pew.jpg")),
user: jake
)
Product.create!(title: "golden pineapple",
description: "stunning disco-inspired pineapple.",
genre_ids: [4],
price: 399.99,
image: File.open(File.join(Rails.root, "db/images/pineapple.jpg")),
user: ajay
)
Product.create!(title: "Coloured pencil peacock",
description: "274x184cm piece of art which does not include a frame.",
genre_ids: [8],
price: 7.00,
image: File.open(File.join(Rails.root, "db/images/peacock.jpg")),
user: sam
)
Product.create!(title: "Embroidery stool",
description: "Extravagant piece of art that can be put to use everyday, varnished oak legs.",
genre_ids: [2, 6],
price: 35.00,
image: File.open(File.join(Rails.root, "db/images/embroidery_stool.jpg")),
user: ajay
)
Product.create!(title: "Floral letter P",
description: "vintage look on a letter of your choose, bold colours with the dimensions being 193x261cm.",
genre_ids: [7],
price: 24.99,
image: File.open(File.join(Rails.root, "db/images/floral_letter.jpg")),
user: maureen
)
Product.create!(title: "Newspaper girl",
description: "Subtle collage of a girl with a illuminating crown.",
genre_ids: [8],
price: 20.00,
image: File.open(File.join(Rails.root, "db/images/newspaper_girl.jpg")),
user: buki
)
Product.create!(title: "Oil painting",
description: "A gorgeous picture that captures the bright light from the sunset using oil colours to create it.",
genre_ids: [5],
price: 12.89,
image: File.open(File.join(Rails.root, "db/images/water_lily.jpg")),
user: maureen
)
Product.create!(title: "The Raven",
description: "A picture that uses collage to create an image of a Raven.",
genre_ids: [8],
price: 9.99,
image: File.open(File.join(Rails.root, "db/images/raven.jpg")),
user: sam
)
