# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
    User.create!(name: Faker::Name.name,
                city: Faker::Address.city,
                email: Faker::Internet.email,
                password: Faker::Internet.password(5)
                )
end

User.create(name: 'Kat', email: 'k@gmail.com', city: 'NYC', password: 'kkkkk')
User.create(name: 'Max', email: 'm@gmail.com', city: 'NYC', password: 'mmmmm')



99.times do
    Article.create(
        title: Faker::Lorem.sentence,
        body: Faker::Lorem.paragraph)
end

Comment.create(user_id: 3, article_id: 12, content: Faker::Hipster.sentence)
Comment.create(user_id: 5, article_id: 2, content: Faker::Hipster.sentence)
Comment.create(user_id: 2, article_id: 10, content: Faker::Hipster.sentence)