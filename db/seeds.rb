# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Adi", username: "adiskop", password: "password")

italian = Cuisine.create(country: "Italy", picture: "https://www.delonghi.com/Global/recipes/multifry/pizza_fresca.jpg", user_id:1)
pizza = italian.dishes.create(name: "Pizza", picture: "https://d1uz88p17r663j.cloudfront.net/original/4274048cd5f17c49dfee280f77a3739d_Cheese-Pizza_HB-2.jpg", ingredients: "flour, water, yeast, oil, salt, cheese, olives", directions: "mix everything together and add toppings", cook_time: "30 min", yield: "1 big pizza", cuisine_id:1, user_id:1)
adi = User.first
adi_pasta = adi.dishes.create(name: "Pomodoro Pasta", picture: "https://lh3.googleusercontent.com/_mkIjqOA29bzih8kz98RjBqf6KbLaan2ReyAzM2-Vj7SPDWGF24vPLz3zdTiwRdHaDdn6ed5kHdUUWkyoOQ83ZE=s640-c-rw-v1-e365", ingredients: "olive oil, garlic, basil, tomato, pasta", directions: "mix everything, cook pasta and top it up", cook_time: "20 min", yield: "4 portions", cuisine_id:1, user_id:1)
adi.comments.create(content: "Great easy tomato pasta", dish: adi_pasta, user_id:1, dish_id:2)