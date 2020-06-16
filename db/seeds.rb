# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

FavoriteBook.destroy_all
FavoriteRhyme.destroy_all
Rhyme.destroy_all
Book.destroy_all
BookCategory.destroy_all
RhymeCategory.destroy_all
User.destroy_all

10.times do 
  User.create(
    name: Faker::Name.first_name,
    username: Faker::Twitter.screen_name,
    age: rand(2..14),
    birthday: Faker::Date.birthday(min_age: 2, max_age: 14)
  )
end

llama = BookCategory.create(name: "Llama Llama")
eric_carl = BookCategory.create(name: "Eric Carle")
give_a_mouse_a_cookie = BookCategory.create(name: "If You Give a Mouse A Cookie")

Book.create(
  title: "Llama Llama Misses Mama",
  video_url: "https://www.youtube.com/watch?v=9xB6i1ReuT8",
  author: "Anna Dewdney",
  book_category_id: llama.id,
  img_url: "LlamaMisses.jpg"
)

Book.create(
  title: "Llama Llama Red Pajama",
  video_url: "https://www.youtube.com/watch?v=HD1g3P-nKWo",
  author: "Anna Dewdney",
  book_category_id: llama.id,
  img_url: "LlamaPajama.jpg"
)

Book.create(
  title: "Llama Llama Mad at Mama",
  video_url: "https://www.youtube.com/watch?v=Ka-tznfolzE",
  author: "Anna Dewdney",
  book_category_id: llama.id,
  img_url: "LlamaMad.jpg"
)

Book.create(
  title: "Llama Llama Holiday Drama",
  video_url: "https://www.youtube.com/watch?v=qkxVDaW_ls0",
  author: "Anna Dewdney",
  book_category_id: llama.id,
  img_url: "LlamaHoliday.jpg"
)

Book.create(
  title: "The Very Hungry Caterpillar",
  video_url: "https://www.youtube.com/watch?v=vkYmvxP0AJI",
  author: "Eric Carle",
  book_category_id: eric_carl.id,
  img_url: "Caterpillar.jpg"
)

Book.create(
  title: "The Mixed-Up Chameleon",
  video_url: "https://www.youtube.com/watch?v=FrmZeXf7ScU",
  author: "Eric Carle",
  book_category_id: eric_carl.id,
  img_url: "Chameleon.jpg"
)

Book.create(
  title: "Brown Bear, Brown Bear, What Do You See?",
  video_url: "https://www.youtube.com/watch?v=9-NlZH_HcOw&t=12s",
  author: "Eric Carle",
  book_category_id: eric_carl.id,
  img_url: "Bear.jpg"
)

Book.create(
  title: "If You Give a Mouse A Cookie",
  video_url: "https://www.youtube.com/watch?v=Gyk55GYnGl0",
  author: "Laura Numeroff",
  book_category_id: give_a_mouse_a_cookie.id,
  img_url: "cookie.jpg"
)

Book.create(
  title: "If You Give a Mouse An Iphone",
  video_url: "https://www.youtube.com/watch?v=S3nVxt6_lAc",
  author: "Ann Droyd",
  book_category_id: give_a_mouse_a_cookie.id,
  img_url: "iphone.jpg"
)

Book.create(
  title: "If You Give a Moose a Muffin",
  video_url: "https://www.youtube.com/watch?v=PBIXvlO_RBs",
  author: "Laura Numeroff",
  book_category_id: give_a_mouse_a_cookie.id,
  img_url: "muffin.jpg"
)

Book.create(
  title: "If You Give a Pig a Pancake",
  video_url: "https://www.youtube.com/watch?v=jNiAktHBZa4",
  author: "Laura Numeroff",
  book_category_id: give_a_mouse_a_cookie.id,
  img_url: "pancake.jpg"
)

Book.create(
  title: "If You Give a Mouse a Brownie",
  video_url: "https://www.youtube.com/watch?v=kL0fij_JU2g",
  author: "Laura Numeroff",
  book_category_id: give_a_mouse_a_cookie.id,
  img_url: "brownie.jpg"
)


20.times do
  FavoriteBook.create(
    user: User.all.sample,
    book: Book.all.sample
  )
end


animals = RhymeCategory.create(name: "Animals")
goodnight = RhymeCategory.create(name: "Goodnight")
sun_and_rain = RhymeCategory.create(name: "Sun and Rain")
movement = RhymeCategory.create(name: "Movement")


Rhyme.create(
  title: "Twinkle, Twinkle Little Star",
  video_url: "https://youtu.be/yCjJyiqpAuU",
  rhyme_category_id: goodnight.id,
  img_url: "twinkle.jpg"
)

Rhyme.create(
  title: "Goodnight, Sleep Tight",
  video_url: "https://youtu.be/3xjgBTTJYqI",
  rhyme_category_id: goodnight.id,
  img_url: "sleeptight.jpg"
)

Rhyme.create(
  title: "Rock-a-bye Baby",
  video_url: "https://www.youtube.com/watch?v=NQItZVlGu8g",
  rhyme_category_id: goodnight.id,
  img_url: "rockabye.jpg"
)

Rhyme.create(
  title: "The Itsy, Bitsy Spider",
  video_url: "https://www.youtube.com/watch?v=w_lCi8U49mY",
  rhyme_category_id: sun_and_rain.id,
  img_url: "spider.jpg"
)

Rhyme.create(
  title: "It's Raining It's Pouring",
  video_url: "https://www.youtube.com/watch?v=avurCRJiUj0",
  rhyme_category_id: sun_and_rain.id,
  img_url: "raining.jpg"
)

Rhyme.create(
  title: "Rain, Rain Go Away",
  video_url: "https://www.youtube.com/watch?v=Zu6o23Pu0Do",
  rhyme_category_id: sun_and_rain.id,
  img_url: "rain.jpg"
)


Rhyme.create(
  title: "Mr. Golden Sun",
  video_url: "https://www.youtube.com/watch?v=hlzvrEfyL2Y",
  rhyme_category_id: sun_and_rain.id,
  img_url: "sun.jpg"
)

Rhyme.create(
  title: "Head Shoulders Knees and Toes",
  video_url: "https://www.youtube.com/watch?v=WX8HmogNyCY",
  rhyme_category_id: movement.id,
  img_url: "head.jpg"
)

Rhyme.create(
  title: "Row, Row, Row Your Boat",
  video_url: "https://www.youtube.com/watch?v=7otAJa3jui8",
  rhyme_category_id: movement.id,
  img_url: "row.jpg"
)

Rhyme.create(
  title: "If You're Happy and You Know It",
  video_url: "https://www.youtube.com/watch?v=l4WNrvVjiTw",
  rhyme_category_id: movement.id,
  img_url: "happy.jpg"
)

Rhyme.create(
  title: "The Wheels on the Bus",
  video_url: "https://www.youtube.com/watch?v=yWirdnSDsV4",
  rhyme_category_id: movement.id,
  img_url: "bus.jpg"
)

Rhyme.create(
  title: "Five Little Ducks",
  video_url: "https://www.youtube.com/watch?v=pZw9veQ76fo",
  rhyme_category_id: animals.id,
  img_url: "ducks.jpg"
)

Rhyme.create(
  title: "Hickory-Dickory Dock",
  video_url: "https://www.youtube.com/watch?v=XSPV-ezPMhQ",
  rhyme_category_id: animals.id,
  img_url: "clock.jpg"
)

Rhyme.create(
  title: "Five Little Monkeys",
  video_url: "https://www.youtube.com/watch?v=VKm_S4PTyA8",
  rhyme_category_id: animals.id,
  img_url: "monkey.jpg"
)


20.times do
  FavoriteRhyme.create(
    user: User.all.sample,
    rhyme: Rhyme.all.sample
  )
end