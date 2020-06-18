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
  video_url: "https://www.youtube.com/embed/9xB6i1ReuT8",
  author: "Anna Dewdney",
  book_category_id: llama.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3femrwf3UzeqNKL00JwxEcXWmq7QdLc79n_TTQG_qD87E2HQHhF8_11htqSi1jwhIQgp7DyEFenN_Xa0OAkNoVmZ4tOwUWFoCbWQz8gRRY69y2_nTwm3A9nSfq-BTA_0GY4KgDRIjkwfRrxcNPHAUY=s400-no")

Book.create(
  title: "Llama Llama Red Pajama",
  video_url: "https://www.youtube.com/embed/HD1g3P-nKWo",
  author: "Anna Dewdney",
  book_category_id: llama.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3fKRlOywsaUj8LqLH392y_ZOqUy-PXp1f6xx7ElZlHb19elZH6KhhHIDcrUkSJgAJeXePtcWcopP1iDV7IqIcbgsC3y8e0j07OotShaKc8rcM1Fe-YuKthiI39yG-cTeC7iLg6C2zryIVN9jQN7vtQ=s400-no"
)

Book.create(
  title: "Llama Llama Mad at Mama",
  video_url: "https://www.youtube.com/embed/Ka-tznfolzE",
  author: "Anna Dewdney",
  book_category_id: llama.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3fWKJ3aThFLgHdg_bYD_xj0Av7b54X9NNCkujqdTsY3GgfHQi_K1vweBxNKvauoMiPFNlx829iVfERaa3i8W7faxqo0K4347eh_jIkk2JhnpAKYGGtnfElN6vb64qfgiR50YQs9vY-mF0yqT2ciPgs=s400-no"
)

Book.create(
  title: "Llama Llama Holiday Drama",
  video_url: "https://www.youtube.com/embed/qkxVDaW_ls0",
  author: "Anna Dewdney",
  book_category_id: llama.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3edsLnbZ9tVjhqPchL8MkYCflvO52NLuVtSYylY1Vnbd1PQMlqP391blRONdMkYmurIuEabJI4FNMtcc3O7pJfGrD0xlU7U58fHyq5aRQ4jyQOt83jAuWxBu1F5NIxLjzQ9wQt5SZgCLY_C_Zjp3B0=s400-no"
)

Book.create(
  title: "The Very Hungry Caterpillar",
  video_url: "https://www.youtube.com/embed/vkYmvxP0AJI",
  author: "Eric Carle",
  book_category_id: eric_carl.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3fgDTvtRb3_ciFD-6WDcFHplPUE2Nq0R3egoEiHl1PM7fbelMcsNl-L45tdEf93-vyPHsYinMTjHjhUV8aZVuKyUFZwQsatB_Miq6-1EBY9YSSiF3ouifZznpFixqjYhIT0W_vtNVF4Q3i7oVcRfk8=s400-no"
)

Book.create(
  title: "The Mixed-Up Chameleon",
  video_url: "https://www.youtube.com/embed/FrmZeXf7ScU",
  author: "Eric Carle",
  book_category_id: eric_carl.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3dkZFLPgxd_cCeQv4qs9YS2UuWAFjRePM6qsQ0aH6Tq-cL5uUlXzhdQuxUkhw59GY_ZiHlX6HQ5H6SIFbDbk77YBzIk_L71-BmxyAkyobI-PpNG4Oi14bC0X9oKuGlIS6JzyXiRRqSLgSaYXCgCQeM=s400-no"
)

Book.create(
  title: "Brown Bear, Brown Bear, What Do You See?",
  video_url: "https://www.youtube.com/embed/9-NlZH_HcOw",
  author: "Eric Carle",
  book_category_id: eric_carl.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3fS8MulBczQQqVbyHePjgAOkQuBWU-3PNx5vkSbiS81iQvlWLSvRqgvNhNP2SZrbaJezfMaI1edHX5f3Hqnx0N0qAIfQkPOnvVA6Uu3-FiuyhdshPrUCd_d7GlPXi4AULT60txonSbv_psNp4PYHEw=s400-no"
)

Book.create(
  title: "If You Give a Mouse A Cookie",
  video_url: "https://www.youtube.com/embed/Gyk55GYnGl0",
  author: "Laura Numeroff",
  book_category_id: give_a_mouse_a_cookie.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3ezxXLqXGY5gW-0RvpORHAb1kzluzfdOownIQ7XyPnN2Oy48vuuhlTyXyKcusTnLR_8TmMecC4MCvJcVxQ-vknkg7UYHJ28l0freGXPRxCcJMaTQ4kDYO1v9tXs2d1ohNFkFEeen5H2e3-_tf9lvWg=s400-no"
)

Book.create(
  title: "If You Give a Mouse An Iphone",
  video_url: "https://www.youtube.com/embed/S3nVxt6_lAc",
  author: "Ann Droyd",
  book_category_id: give_a_mouse_a_cookie.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3esF3jauFB0icSYiFJvSg2P7hXB6wQwc-8i_NTy1ZeD59CdfVInYLaQezpIJOmwV4lz12bJ0qCC_WUN7FAHcSfYccL2faMyierOe1V81GtzzzYGc9Htydf9KqeKawzEhEM2V9C3XrjZ6WTsLow8JKo=s400-no"
)

Book.create(
  title: "If You Give a Moose a Muffin",
  video_url: "https://www.youtube.com/embed/PBIXvlO_RBs",
  author: "Laura Numeroff",
  book_category_id: give_a_mouse_a_cookie.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3ellPIEAwktOYEvrTlW74YVXdH2BiVHsqJY_R4x4uEwMbdaFk9HQJ-waxL16ybPuaWZiR_TSZFVQiXseqKQPDxOFudo5vUmG2lmsQ0MtbaNvimZNHqc2lvj4cGoJuztxzQzThPJkrVOVW1JZSoqdiU=s400-no"
)

Book.create(
  title: "If You Give a Pig a Pancake",
  video_url: "https://www.youtube.com/embed/jNiAktHBZa4",
  author: "Laura Numeroff",
  book_category_id: give_a_mouse_a_cookie.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3dpqqe8OIMxfSPKOpKU619eOnC3uuPC4btJp4Hj0R7COg2piPv_LzTPVyInJh2RughYm3mo9GSYCPGg85DXtVaMYWuX59Fm5Go7xuMJA0WZfc16FeEKkOC_QR_zHd5XVnvAzN39k_W_jZkeXxHEdOg=s400-no"
)

Book.create(
  title: "If You Give a Mouse a Brownie",
  video_url: "https://www.youtube.com/embed/kL0fij_JU2g",
  author: "Laura Numeroff",
  book_category_id: give_a_mouse_a_cookie.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3eeaEj-FOhpYzFHePlr_jH6hWdg92CruT7StJmt17fUe2JSCNyk-bO_cm86Bus7ebgBXFwB3ySKT-OluX0tbIdy7A6mpYLi0x9N7htSChQs_DDtGC4ylD3C76z33dxwJESLS4H9Xy2Dz9KfSq9KXSk=s400-no"
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
  video_url: "https://www.youtube.com/embed/yCjJyiqpAuU",
  rhyme_category_id: goodnight.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3e8OxWlZrPgYXDwe-Qxx4hif6MeSHhG8JAWddfvyp1aBsV2DxOoPBBnV5uF2hj522jV4BBcdRp0KWJjpqdNDCHM-PpNRj5wnKJdymFRRslslGGamaGjeHXdDSAP1kCbm2GR4MfAVQgEjNlxiEFaxmE=s400-no"
)

Rhyme.create(
  title: "Goodnight, Sleep Tight",
  video_url: "https://www.youtube.com/embed/3xjgBTTJYqI",
  rhyme_category_id: goodnight.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3cWVDr6Xq6qfS7baEWLVtnfMTIsEhP4DZ8bm_eIe5XsDoPT7nn5oBG08UNp-UCT0A4ai_qS1MGTbLMnEuTQfF3TKZJDlB2afB-Ngli_55hLuYYrP1cWYbNpyVC9rd8QO-Q69DB2xgIeano2HpEVFWE=s400-no"
)

Rhyme.create(
  title: "Rock-a-bye Baby",
  video_url: "https://www.youtube.com/embed/NQItZVlGu8g",
  rhyme_category_id: goodnight.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3f_woaE6j1WEzMCbtQwQQz5etgyGCoW0YizbqjNEqjfN-cFcrM-asw4OK1ruGghkrbc8tllsPuPz2zi1uBVO0NQg_CuLCRZ_kY9NlhauJANHfgv9X1B0BktgjJN0UQC6vabJAJNhUscreSLDeMxsrDE=s400-no"
)

Rhyme.create(
  title: "The Itsy, Bitsy Spider",
  video_url: "https://www.youtube.com/embed/w_lCi8U49mY",
  rhyme_category_id: sun_and_rain.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3cdwZWym0g8d5ijl-nb3NXSQRsVLBgRCBzxemnRsrdgjLd0S0VjOg4l4rfHmvgo3BSIhyEnKi8XmWH9QAyLkD57FIxRdzw9tJq8HBNHM1dk8i1wPiptONHHkr0sPmaDjfHvS6VLNjBO1Tr9AzpP4-ZL=s400-no"
)

Rhyme.create(
  title: "It's Raining It's Pouring",
  video_url: "https://www.youtube.com/embed/avurCRJiUj0",
  rhyme_category_id: sun_and_rain.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3dzASTbpbwnFXUWQlG0RfPybiyspZvQZ9vZWunSehiqatTk1cUpX72FP2OPK3YPTcEctBx0cXoh8umz-hlIMf_24Xnw06UjXQIysJb6IhekozIJMX0378N1OgHFxWWoqHZojLUj2u1L7W951OyqkRqp=s400-no"
)

Rhyme.create(
  title: "Rain, Rain Go Away",
  video_url: "https://www.youtube.com/embed/Zu6o23Pu0Do",
  rhyme_category_id: sun_and_rain.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3c9i25SWrhOEdyc66Oa9AR_mdvwqgKj3oJzgpOIZgs69d91MCgEEoGpC8IoV8TrZTt7beGtYwS2RqKFAbuUd6tC8XTHTu2_IT7hqSDmpbF-bOyyn9CBxVfs-yvcvOq7uLbPy8NwcqP0GUW_ovGzrKxf=s400-no"
)


Rhyme.create(
  title: "Mr. Golden Sun",
  video_url: "https://www.youtube.com/embed/hlzvrEfyL2Y",
  rhyme_category_id: sun_and_rain.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3fke9rB8DlHHAEqVe9xuDggRn8j_IxevNQUBowFmV63HMeqWiuc4llvfjwb16HslrUIR2-X_2dygJmUdPLIM8ALDS2--KTaK19SWDlL8SPnjTlFr3vm55BmCsmdKFRPWpel2SEJaaHhDm8XUb40cbaQ=s400-no"
)

Rhyme.create(
  title: "Head Shoulders Knees and Toes",
  video_url: "https://www.youtube.com/embed/WX8HmogNyCY",
  rhyme_category_id: movement.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3dhdIPqiHGReOKPc44fLM0RnGuE9UfdF8VP2RRl_LH80l4IqFj2IOW8pEGt38FM39PpjUF7o5qdpOQj2uUzvcaPRJ49QJDwj6JbPznoTq53WPlx1TLQOlOKkQztleJW_1cjRYTbk3bx_JklpWNoyhow=s400-no"
)

Rhyme.create(
  title: "Row, Row, Row Your Boat",
  video_url: "https://www.youtube.com/embed/7otAJa3jui8",
  rhyme_category_id: movement.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3eq2UUhSpIQSIG-6SSKXH76qeAr7LDFNQxCWZe2J_Pa7CZQ7WKpEk83U9aet1vCkqNh6jo2fiIXzo77P-0tJvQm3mvj6CFGjySzHfUhAzj6Mv0LaUGksOhSK87U0kZtWSdbDlgDSfzJe4ITZi5CmoRc=s400-no"
)

Rhyme.create(
  title: "If You're Happy and You Know It",
  video_url: "https://www.youtube.com/embed/l4WNrvVjiTw",
  rhyme_category_id: movement.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3fb1TfWfVWliuMEv7s2nyOQ40LevNQHt1A5XC7seMZmNuyckky7Dss8lW2VtCs-G1BYFMwPzZzfeWI5NsrCUKjU9VnxKXx0a1QqtW0YOBULWameY7haj-Voy_5tTYbBSSyRMsZQ1JuY4n9PMZnlTjyR=s400-no"
)

Rhyme.create(
  title: "The Wheels on the Bus",
  video_url: "https://www.youtube.com/embed/yWirdnSDsV4",
  rhyme_category_id: movement.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3eJCkYgRa7CgFs95OfnDknYeyEqOtEzMT60WsbjIa6frKRgCEH-VqaZx7LST3TAXp_svIBJ6DrmDLx9c3OGLaiYLPHk81SguqVUs2stYrfhcI6aPKFMnB1kL_8c6Pokvlat93_nPu4rm3cwtuD_5HM=s400-no"
)

Rhyme.create(
  title: "Five Little Ducks",
  video_url: "https://www.youtube.com/embed/pZw9veQ76fo",
  rhyme_category_id: animals.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3f9j4b03HFb4PmfoSZKVz-LlYOWoiOg7eCEk6AfsyGG5dY77HZ8Oeb-abAZh2DFYfwDveHh2O_ONtGsqmPJynzjW3h6FopgL0l7nRF_h9GCcDBLJvfOwVsHqeZUYjcsIQmQJmQcxFZlPg9SS84-0SK2=s400-no"
)

Rhyme.create(
  title: "Hickory-Dickory Dock",
  video_url: "https://www.youtube.com/embed/XSPV-ezPMhQ",
  rhyme_category_id: animals.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3fH_yAhruXeJXaXY5X_oyr8ZyQSXoRTYK1IEhcuhanmupbOaxEgHyceZWCyYS17jH_QPGt2TkT_kr41zohNejHZUYFe9DPoJijC6gg6fiQWwBoPyzYR3dO_-u5io16ga5bpMQmx5tO_GsnWW1s6H1yr=s400-no"
)

Rhyme.create(
  title: "Five Little Monkeys",
  video_url: "https://www.youtube.com/embed/VKm_S4PTyA8",
  rhyme_category_id: animals.id,
  img_url: "https://lh3.googleusercontent.com/pw/ACtC-3cWMotGkI0T12AB0p3fNLQ0soP0ZBYCtRK3Dgc9FhSdiVylVxegu4uI2Q-M_Z7UuV_yUSDwWKv_tguZLX8xPiSdhb3kDY5_9T-81EtlI0jtzhRxb59WCJVgOMtVu5rH_iRbyq5GVCOhvr7W49k67djX=s400-no"
)


20.times do
  FavoriteRhyme.create(
    user: User.all.sample,
    rhyme: Rhyme.all.sample
  )
end