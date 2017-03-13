# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Author.create(name: 'Kat', email: 'k@gmail.com', password: 'kkkkk')
User.create(name: 'Max', email: 'm@gmail.com', city: 'NYC', password: 'mmmmm')

5.times do
    User.create!(name: Faker::Name.name,
                city: Faker::Address.city,
                email: Faker::Internet.email,
                password: Faker::Internet.password(5)
                )
end





99.times do
    Article.create(
        title: Faker::Lorem.sentence,
        body: Faker::Lorem.paragraph(30),
        author_id: 1)
end


Comment.create(user_id:  Random.rand(1..5), article_id: 1, content: Faker::Hipster.sentence)
Comment.create(user_id:  Random.rand(1..5), article_id: 1, content: Faker::Hipster.sentence)
Comment.create(user_id:  Random.rand(1..5), article_id: 2, content: Faker::Hipster.sentence)
Comment.create(user_id:  Random.rand(1..5), article_id: 2, content: Faker::Hipster.sentence)
Comment.create(user_id:  Random.rand(1..5), article_id: 3, content: Faker::Hipster.sentence)
Comment.create(user_id:  Random.rand(1..5), article_id: 3, content: Faker::Hipster.sentence)
Comment.create(user_id:  Random.rand(1..5), article_id: 4, content: Faker::Hipster.sentence)
Comment.create(user_id:  Random.rand(1..5), article_id: 4, content: Faker::Hipster.sentence)
Comment.create(user_id:  Random.rand(1..5), article_id: 1, content: Faker::Hipster.sentence)
Comment.create(user_id:  Random.rand(1..5), article_id: 1, content: Faker::Hipster.sentence)
Comment.create(user_id:  Random.rand(1..5), article_id: 1, content: Faker::Hipster.sentence)
Comment.create(user_id:  Random.rand(1..5), article_id: 2, content: Faker::Hipster.sentence)
Comment.create(user_id:  Random.rand(1..5), article_id: 1, content: Faker::Hipster.sentence)
Comment.create(user_id:  Random.rand(1..5), article_id: 1, content: Faker::Hipster.sentence)
Comment.create(user_id:  Random.rand(1..5), article_id: 2, content: Faker::Hipster.sentence)
Comment.create(user_id:  Random.rand(1..5), article_id: 1, content: Faker::Hipster.sentence)
Comment.create(user_id:  Random.rand(1..5), article_id: 1, content: Faker::Hipster.sentence)
Comment.create(user_id:  Random.rand(1..5), article_id: 2, content: Faker::Hipster.sentence)