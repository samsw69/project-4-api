# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[User, Event, Comment, Genre, Product].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end


[{
  name: "Sam Wakefield",
  username: "samsw69",
  email: "samsw69@icloud.com",
  about: "An accomplished artist working in the community, sharing knowledge and creativity to allow others to experience art.  Specialises in mixed media and collage, beaded sculpture and silver jewellery making.  Please contact me to arrange a local meet-up!",
  image: "https://s-media-cache-ak0.pinimg.com/originals/c4/4b/bf/c44bbffbe91da3a78960103f284b355b.jpg",
  password: "password",
  password_confirmation: "password"
}, {
  name: "Eden WJ",
  username: "EWJ",
  email: "eden@ga.co",
  about: "Interested in photography and textiles",
  image: "https://shechive.files.wordpress.com/2011/03/beautiful-art-8.jpg",
  password: "password",
  password_confirmation: "password"
  }].each do |user|
    User.create!(user)
end


[{
  title: "photography link-up",
  location: "FH community centre",
  date: Date.new(2017, 4, 28),
  description: "We will be heading to the Sedgemoor fields to work on some landscape photography . Dress warm, we leave at 6:00am to catch the light.",
  image: "https://s-media-cache-ak0.pinimg.com/originals/e2/30/02/e23002cf95ed1204e8e2c301d661cc96.jpg"
}, {
  title: "mixed media art in the afternoon",
  location: "artists home",
  date: Date.new(2017, 5, 20),
  description: "first meet-up to prep canvases for mixed collage.  This is a social event with drinks and nibbles, so join us to socialise as much as create some great artwork.",
  image: "https://s-media-cache-ak0.pinimg.com/originals/e2/30/02/e23002cf95ed1204e8e2c301d661cc96.jpg"
  }].each do |event|
    Event.create!(event)
end


}].each do |comment|
  Comment.create!(comment)
end
