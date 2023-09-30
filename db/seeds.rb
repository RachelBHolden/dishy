# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning up database..."
# RecipeIngredient.destroy_all

RecipeDietary.destroy_all
RecipeCuisine.destroy_all
RecipeIngredient.destroy_all
Recipe.destroy_all

UserDietary.destroy_all
UserCuisine.destroy_all
UserIngredient.destroy_all
User.destroy_all

Dietary.destroy_all
Cuisine.destroy_all
Ingredient.destroy_all

puts "Database cleaned"

dietaries = [
  {dietary_type: 'None'},
  { dietary_type: 'Vegan' },
  { dietary_type: 'Vegetarian' },
  { dietary_type: 'Pescatarian' },
  { dietary_type: 'Gluten-free' },
  { dietary_type: 'Dairy-free' },
  { dietary_type: 'Nut allergy' },
  { dietary_type: 'Lactose intolerant' },
  { dietary_type: 'Keto' },
  { dietary_type: 'Paleo' },
  { dietary_type: 'Low-carb' },
  { dietary_type: 'Low-fat' },
  { dietary_type: 'High-protein' },
  { dietary_type: 'Halal' },
  { dietary_type: 'Kosher' },
  { dietary_type: 'Whole30' },
  { dietary_type: 'No added sugar' }
]

dietaries.each do |dietary|
  Dietary.create(dietary_type: dietary[:dietary_type])
end
puts "Dietary types created!"

cuisines = [
   {name: "All"},
  { name: 'African' },
  { name: 'American' },
  { name: 'Brazilian' },
  { name: 'Cajun' },
  { name: 'Chinese' },
  { name: 'French' },
  { name: 'Greek' },
  { name: 'Indian' },
  { name: 'Italian' },
  { name: 'Japanese' },
  { name: 'Korean' },
  { name: 'Mediterranean' },
  { name: 'Mexican' },
  { name: 'Middle Eastern' },
  { name: 'Spanish' },
  { name: 'Thai' },
  { name: 'Vietnamese' }
]

cuisines.each do |cuisine|
  Cuisine.create(name: cuisine[:name])
end
puts "Cuisines created!"

ingredients = [
  { name: 'Arugula' },
  { name: 'Aubergines' },
  { name: 'Avocado' },
  { name: 'Barbecue sauce' },
  { name: 'Barbecue spice rub' },
  { name: 'Basil leaves' },
  { name: 'Basil' },
  { name: 'Bean sprouts' },
  { name: 'Bell peppers' },
  { name: 'Black garlic cloves' },
  { name: 'Black pepper' },
  { name: 'Buttermilk' },
  { name: 'Cabbage' },
  { name: 'Carrot' },
  { name: 'Carrots' },
  { name: 'Cascabel chilli' },
  { name: 'Cauliflower' },
  { name: 'Cherry tomatoes' },
  { name: 'Chestnut mushrooms' },
  { name: 'Chicken broth' },
  { name: 'Chicken' },
  { name: 'Chopped peanuts' },
  { name: 'Cilantro' },
  { name: 'Coleslaw dressing' },
  { name: 'Cooked shrimp' },
  { name: 'Crème fraîche' },
  { name: 'Crushed tomatoes' },
  { name: 'Cucumber' },
  { name: 'Cucumbers' },
  { name: 'Curry powder' },
  { name: 'Double cream' },
  { name: 'Dried oregano' },
  { name: 'Dried porcini mushrooms' },
  { name: 'Dried red chillies' },
  { name: 'Dried wild mushrooms' },
  { name: 'Dry white wine' },
  { name: 'Egg' },
  { name: 'Eggplant' },
  { name: 'English mustard' },
  { name: 'Extra virgin olive oil' },
  { name: 'Feta cheese' },
  { name: 'Filo pastry' },
  { name: 'Fish sauce' },
  { name: 'Flat-leaf parsley' },
  { name: 'Fresh parsley' },
  { name: 'Garlic cloves' },
  { name: 'Garlic' },
  { name: 'Greek yoghurt' },
  { name: 'Greek-style yoghurt' },
  { name: 'Ground coffee' },
  { name: 'Ground cumin' },
  { name: 'Ground lamb' },
  { name: 'Hamburger buns' },
  { name: 'Hot vegetable stock' },
  { name: 'Kalamata olives' },
  { name: 'Lemon thyme leaves' },
  { name: 'Lemon wedges' },
  { name: 'Lemon Zest' },
  { name: 'Lime wedges' },
  { name: 'Maldon sea salt' },
  { name: 'Mature cheddar' },
  { name: 'Nori seaweed' },
  { name: 'Olive oil' },
  { name: 'Onion' },
  { name: 'Onions' },
  { name: 'Oyster mushrooms' },
  { name: 'Paprika' },
  { name: 'Parmesan' },
  { name: 'Parsley leaves' },
  { name: 'Parsley' },
  { name: 'Pecorino Romano' },
  { name: 'Pepper' },
  { name: 'Picked oregano leaves' },
  { name: 'Picked thyme leaves' },
  { name: 'Pickled ginger' },
  { name: 'Plain flour' },
  { name: 'Plum tomatoes' },
  { name: 'Pomegranate' },
  { name: 'Pork shoulder' },
  { name: 'Puy lentils' },
  { name: 'Red onion' },
  { name: 'Rice noodles' },
  { name: 'Rice vinegar' },
  { name: 'Rice' },
  { name: 'Saffron threads' },
  { name: 'Salt' },
  { name: 'Sausages' },
  { name: 'Seafood' },
  { name: 'Sesame seeds' },
  { name: 'Shelled pistachios' },
  { name: 'Shrimp' },
  { name: 'Small aubergines' },
  { name: 'Smoked paprika' },
  { name: 'Soft light brown sugar' },
  { name: 'Soy sauce' },
  { name: 'Sugar' },
  { name: 'Sumac' },
  { name: 'Sushi rice' },
  { name: 'Tamarind paste' },
  { name: 'Thyme' },
  { name: 'Tofu' },
  { name: 'Tomato paste' },
  { name: 'Tomato' },
  { name: 'Tomatoes' },
  { name: 'Unsalted butter' },
  { name: 'Urfa chilli flakes' },
  { name: 'Vegetable oil' },
  { name: 'Vegetable stock' },
  { name: 'Wasabi' },
  { name: 'White wine' },
  { name: 'Whole milk' },
  { name: 'Zucchini' },
  { name: "Chicken thighs"},
  { name: "Mint leaves"},
  { name: "Rose Harissa"}
]

ingredients.each do |ingredient|
  Ingredient.create(name: ingredient[:name])
end
puts "Ingredients created!"

# spaghetti_carbonara = Recipe.create!(
#   name: 'Spaghetti Carbonara',
#   time: 30
# )

# spaghetti_carbonara.ingredients << Ingredient.find_by(name: "Spaghetti")
# spaghetti_carbonara.ingredients << Ingredient.find_by(name: "Egg")
# spaghetti_carbonara.ingredients << Ingredient.find_by(name: "Bacon")
# spaghetti_carbonara.ingredients << Ingredient.find_by(name: "Parmesan cheese")
# spaghetti_carbonara.ingredients << Ingredient.find_by(name: "Black pepper")
# spaghetti_carbonara.ingredients << Ingredient.find_by(name: "Salt")

# spaghetti_carbonara.cuisines << Cuisine.find_by(name: "Italian")
# spaghetti_carbonara.dietaries << Dietary.find_by(dietary_type: "Vegetarian")

# tacos = Recipe.create!(
#   name: 'Tacos',
#   time: 45
# )

# tacos.ingredients << Ingredient.find_by(name: "Tortilla")
# tacos.ingredients << Ingredient.find_by(name: "Ground beef")
# tacos.ingredients << Ingredient.find_by(name: "Lettuce")
# tacos.ingredients << Ingredient.find_by(name: "Tomato")
# tacos.ingredients << Ingredient.find_by(name: "Cheese")
# tacos.ingredients << Ingredient.find_by(name: "Sour cream")
# tacos.ingredients << Ingredient.find_by(name: "Salsa")

# tacos.cuisines << Cuisine.find_by(name: "Mexican")
# tacos.dietaries << Dietary.find_by(dietary_type: "Pescatarian")

# puts "Recipes created!"

# Recipe 1
margarita_pizza = Recipe.create!(
  name: 'Classic Margherita Pizza',
  description: 'Enjoy the simplicity and flavors of a classic Margherita pizza.',
  time: 30,
  photo_url: 'seed/margarita_pizza.jpg',
  instruction: '1. Preheat your oven to 475°F (245°C).
                2. Roll out the pizza dough into a thin circle.
                3. Spread tomato sauce over the dough.
                4. Add slices of fresh mozzarella cheese.
                5. Sprinkle with fresh basil leaves and a drizzle of olive oil.
                6. Bake in the oven for 10-12 minutes or until the crust is golden and the cheese is bubbly.
                7. Slice and serve hot.'
)
margarita_pizza.ingredients << Ingredient.find_or_create_by(name: "Pizza dough")
margarita_pizza.ingredients << Ingredient.find_or_create_by(name: "Tomato sauce")
margarita_pizza.ingredients << Ingredient.find_or_create_by(name: "Fresh mozzarella cheese")
margarita_pizza.ingredients << Ingredient.find_or_create_by(name: "Fresh basil leaves")
margarita_pizza.ingredients << Ingredient.find_or_create_by(name: "Olive oil")
margarita_pizza.ingredients << Ingredient.find_or_create_by(name: "Salt")
margarita_pizza.ingredients << Ingredient.find_or_create_by(name: "Black pepper")

Recipe.last.cuisines << Cuisine.find_by(name: "Italian")
Recipe.last.cuisines << Cuisine.find_by(name: "All")
Recipe.last.dietaries << Dietary.find_by(dietary_type: "Vegetarian")
Recipe.last.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 2
stir_fried_chicken_with_broccoli = Recipe.create!(
  name: 'Stir-Fried Chicken with Broccoli',
  description: 'A quick and healthy stir-fry with tender chicken and crisp broccoli.',
  time: 25,
  photo_url: 'seed/stir_fried_chicken_with_broccoli.jpg',
  instruction: '1. Heat oil in a pan or wok over high heat.
                2. Add diced chicken and stir-fry until cooked through.
                3. Remove the chicken and set it aside.
                4. In the same pan, stir-fry broccoli florets until they turn bright green.
                5. Return the chicken to the pan.
                6. Add soy sauce, garlic, and ginger. Stir-fry for an additional 2 minutes.
                7. Serve hot over steamed rice.'
)

stir_fried_chicken_with_broccoli.ingredients << Ingredient.find_or_create_by(name: "Chicken")
stir_fried_chicken_with_broccoli.ingredients << Ingredient.find_or_create_by(name: "Broccoli")
stir_fried_chicken_with_broccoli.ingredients << Ingredient.find_or_create_by(name: "Soy sauce")
stir_fried_chicken_with_broccoli.ingredients << Ingredient.find_or_create_by(name: "Garlic")
stir_fried_chicken_with_broccoli.ingredients << Ingredient.find_or_create_by(name: "Ginger")
stir_fried_chicken_with_broccoli.ingredients << Ingredient.find_or_create_by(name: "Cooked rice")
stir_fried_chicken_with_broccoli.ingredients << Ingredient.find_or_create_by(name: "Oil")

Recipe.last.cuisines << Cuisine.find_by(name: "Chinese")
Recipe.last.cuisines << Cuisine.find_by(name: "All")
Recipe.last.dietaries << Dietary.find_by(dietary_type: "Low-carb")
Recipe.last.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 3
vegetable_curry = Recipe.create!(
  name: 'Vegetable Curry',
  description: 'A flavorful and aromatic vegetable curry that is perfect for a healthy meal.',
  time: 40,
  photo_url: 'seed/vegetable_curry.jpg',
  instruction: '1. Heat oil in a large pot and sauté onions until translucent.
                2. Add garlic, ginger, and curry paste. Cook for 2 minutes.
                3. Stir in diced vegetables (e.g., carrots, bell peppers, and potatoes).
                4. Pour in coconut milk and vegetable broth.
                5. Simmer until vegetables are tender.
                6. Season with salt, pepper, and lime juice.
                7. Serve over rice or with naan bread.'
                )

vegetable_curry.ingredients << Ingredient.find_or_create_by(name: "Onion")
vegetable_curry.ingredients << Ingredient.find_or_create_by(name: "Garlic")
vegetable_curry.ingredients << Ingredient.find_or_create_by(name: "Ginger")
vegetable_curry.ingredients << Ingredient.find_or_create_by(name: "Curry paste")
vegetable_curry.ingredients << Ingredient.find_or_create_by(name: "Carrots")
vegetable_curry.ingredients << Ingredient.find_or_create_by(name: "Bell pepper")
vegetable_curry.ingredients << Ingredient.find_or_create_by(name: "Potatoes")
vegetable_curry.ingredients << Ingredient.find_or_create_by(name: "Coconut milk")
vegetable_curry.ingredients << Ingredient.find_or_create_by(name: "Vegetable broth")
vegetable_curry.ingredients << Ingredient.find_or_create_by(name: "Lime juice")
vegetable_curry.ingredients << Ingredient.find_or_create_by(name: "Salt")
vegetable_curry.ingredients << Ingredient.find_or_create_by(name: "Black pepper")

Recipe.last.cuisines << Cuisine.find_by(name: "Indian")
Recipe.last.dietaries << Dietary.find_by(dietary_type: "Vegan")

# Recipe 4
sushi_rolls = Recipe.create!(
  name: 'Sushi Rolls',
  description: 'Create your own sushi rolls with fresh ingredients and nori seaweed.',
  time: 45,
  photo_url: 'seed/sushi_rolls.jpg',
  instruction: '1. Place a sheet of nori on a bamboo sushi mat.
                2. Spread a layer of sushi rice over the nori, leaving a border at the top.
                3. Add your choice of fillings (e.g., avocado, cucumber, and cooked shrimp).
                4. Roll the nori tightly using the mat.
                5. Slice into bite-sized pieces.
                6. Serve with soy sauce, wasabi, and pickled ginger.'
)

sushi_rolls.ingredients << Ingredient.find_or_create_by(name: "Nori seaweed")
sushi_rolls.ingredients << Ingredient.find_or_create_by(name: "Sushi rice")
sushi_rolls.ingredients << Ingredient.find_or_create_by(name: "Avocado")
sushi_rolls.ingredients << Ingredient.find_or_create_by(name: "Cucumber")
sushi_rolls.ingredients << Ingredient.find_or_create_by(name: "Cooked shrimp")
sushi_rolls.ingredients << Ingredient.find_or_create_by(name: "Soy sauce")
sushi_rolls.ingredients << Ingredient.find_or_create_by(name: "Wasabi")
sushi_rolls.ingredients << Ingredient.find_or_create_by(name: "Pickled ginger")

Recipe.last.cuisines << Cuisine.find_by(name: "Japanese")
Recipe.last.dietaries << Dietary.find_by(dietary_type: "Pescatarian")
Recipe.last.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 5
ratatouille = Recipe.create!(
  name: 'Ratatouille',
  description: 'A traditional French Provençal stewed vegetable dish.',
  time: 50,
  photo_url: 'seed/ratatouille.jpg',
  instruction: '1. Heat olive oil in a large pot.
                2. Sauté onions, garlic, and bell peppers until softened.
                3. Add diced tomatoes, eggplant, zucchini, and herbs.
                4. Cook over low heat until vegetables are tender.
                5. Season with salt and pepper.
                6. Serve hot as a side dish or with crusty bread.'
)
ratatouille.ingredients << Ingredient.find_or_create_by(name: "Eggplant")
ratatouille.ingredients << Ingredient.find_or_create_by(name: "Zucchini")
ratatouille.ingredients << Ingredient.find_or_create_by(name: "Tomatoes")
ratatouille.ingredients << Ingredient.find_or_create_by(name: "Olive oil")
ratatouille.ingredients << Ingredient.find_or_create_by(name: "Salt")
ratatouille.ingredients << Ingredient.find_or_create_by(name: "Pepper")
ratatouille.ingredients << Ingredient.find_or_create_by(name: "Onions")
ratatouille.ingredients << Ingredient.find_or_create_by(name: "Garlic")
ratatouille.ingredients << Ingredient.find_or_create_by(name: "Crushed tomatoes")
ratatouille.ingredients << Ingredient.find_or_create_by(name: "Basil")
ratatouille.ingredients << Ingredient.find_or_create_by(name: "Thyme")

Recipe.last.cuisines << Cuisine.find_by(name: "French")
Recipe.last.dietaries << Dietary.find_by(dietary_type: "Vegetarian")
Recipe.last.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 6
greek_salad = Recipe.create!(
  name: 'Greek Salad',
  description: 'A refreshing and healthy salad with Mediterranean flavors.',
  time: 15,
  photo_url: 'seed/greek_salad.jpg',
  instruction: '1. In a large bowl, combine diced cucumbers, tomatoes, and red onions.
                2. Add black olives and crumbled feta cheese.
                3. Drizzle with olive oil and sprinkle with dried oregano.
                4. Season with salt and pepper.
                5. Toss to combine and serve chilled.'
)

greek_salad.ingredients << Ingredient.find_or_create_by(name: "Cucumbers")
greek_salad.ingredients << Ingredient.find_or_create_by(name: "Cherry tomatoes")
greek_salad.ingredients << Ingredient.find_or_create_by(name: "Red onion")
greek_salad.ingredients << Ingredient.find_or_create_by(name: "Kalamata olives")
greek_salad.ingredients << Ingredient.find_or_create_by(name: "Feta cheese")
greek_salad.ingredients << Ingredient.find_or_create_by(name: "Extra virgin olive oil")
greek_salad.ingredients << Ingredient.find_or_create_by(name: "Dried oregano")
greek_salad.ingredients << Ingredient.find_or_create_by(name: "Salt")
greek_salad.ingredients << Ingredient.find_or_create_by(name: "Black pepper")

Recipe.last.cuisines << Cuisine.find_by(name: "Greek")
Recipe.last.dietaries << Dietary.find_by(dietary_type: "Vegetarian")
Recipe.last.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 7
pad_thai = Recipe.create!(
  name: 'Pad Thai',
  description: 'A classic Thai noodle dish with a perfect balance of sweet, sour, and savory flavors.',
  time: 35,
  photo_url: 'seed/pad_thai.jpg',
  instruction: '1. Soak rice noodles in hot water until softened, then drain.
                2. Heat oil in a wok or large pan.
                3. Add shrimp and tofu; cook until shrimp turns pink.
                4. Push ingredients to one side and scramble eggs in the pan.
                5. Add noodles, followed by tamarind sauce, fish sauce, and sugar.
                6. Stir-fry until well mixed.
                7. Add bean sprouts and chopped peanuts.
                8. Serve with lime wedges and cilantro.'
)

pad_thai.ingredients << Ingredient.find_or_create_by(name: "Rice noodles")
pad_thai.ingredients << Ingredient.find_or_create_by(name: "Vegetable oil")
pad_thai.ingredients << Ingredient.find_or_create_by(name: "Garlic")
pad_thai.ingredients << Ingredient.find_or_create_by(name: "Shrimp")
pad_thai.ingredients << Ingredient.find_or_create_by(name: "Tofu")
pad_thai.ingredients << Ingredient.find_or_create_by(name: "Egg")
pad_thai.ingredients << Ingredient.find_or_create_by(name: "Fish sauce")
pad_thai.ingredients << Ingredient.find_or_create_by(name: "Tamarind paste")
pad_thai.ingredients << Ingredient.find_or_create_by(name: "Sugar")
pad_thai.ingredients << Ingredient.find_or_create_by(name: "Bean sprouts")
pad_thai.ingredients << Ingredient.find_or_create_by(name: "Chopped peanuts")
pad_thai.ingredients << Ingredient.find_or_create_by(name: "Lime wedges")
pad_thai.ingredients << Ingredient.find_or_create_by(name: "Cilantro")

Recipe.last.cuisines << Cuisine.find_by(name: "Thai")
Recipe.last.dietaries << Dietary.find_by(dietary_type: "Pescatarian")
Recipe.last.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 8
spanish_paella = Recipe.create!(
  name: 'Spanish Paella',
  description: 'A flavorful Spanish rice dish with saffron, seafood, and chicken.',
  time: 60,
  photo_url: 'seed/spanish_paella.jpg',
  instruction: '1. Heat olive oil in a paella pan.
                2. Sauté onions, garlic, and bell peppers.
                3. Add diced chicken and cook until browned.
                4. Stir in saffron, paprika, and rice; cook for 2 minutes.
                5. Pour in chicken broth and simmer for 20 minutes.
                6. Add seafood (e.g., shrimp, mussels) and peas.
                7. Cover and cook until seafood is cooked through.
                8. Garnish with lemon wedges.'
)

spanish_paella.ingredients << Ingredient.find_or_create_by(name: "Olive oil")
spanish_paella.ingredients << Ingredient.find_or_create_by(name: "Onions")
spanish_paella.ingredients << Ingredient.find_or_create_by(name: "Garlic")
spanish_paella.ingredients << Ingredient.find_or_create_by(name: "Bell peppers")
spanish_paella.ingredients << Ingredient.find_or_create_by(name: "Saffron threads")
spanish_paella.ingredients << Ingredient.find_or_create_by(name: "Paprika")
spanish_paella.ingredients << Ingredient.find_or_create_by(name: "Rice")
spanish_paella.ingredients << Ingredient.find_or_create_by(name: "Chicken broth")
spanish_paella.ingredients << Ingredient.find_or_create_by(name: "White wine")
spanish_paella.ingredients << Ingredient.find_or_create_by(name: "Sausages")
spanish_paella.ingredients << Ingredient.find_or_create_by(name: "Chicken")
spanish_paella.ingredients << Ingredient.find_or_create_by(name: "Seafood")
spanish_paella.ingredients << Ingredient.find_or_create_by(name: "Lemon wedges")
spanish_paella.ingredients << Ingredient.find_or_create_by(name: "Fresh parsley")

Recipe.last.cuisines << Cuisine.find_by(name: "Spanish")
Recipe.last.dietaries << Dietary.find_by(dietary_type: "Lactose intolerant")
Recipe.last.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 9
bbq_pulled_pork_sandwich = Recipe.create!(
  name: 'BBQ Pulled Pork Sandwich',
  description: 'Tender pulled pork with smoky BBQ sauce, served in a soft bun.',
  time: 8 * 60, # 8 hours for slow cooking
  photo_url: 'seed/bbq_pulled_pork_sandwich.jpg',
  instruction: '1. Rub pork shoulder with a dry spice rub.
                2. Slow-cook the pork in a smoker or oven at low heat for 8 hours.
                3. Shred the cooked pork with two forks.
                4. Mix with BBQ sauce.
                5. Toast buns and assemble sandwiches.
                6. Serve with coleslaw and pickles.'
)
bbq_pulled_pork_sandwich.ingredients << Ingredient.find_or_create_by(name: "Pork shoulder")
bbq_pulled_pork_sandwich.ingredients << Ingredient.find_or_create_by(name: "Barbecue spice rub")
bbq_pulled_pork_sandwich.ingredients << Ingredient.find_or_create_by(name: "Cabbage")
bbq_pulled_pork_sandwich.ingredients << Ingredient.find_or_create_by(name: "Carrots")
bbq_pulled_pork_sandwich.ingredients << Ingredient.find_or_create_by(name: "Coleslaw dressing")
bbq_pulled_pork_sandwich.ingredients << Ingredient.find_or_create_by(name: "Barbecue sauce")
bbq_pulled_pork_sandwich.ingredients << Ingredient.find_or_create_by(name: "Hamburger buns")

Recipe.last.cuisines << Cuisine.find_by(name: "American")
Recipe.last.dietaries << Dietary.find_by(dietary_type: "Lactose intolerant")
Recipe.last.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 10
vegetable_sushi_bowl = Recipe.create!(
  name: 'Vegetable Sushi Bowl',
  description: 'A deconstructed sushi bowl with a variety of fresh vegetables.',
  time: 25,
  photo_url: 'seed/vegetable_sushi_bowl.jpg',
  instruction: '1. Cook sushi rice according to package instructions and let it cool.
                2. Arrange sushi rice in bowls.
                3. Top with sliced avocado, cucumber, carrots, and pickled ginger.
                4. Drizzle with soy sauce and sesame seeds.
                5. Serve as a healthy and colorful meal.'
)

vegetable_sushi_bowl.ingredients << Ingredient.find_or_create_by(name: "Sushi rice")
vegetable_sushi_bowl.ingredients << Ingredient.find_or_create_by(name: "Cucumber")
vegetable_sushi_bowl.ingredients << Ingredient.find_or_create_by(name: "Carrot")
vegetable_sushi_bowl.ingredients << Ingredient.find_or_create_by(name: "Avocado")
vegetable_sushi_bowl.ingredients << Ingredient.find_or_create_by(name: "Soy sauce")
vegetable_sushi_bowl.ingredients << Ingredient.find_or_create_by(name: "Rice vinegar")
vegetable_sushi_bowl.ingredients << Ingredient.find_or_create_by(name: "Sugar")
vegetable_sushi_bowl.ingredients << Ingredient.find_or_create_by(name: "Nori seaweed")
vegetable_sushi_bowl.ingredients << Ingredient.find_or_create_by(name: "Sesame seeds")
vegetable_sushi_bowl.ingredients << Ingredient.find_or_create_by(name: "Pickled ginger")

Recipe.last.cuisines << Cuisine.find_by(name: "Japanese")
Recipe.last.dietaries << Dietary.find_by(dietary_type: "Vegetarian")
Recipe.last.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 11
aubergine_with_black_garlic_recipe = Recipe.create!(
  name: 'Slices of Roast Aubergine with Black Garlic Sauce',
  description: 'A delicious dish featuring roasted aubergine and a flavorful black garlic sauce.',
  time: 40,
  photo_url: 'seed/roasted_aubergine.jpg',
  instruction: '1. Preheat the oven to 250°C/480°F/gas 9 (or its highest setting).
                2. In a large bowl, mix aubergine rounds with 60ml of olive oil, 1½ tsp salt, and black pepper.
                3. Spread the aubergine slices on two large baking trays lined with greaseproof paper.
                4. Roast in the oven until golden-brown and completely soft, about 30 minutes.
                5. Remove from the oven and let them cool.
                6. In a small food processor, blend the BLACK GARLIC CLOVES with 1/3 tsp salt, 2 tbsp olive oil, 2 tbsp yogurt, and lemon juice to form a rough paste.
                7. Transfer the paste to a medium bowl and mix in the remaining yogurt. Chill in the fridge.
                8. Heat the remaining 110ml of oil in a small saucepan over high heat.
                9. Add sliced garlic and chilli and fry on medium heat for about 5 minutes until golden-brown and crispy.
                10. Use a slotted spoon to transfer the garlic and chilli to a paper-lined plate.
                11. Arrange the roasted aubergine slices on a platter.
                12. Spoon the black garlic sauce over the aubergine.
                13. Sprinkle the crispy garlic and chilli over the top.
                14. Finish by garnishing with dill, basil, and tarragon leaves.
                15. Season with salt and black pepper to taste.
                16. Serve and enjoy!'
)

aubergine_with_black_garlic_recipe.ingredients << Ingredient.find_or_create_by(name: "Aubergines")
aubergine_with_black_garlic_recipe.ingredients << Ingredient.find_or_create_by(name: "Olive oil")
aubergine_with_black_garlic_recipe.ingredients << Ingredient.find_or_create_by(name: "Black garlic cloves")
aubergine_with_black_garlic_recipe.ingredients << Ingredient.find_or_create_by(name: "Greek yoghurt")
aubergine_with_black_garlic_recipe.ingredients << Ingredient.find_or_create_by(name: "Lemon juice")
aubergine_with_black_garlic_recipe.ingredients << Ingredient.find_or_create_by(name: "Garlic cloves")
aubergine_with_black_garlic_recipe.ingredients << Ingredient.find_or_create_by(name: "Red chillies")
aubergine_with_black_garlic_recipe.ingredients << Ingredient.find_or_create_by(name: "Dill leaves")
aubergine_with_black_garlic_recipe.ingredients << Ingredient.find_or_create_by(name: "Basil")
aubergine_with_black_garlic_recipe.ingredients << Ingredient.find_or_create_by(name: "Tarragon leaves")

Recipe.last.cuisines << Cuisine.find_or_create_by(name: "Mediterranean")
Recipe.last.dietaries << Dietary.find_or_create_by(dietary_type: "Vegetarian")
Recipe.last.dietaries << Dietary.find_or_create_by(dietary_type: "None")

# Recipe 12
pappardelle_recipe = Recipe.create!(
  name: 'Pappardelle with Harissa, Cherry Tomatoes, and Olives',
  description: 'A flavorful pasta dish with a spicy kick, perfect for pasta lovers.',
  time: 40,
  photo_url: 'seed/pappardelle_harissa.jpg',
  instruction: '1. Heat olive oil in a large sauté pan with a lid over medium-high heat.
                2. Add thinly sliced onion and fry for 8 minutes, stirring occasionally, until soft and caramelized.
                3. Stir in ROSE HARISSA, cherry tomatoes, torn Kalamata olives, capers, and ½ teaspoon of salt.
                4. Continue to fry for 3–4 minutes, stirring frequently, until the tomatoes start to break down.
                5. Add 200ml of water and stir. Bring to a boil, then reduce the heat to medium-low, cover, and simmer for 10 minutes.
                6. Remove the lid and continue to cook for 4–5 minutes, until the sauce is thick and rich. Stir in 10g of parsley and set aside.
                7. In a large pot, boil salted water and cook the pappardelle according to the packet instructions until al dente. Drain well.
                8. Return the pasta to the pot and add harissa sauce and 1/8 teaspoon of salt. Mix together.
                9. Divide the pasta among four shallow bowls.
                10. Serve hot with a spoonful of Greek-style yoghurt and a final sprinkle of parsley.'
)

pappardelle_recipe.ingredients << Ingredient.find_or_create_by(name: "Olive oil")
pappardelle_recipe.ingredients << Ingredient.find_or_create_by(name: "Onion")
pappardelle_recipe.ingredients << Ingredient.find_or_create_by(name: "ROSE HARISSA")
pappardelle_recipe.ingredients << Ingredient.find_or_create_by(name: "Cherry tomatoes")
pappardelle_recipe.ingredients << Ingredient.find_or_create_by(name: "Kalamata olives")
pappardelle_recipe.ingredients << Ingredient.find_or_create_by(name: "Capers")
pappardelle_recipe.ingredients << Ingredient.find_or_create_by(name: "Pappardelle pasta")
pappardelle_recipe.ingredients << Ingredient.find_or_create_by(name: "Parsley")
pappardelle_recipe.ingredients << Ingredient.find_or_create_by(name: "Greek-style yoghurt")
pappardelle_recipe.ingredients << Ingredient.find_or_create_by(name: "Salt")

Recipe.last.cuisines << Cuisine.find_or_create_by(name: "Italian")
Recipe.last.dietaries << Dietary.find_or_create_by(dietary_type: "Vegetarian")
Recipe.last.dietaries << Dietary.find_or_create_by(dietary_type: "None")

# Recipe 13
koftas_recipe = Recipe.create!(
  name: 'Coffee-Spiced Chicken Koftas',
  description: 'Flavorful chicken koftas with a smoky coffee rub and grilled onions.',
  time: 80,
  photo_url: 'seed/coffee_koftas.jpg',
  instruction: '1. Put the chicken thighs in a food processor and pulse until minced.
                2. Transfer the minced chicken to a large bowl and add grated onion, crushed garlic, grated tomato (skin discarded), chopped parsley, lemon zest, 1 tbsp olive oil, 3/4 tsp salt, and a good grind of pepper. Knead the mixture for about three minutes until well combined and sticky. Divide into 12 portions and form them into compact, torpedo-shaped koftas of about 55g each.
                3. Make the rub by combining finely ground coffee, ground cascabel chilli, soft light brown sugar, smoked paprika, and ground cumin with 1/2 tsp salt. Set aside one-third of the rub mixture and spread the rest over a baking tray. Roll each kofta in the coffee rub until well coated and set aside (or refrigerate if preparing ahead).
                4. Preheat the oven to 240°C (220°C fan)/475°F/gas 9. Toss the red onion rounds with 1 tbsp oil, 1/4 tsp salt, and pepper. Grill the onion slices in a well-greased griddle pan on a high heat for four minutes on each side until well charred and softened, then set aside to cool.
                5. Drizzle the koftas with 1 tbsp oil and grill them in two batches for about 90 seconds per batch until lightly charred on the outsides. Transfer the grilled kofta to a medium oven tray lined with greaseproof paper and roast in the hot oven for six minutes. Combine the reserved coffee rub with two tablespoons of oil and drizzle it all over the kofta. Return to the oven for another three minutes until cooked through and nicely browned.
                6. In a bowl, toss the grilled onion with mint, picked parsley, lemon juice, and a pinch of salt and pepper.
                7. Arrange the koftas and their cooking juices on a platter and pile the grilled onion salad to one side. Squeeze the lemon wedges over the koftas and serve warm.'
)

koftas_recipe.ingredients << Ingredient.find_or_create_by(name: "Chicken thighs")
koftas_recipe.ingredients << Ingredient.find_or_create_by(name: "Onion")
koftas_recipe.ingredients << Ingredient.find_or_create_by(name: "Garlic cloves")
koftas_recipe.ingredients << Ingredient.find_or_create_by(name: "Tomato")
koftas_recipe.ingredients << Ingredient.find_or_create_by(name: "Flat-leaf parsley")
koftas_recipe.ingredients << Ingredient.find_or_create_by(name: "Lemon")
koftas_recipe.ingredients << Ingredient.find_or_create_by(name: "Olive oil")
koftas_recipe.ingredients << Ingredient.find_or_create_by(name: "Salt")
koftas_recipe.ingredients << Ingredient.find_or_create_by(name: "Black pepper")
koftas_recipe.ingredients << Ingredient.find_or_create_by(name: "Red onions")
koftas_recipe.ingredients << Ingredient.find_or_create_by(name: "Mint leaves")
koftas_recipe.ingredients << Ingredient.find_or_create_by(name: "Ground coffee")
koftas_recipe.ingredients << Ingredient.find_or_create_by(name: "Ground cascabel chilli")
koftas_recipe.ingredients << Ingredient.find_or_create_by(name: "Soft light brown sugar")
koftas_recipe.ingredients << Ingredient.find_or_create_by(name: "Smoked paprika")
koftas_recipe.ingredients << Ingredient.find_or_create_by(name: "Ground cumin")


Recipe.last.cuisines << Cuisine.find_or_create_by(name: "Greek")
Recipe.last.dietaries << Dietary.find_or_create_by(dietary_type: "Poultry")
Recipe.last.dietaries << Dietary.find_or_create_by(dietary_type: "None")

# Recipe 14
jollof_rice_recipe = Recipe.create!(
  name: 'Jollof Rice',
  description: 'Jollof rice gets a smoky flavor boost in this delicious jollof recipe from Lerato Umah-Shaylor.',
  time: 60,
  photo_url: 'seed/jollof_rice.jpg',
  instruction: '1. Put all the puree ingredients in a food processor, except the scotch bonnets, if using whole, and whizz into a thick and aromatic puree.
                2. Put the oil in a wide large saucepan, for which you have a tightly fitting lid, and set over a medium heat. Add the red onion and a pinch of fine sea salt. Cook for 15 minutes, stirring often, until softened and golden. If it starts to get dry, add a little splash of water to prevent the onion from burning.
                3. Stir in the tomato puree and cook for 2-3 minutes, until the puree starts to separate. Add the spices and herbs and cook for 2 minutes, stirring continuously.
                4. Gently pour in the blended puree, stirring well, then cover and cook for up to 25 minutes, until the puree is reduced to a drier sauce. Keep a close eye on it and stir occasionally.
                5. Add the rice and stock (about 250ml for basmati rice and up to 400ml for long-grain rice), ensuring there is enough water to just submerge the rice. Season with the fine sea salt and stir just once. Add the scotch bonnets, if using whole. Bring to a boil, then reduce the heat, cover, and simmer over a low-medium heat for up to 30 minutes. The sauce must be visibly simmering to ensure the rice cooks properly.
                6. Once the rice is cooked, remove the pan from the heat and leave covered to steam for a few minutes. Fluff with a fork, scatter over the reserved thyme leaves, and enjoy your wonderful creation with a fresh salad and/or fried plantains, because jollof and plantains are a match made in heaven.'
)

jollof_rice_recipe.ingredients << Ingredient.find_or_create_by(name: "Long-grain or basmati rice")
jollof_rice_recipe.ingredients << Ingredient.find_or_create_by(name: "Vegetable or chicken stock")
jollof_rice_recipe.ingredients << Ingredient.find_or_create_by(name: "Fine sea salt")
jollof_rice_recipe.ingredients << Ingredient.find_or_create_by(name: "Plantains")

# For the puree
jollof_rice_recipe.ingredients << Ingredient.find_or_create_by(name: "Vine-ripened tomatoes or tin plum tomatoes")
jollof_rice_recipe.ingredients << Ingredient.find_or_create_by(name: "Romano or red peppers")
jollof_rice_recipe.ingredients << Ingredient.find_or_create_by(name: "Large onion")
jollof_rice_recipe.ingredients << Ingredient.find_or_create_by(name: "Piece of ginger")
jollof_rice_recipe.ingredients << Ingredient.find_or_create_by(name: "Garlic cloves")
jollof_rice_recipe.ingredients << Ingredient.find_or_create_by(name: "Red or yellow scotch bonnet peppers")

# For the jollof base
jollof_rice_recipe.ingredients << Ingredient.find_or_create_by(name: "Coconut, rapeseed, or vegetable oil")
jollof_rice_recipe.ingredients << Ingredient.find_or_create_by(name: "Small red onion")
jollof_rice_recipe.ingredients << Ingredient.find_or_create_by(name: "Tomato puree")
jollof_rice_recipe.ingredients << Ingredient.find_or_create_by(name: "Curry powder")
jollof_rice_recipe.ingredients << Ingredient.find_or_create_by(name: "Smoked paprika")
jollof_rice_recipe.ingredients << Ingredient.find_or_create_by(name: "Bay leaf")
jollof_rice_recipe.ingredients << Ingredient.find_or_create_by(name: "Dried thyme")
jollof_rice_recipe.ingredients << Ingredient.find_or_create_by(name: "Thyme sprigs")

Recipe.last.dietaries << Dietary.find_or_create_by(dietary_type: "Dairy-Free")
Recipe.last.dietaries << Dietary.find_or_create_by(dietary_type: "Gluten-Free")
Recipe.last.dietaries << Dietary.find_or_create_by(dietary_type: "Vegan")
Recipe.last.cuisines << Cuisine.find_or_create_by(name: "African")
Recipe.last.cuisines << Cuisine.find_or_create_by(name: "All")

# Recipe 15
scully_pork_belly = Recipe.create!(
  name: "Scully's crispy pork belly",
  description: 'Experience the perfection of Scullys crispy and flavorful pork belly with seasonal relishes.',
  time: 180,
  photo_url: 'seed/pork_belly.jpg',
  instruction: "
    1. Heat the oven to 250°C/Gas Mark 10 or its highest setting.
    2. Place the herbs, garlic, and olive oil in a heavy-duty blender or food processor and roughly purée them.
    3. Lay the pork belly in an oven tray, skin-side down, and lightly sprinkle with salt and pepper. Spread the herb mixture evenly over the top, pressing it onto the meat.
    4. Turn the belly skin-side up, dry the skin with kitchen paper, and sprinkle sea salt evenly over the skin (avoid using too much). Place the tray in the oven and roast for 1 hour, turning it every 20 minutes.
    5. Once the skin starts forming crackling, reduce the oven temperature to 170°C/Gas Mark 3, pour the white wine into the tray (avoiding the pork skin), and continue roasting for another hour. If the belly starts turning black, cover it with foil.
    6. For the final stage, reduce the oven temperature to 110°C/Gas Mark ¼ and continue roasting for another hour, until the skin has completely crackled and dried.
    7. Remove the pork from the oven. Use a sharp knife to divide it into segments of a few ribs, cutting between the rib bones. Serve with seasonal relishes on the side."
)

# Create ingredients
scully_pork_belly.ingredients << Ingredient.find_or_create_by(name: "1 bunch of thyme, roughly chopped")
scully_pork_belly.ingredients << Ingredient.find_or_create_by(name: "1 bunch of rosemary, roughly chopped")
scully_pork_belly.ingredients << Ingredient.find_or_create_by(name: "1 head of garlic, cloves peeled and crushed")
scully_pork_belly.ingredients << Ingredient.find_or_create_by(name: "150ml olive oil")
scully_pork_belly.ingredients << Ingredient.find_or_create_by(name: "1 piece of pork belly, weighing 2-3kg")
scully_pork_belly.ingredients << Ingredient.find_or_create_by(name: "1 bottle of white wine")
scully_pork_belly.ingredients << Ingredient.find_or_create_by(name: "Coarse sea salt and black pepper")

# Create cuisines and dietaries
scully_pork_belly.cuisines << Cuisine.find_or_create_by(name: "American") # You can change this to the appropriate cuisine
scully_pork_belly.dietaries << Dietary.find_or_create_by(dietary_type: "High-protein")
scully_pork_belly.dietaries << Dietary.find_or_create_by(dietary_type: "None")

# Recipe 16
african_roasted_vegetables = Recipe.create!(
  name: 'African Roasted Vegetables',
  description: 'A flavorful dish with roasted eggplant, zucchini, tomatoes, and onions.',
  time: 40,
  photo_url: 'seed/African_roasted_vegetables.jpg',
  instruction: '1. Preheat the oven to 400°F (200°C).
                2. Toss eggplant, zucchini, tomatoes, and onions with olive oil, salt, pepper, and dried oregano.
                3. Roast in the oven until vegetables are tender and slightly caramelized.
                4. Serve as a side dish with feta cheese and a drizzle of extra virgin olive oil.'
)

african_roasted_vegetables.ingredients << Ingredient.find_or_create_by(name: "Eggplant")
african_roasted_vegetables.ingredients << Ingredient.find_or_create_by(name: "Zucchini")
african_roasted_vegetables.ingredients << Ingredient.find_or_create_by(name: "Tomatoes")
african_roasted_vegetables.ingredients << Ingredient.find_or_create_by(name: "Onions")
african_roasted_vegetables.ingredients << Ingredient.find_or_create_by(name: "Olive oil")
african_roasted_vegetables.ingredients << Ingredient.find_or_create_by(name: "Salt")
african_roasted_vegetables.ingredients << Ingredient.find_or_create_by(name: "Pepper")
african_roasted_vegetables.ingredients << Ingredient.find_or_create_by(name: "Dried oregano")
african_roasted_vegetables.ingredients << Ingredient.find_or_create_by(name: "Feta cheese")
african_roasted_vegetables.ingredients << Ingredient.find_or_create_by(name: "Extra virgin olive oil")

african_roasted_vegetables.cuisines << Cuisine.find_by(name: "African")
african_roasted_vegetables.dietaries << Dietary.find_by(dietary_type: "Vegetarian")
african_roasted_vegetables.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 17
shrimp_pad_thai = Recipe.create!(
  name: 'Shrimp Pad Thai',
  description: 'A classic Thai dish with rice noodles, shrimp, and a tangy tamarind sauce.',
  time: 35,
  photo_url: 'seed/shrimp_pad_thai.jpg',
  instruction: '1. Cook rice noodles according to package instructions.
                2. In a wok, heat vegetable oil and stir-fry shrimp until pink.
                3. Add garlic, tofu, and beaten egg.
                4. Stir in a sauce made of tamarind paste, soy sauce, and sugar.
                5. Toss in cooked noodles, bean sprouts, and chopped peanuts.
                6. Garnish with lime wedges and cilantro.'
)

shrimp_pad_thai.ingredients << Ingredient.find_or_create_by(name: "Rice noodles")
shrimp_pad_thai.ingredients << Ingredient.find_or_create_by(name: "Shrimp")
shrimp_pad_thai.ingredients << Ingredient.find_or_create_by(name: "Tofu")
shrimp_pad_thai.ingredients << Ingredient.find_or_create_by(name: "Garlic")
shrimp_pad_thai.ingredients << Ingredient.find_or_create_by(name: "Egg")
shrimp_pad_thai.ingredients << Ingredient.find_or_create_by(name: "Tamarind paste")
shrimp_pad_thai.ingredients << Ingredient.find_or_create_by(name: "Soy sauce")
shrimp_pad_thai.ingredients << Ingredient.find_or_create_by(name: "Sugar")
shrimp_pad_thai.ingredients << Ingredient.find_or_create_by(name: "Bean sprouts")
shrimp_pad_thai.ingredients << Ingredient.find_or_create_by(name: "Chopped peanuts")
shrimp_pad_thai.ingredients << Ingredient.find_or_create_by(name: "Lime wedges")
shrimp_pad_thai.ingredients << Ingredient.find_or_create_by(name: "Cilantro")

shrimp_pad_thai.cuisines << Cuisine.find_by(name: "Thai")
shrimp_pad_thai.dietaries << Dietary.find_by(dietary_type: "Pescatarian")
shrimp_pad_thai.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 18
chicken_and_rice_pilaf = Recipe.create!(
  name: 'Chicken and Rice Pilaf',
  description: 'A comforting dish with tender chicken thighs and aromatic spices.',
  time: 50,
  photo_url: 'seed/chicken_and_rice_pilaf.jpg',
  instruction: '1. Season chicken thighs with salt, pepper, and ROSE HARISSA spice rub.
                2. In a large skillet, heat olive oil and brown chicken.
                3. Add garlic cloves, diced tomatoes, and ground cumin.
                4. Stir in rice and chicken broth.
                5. Simmer until rice is cooked and chicken is tender.
                6. Garnish with chopped parsley.'
)

chicken_and_rice_pilaf.ingredients << Ingredient.find_or_create_by(name: "Chicken thighs")
chicken_and_rice_pilaf.ingredients << Ingredient.find_or_create_by(name: "ROSE HARISSA")
chicken_and_rice_pilaf.ingredients << Ingredient.find_or_create_by(name: "Garlic cloves")
chicken_and_rice_pilaf.ingredients << Ingredient.find_or_create_by(name: "Tomato")
chicken_and_rice_pilaf.ingredients << Ingredient.find_or_create_by(name: "Ground cumin")
chicken_and_rice_pilaf.ingredients << Ingredient.find_or_create_by(name: "Rice")
chicken_and_rice_pilaf.ingredients << Ingredient.find_or_create_by(name: "Chicken broth")
chicken_and_rice_pilaf.ingredients << Ingredient.find_or_create_by(name: "Olive oil")
chicken_and_rice_pilaf.ingredients << Ingredient.find_or_create_by(name: "Salt")
chicken_and_rice_pilaf.ingredients << Ingredient.find_or_create_by(name: "Pepper")
chicken_and_rice_pilaf.ingredients << Ingredient.find_or_create_by(name: "Flat-leaf parsley")

chicken_and_rice_pilaf.cuisines << Cuisine.find_by(name: "Mediterranean")
chicken_and_rice_pilaf.dietaries << Dietary.find_by(dietary_type: "Halal")
chicken_and_rice_pilaf.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 19
vegetable_stir_fry = Recipe.create!(
  name: 'Vegetable Stir-Fry',
  description: 'A quick and healthy stir-fry with assorted vegetables and tofu.',
  time: 30,
  photo_url: 'seed/vegetable_stir_fry.jpg',
  instruction: '1. Heat vegetable oil in a wok.
                2. Stir-fry tofu until lightly browned.
                3. Add garlic, sliced bell peppers, and onions.
                4. Toss in zucchini, snap peas, and soy sauce.
                5. Cook until vegetables are tender-crisp.
                6. Serve over rice.'
)

vegetable_stir_fry.ingredients << Ingredient.find_or_create_by(name: "Tofu")
vegetable_stir_fry.ingredients << Ingredient.find_or_create_by(name: "Garlic")
vegetable_stir_fry.ingredients << Ingredient.find_or_create_by(name: "Bell peppers")
vegetable_stir_fry.ingredients << Ingredient.find_or_create_by(name: "Onions")
vegetable_stir_fry.ingredients << Ingredient.find_or_create_by(name: "Zucchini")
vegetable_stir_fry.ingredients << Ingredient.find_or_create_by(name: "Snap peas")
vegetable_stir_fry.ingredients << Ingredient.find_or_create_by(name: "Soy sauce")
vegetable_stir_fry.ingredients << Ingredient.find_or_create_by(name: "Rice")

vegetable_stir_fry.cuisines << Cuisine.find_by(name: "Chinese")
vegetable_stir_fry.dietaries << Dietary.find_by(dietary_type: "Vegetarian")
vegetable_stir_fry.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 20
shrimp_scampi = Recipe.create!(
  name: 'Shrimp Scampi',
  description: 'A classic Italian dish with succulent shrimp and garlic butter sauce.',
  time: 25,
  photo_url: 'seed/shrimp_scampi.jpg',
  instruction: '1. Cook linguine pasta according to package instructions.
                2. In a skillet, melt butter and sauté garlic until fragrant.
                3. Add shrimp and cook until pink.
                4. Toss in cooked pasta, lemon juice, and parsley.
                5. Season with salt and pepper.'
)

shrimp_scampi.ingredients << Ingredient.find_or_create_by(name: "Shrimp")
shrimp_scampi.ingredients << Ingredient.find_or_create_by(name: "Garlic")
shrimp_scampi.ingredients << Ingredient.find_or_create_by(name: "Butter")
shrimp_scampi.ingredients << Ingredient.find_or_create_by(name: "Linguine pasta")
shrimp_scampi.ingredients << Ingredient.find_or_create_by(name: "Lemon wedges")
shrimp_scampi.ingredients << Ingredient.find_or_create_by(name: "Fresh parsley")
shrimp_scampi.ingredients << Ingredient.find_or_create_by(name: "Salt")
shrimp_scampi.ingredients << Ingredient.find_or_create_by(name: "Pepper")

shrimp_scampi.cuisines << Cuisine.find_by(name: "Italian")
shrimp_scampi.dietaries << Dietary.find_by(dietary_type: "Pescatarian")
shrimp_scampi.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 21
cabbage_carrot_slaw = Recipe.create!(
  name: 'Cabbage and Carrot Slaw',
  description: 'A refreshing coleslaw with cabbage, carrots, and a tangy dressing.',
  time: 15,
  photo_url: 'seed/cabbage_carrot_slaw.jpg',
  instruction: '1. Shred cabbage and carrots.
                2. In a bowl, mix mayonnaise, vinegar, sugar, and mustard.
                3. Toss the shredded vegetables with the dressing.
                4. Chill in the fridge before serving.'
)

cabbage_carrot_slaw.ingredients << Ingredient.find_or_create_by(name: "Cabbage")
cabbage_carrot_slaw.ingredients << Ingredient.find_or_create_by(name: "Carrots")
cabbage_carrot_slaw.ingredients << Ingredient.find_or_create_by(name: "Mayonnaise")
cabbage_carrot_slaw.ingredients << Ingredient.find_or_create_by(name: "Vinegar")
cabbage_carrot_slaw.ingredients << Ingredient.find_or_create_by(name: "Sugar")
cabbage_carrot_slaw.ingredients << Ingredient.find_or_create_by(name: "Mustard")

cabbage_carrot_slaw.cuisines << Cuisine.find_by(name: "American")
cabbage_carrot_slaw.dietaries << Dietary.find_by(dietary_type: "Gluten-free")
cabbage_carrot_slaw.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 22
minty_yogurt_sauce = Recipe.create!(
  name: 'Minty Yogurt Sauce',
  description: 'A refreshing yogurt sauce with mint leaves, perfect for grilled dishes.',
  time: 10,
  photo_url: 'seed/minty_yogurt_sauce.jpg',
  instruction: '1. Finely chop fresh mint leaves.
                2. Mix mint with Greek-style yogurt.
                3. Season with salt and pepper.
                4. Serve as a dipping sauce for grilled meats.'
)

minty_yogurt_sauce.ingredients << Ingredient.find_or_create_by(name: "Mint leaves")
minty_yogurt_sauce.ingredients << Ingredient.find_or_create_by(name: "Greek-style yoghurt")
minty_yogurt_sauce.ingredients << Ingredient.find_or_create_by(name: "Salt")
minty_yogurt_sauce.ingredients << Ingredient.find_or_create_by(name: "Pepper")

minty_yogurt_sauce.cuisines << Cuisine.find_by(name: "Mediterranean")
minty_yogurt_sauce.dietaries << Dietary.find_by(dietary_type: "Vegetarian")
minty_yogurt_sauce.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 23
coffee_rubbed_pork = Recipe.create!(
  name: 'Coffee-Rubbed Pork Shoulder',
  description: 'A flavorful pork shoulder roast rubbed with ground coffee and spices.',
  time: 120,
  photo_url: 'seed/coffee_rubbed_pork.jpg',
  instruction: '1. Mix ground coffee, Cascabel chili, brown sugar, smoked paprika, ground cumin, and salt.
                2. Rub the spice mixture all over the pork shoulder.
                3. Roast in the oven until tender and caramelized.
                4. Serve with black garlic aioli.'
)

coffee_rubbed_pork.ingredients << Ingredient.find_or_create_by(name: "Pork shoulder")
coffee_rubbed_pork.ingredients << Ingredient.find_or_create_by(name: "Ground coffee")
coffee_rubbed_pork.ingredients << Ingredient.find_or_create_by(name: "Cascabel chilli")
coffee_rubbed_pork.ingredients << Ingredient.find_or_create_by(name: "Soft light brown sugar")
coffee_rubbed_pork.ingredients << Ingredient.find_or_create_by(name: "Smoked paprika")
coffee_rubbed_pork.ingredients << Ingredient.find_or_create_by(name: "Ground cumin")
coffee_rubbed_pork.ingredients << Ingredient.find_or_create_by(name: "Black garlic cloves")

coffee_rubbed_pork.cuisines << Cuisine.find_by(name: "American")
coffee_rubbed_pork.dietaries << Dietary.find_by(dietary_type: "Low-carb")
coffee_rubbed_pork.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 24
japanese_sushi_bowl = Recipe.create!(
  name: 'Japanese Sushi Bowl',
  description: 'A delightful sushi bowl with fresh ingredients and savory flavors.',
  time: 30,
  photo_url: 'seed/japanese_sushi_bowl.jpg',
  instruction: '1. Cook sushi rice according to package instructions.
                2. Arrange sushi rice in bowls.
                3. Top with sliced avocado, cucumber, and cooked shrimp.
                4. Drizzle with soy sauce and garnish with pickled ginger and sesame seeds.'
)

japanese_sushi_bowl.ingredients << Ingredient.find_or_create_by(name: "Sushi rice")
japanese_sushi_bowl.ingredients << Ingredient.find_or_create_by(name: "Avocado")
japanese_sushi_bowl.ingredients << Ingredient.find_or_create_by(name: "Cucumber")
japanese_sushi_bowl.ingredients << Ingredient.find_or_create_by(name: "Cooked shrimp")
japanese_sushi_bowl.ingredients << Ingredient.find_or_create_by(name: "Soy sauce")
japanese_sushi_bowl.ingredients << Ingredient.find_or_create_by(name: "Pickled ginger")
japanese_sushi_bowl.ingredients << Ingredient.find_or_create_by(name: "Sesame seeds")

japanese_sushi_bowl.cuisines << Cuisine.find_by(name: "Japanese")
japanese_sushi_bowl.dietaries << Dietary.find_by(dietary_type: "Pescatarian")
japanese_sushi_bowl.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 25
mediterranean_aubergine_salad = Recipe.create!(
  name: 'Mediterranean Aubergine Salad',
  description: 'A refreshing salad with grilled Aubergine, cherry tomatoes, and feta cheese.',
  time: 30,
  photo_url: 'seed/mediterranean_Aubergine_salad.jpg',
  instruction: '1. Grill Aubergine slices until tender and slightly charred.
                2. Combine grilled Aubergine, cherry tomatoes, red onion, and feta cheese.
                3. Drizzle with olive oil and balsamic vinegar.
                4. Season with salt, pepper, and dried oregano.'
)

mediterranean_aubergine_salad.ingredients << Ingredient.find_or_create_by(name: "Aubergine")
mediterranean_aubergine_salad.ingredients << Ingredient.find_or_create_by(name: "Cherry tomatoes")
mediterranean_aubergine_salad.ingredients << Ingredient.find_or_create_by(name: "Red onion")
mediterranean_aubergine_salad.ingredients << Ingredient.find_or_create_by(name: "Feta cheese")
mediterranean_aubergine_salad.ingredients << Ingredient.find_or_create_by(name: "Extra virgin olive oil")
mediterranean_aubergine_salad.ingredients << Ingredient.find_or_create_by(name: "Balsamic vinegar")
mediterranean_aubergine_salad.ingredients << Ingredient.find_or_create_by(name: "Dried oregano")
mediterranean_aubergine_salad.ingredients << Ingredient.find_or_create_by(name: "Salt")
mediterranean_aubergine_salad.ingredients << Ingredient.find_or_create_by(name: "Pepper")

mediterranean_aubergine_salad.cuisines << Cuisine.find_by(name: "Mediterranean")
mediterranean_aubergine_salad.dietaries << Dietary.find_by(dietary_type: "Vegetarian")
mediterranean_aubergine_salad.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 26
thai_basil_shrimp = Recipe.create!(
  name: 'Thai Basil Shrimp',
  description: 'Spicy Thai dish with shrimp, basil, and a flavorful sauce.',
  time: 20,
  photo_url: 'seed/thai_basil_shrimp.jpg',
  instruction: '1. Heat vegetable oil in a pan and stir-fry garlic and chili peppers.
                2. Add shrimp and cook until pink.
                3. Toss in fresh basil leaves and a sauce made of soy sauce, fish sauce, sugar, and lime juice.
                4. Serve over rice.'
)

thai_basil_shrimp.ingredients << Ingredient.find_or_create_by(name: "Shrimp")
thai_basil_shrimp.ingredients << Ingredient.find_or_create_by(name: "Garlic")
thai_basil_shrimp.ingredients << Ingredient.find_or_create_by(name: "Chili peppers")
thai_basil_shrimp.ingredients << Ingredient.find_or_create_by(name: "Basil")
thai_basil_shrimp.ingredients << Ingredient.find_or_create_by(name: "Soy sauce")
thai_basil_shrimp.ingredients << Ingredient.find_or_create_by(name: "Fish sauce")
thai_basil_shrimp.ingredients << Ingredient.find_or_create_by(name: "Sugar")
thai_basil_shrimp.ingredients << Ingredient.find_or_create_by(name: "Lime wedges")
thai_basil_shrimp.ingredients << Ingredient.find_or_create_by(name: "Rice")

thai_basil_shrimp.cuisines << Cuisine.find_by(name: "Thai")
thai_basil_shrimp.dietaries << Dietary.find_by(dietary_type: "Pescatarian")
thai_basil_shrimp.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 27
indian_butter_chicken = Recipe.create!(
  name: 'Indian Butter Chicken',
  description: 'A rich and creamy Indian dish with tender chicken in a buttery tomato sauce.',
  time: 45,
  photo_url: 'seed/indian_butter_chicken.jpg',
  instruction: '1. Marinate chicken thighs in yogurt, ginger, garlic, and spices.
                2. Grill or pan-fry the chicken until cooked.
                3. Simmer in a tomato-based sauce with butter and cream.
                4. Serve with naan or rice.'
)

indian_butter_chicken.ingredients << Ingredient.find_or_create_by(name: "Chicken thighs")
indian_butter_chicken.ingredients << Ingredient.find_or_create_by(name: "Yogurt")
indian_butter_chicken.ingredients << Ingredient.find_or_create_by(name: "Ginger")
indian_butter_chicken.ingredients << Ingredient.find_or_create_by(name: "Garlic")
indian_butter_chicken.ingredients << Ingredient.find_or_create_by(name: "Butter")
indian_butter_chicken.ingredients << Ingredient.find_or_create_by(name: "Cream")
indian_butter_chicken.ingredients << Ingredient.find_or_create_by(name: "Naan")
indian_butter_chicken.ingredients << Ingredient.find_or_create_by(name: "Rice")

indian_butter_chicken.cuisines << Cuisine.find_by(name: "Indian")
indian_butter_chicken.dietaries << Dietary.find_by(dietary_type: "Low-carb")
indian_butter_chicken.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 28
mediterranean_roasted_vegetables = Recipe.create!(
  name: 'Mediterranean Roasted Vegetables',
  description: 'A flavorful side dish with roasted vegetables and Mediterranean spices.',
  time: 35,
  photo_url: 'seed/mediterranean_roasted_vegetables.jpg',
  instruction: '1. Toss eggplant, zucchini, tomatoes, onions, and garlic with olive oil and spices.
                2. Roast in the oven until vegetables are tender and caramelized.
                3. Garnish with fresh parsley and serve.'
)

mediterranean_roasted_vegetables.ingredients << Ingredient.find_or_create_by(name: "Aubergine")
mediterranean_roasted_vegetables.ingredients << Ingredient.find_or_create_by(name: "Zucchini")
mediterranean_roasted_vegetables.ingredients << Ingredient.find_or_create_by(name: "Tomatoes")
mediterranean_roasted_vegetables.ingredients << Ingredient.find_or_create_by(name: "Onions")
mediterranean_roasted_vegetables.ingredients << Ingredient.find_or_create_by(name: "Garlic")
mediterranean_roasted_vegetables.ingredients << Ingredient.find_or_create_by(name: "Olive oil")
mediterranean_roasted_vegetables.ingredients << Ingredient.find_or_create_by(name: "Fresh parsley")

mediterranean_roasted_vegetables.cuisines << Cuisine.find_by(name: "Mediterranean")
mediterranean_roasted_vegetables.dietaries << Dietary.find_by(dietary_type: "Vegetarian")
mediterranean_roasted_vegetables.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 29
mediterranean_grilled_chicken = Recipe.create!(
  name: 'Mediterranean Grilled Chicken',
  description: 'Tender grilled chicken with Mediterranean spices and a lemony marinade.',
  time: 35,
  photo_url: 'seed/mediterranean_grilled_chicken.jpg',
  instruction: '1. Marinate chicken breasts in olive oil, garlic, lemon juice, oregano, and thyme.
                2. Grill until cooked through and slightly charred.
                3. Serve with a side of Greek Tzatziki Sauce and roasted vegetables.'
)

mediterranean_grilled_chicken.ingredients << Ingredient.find_or_create_by(name: "Chicken breasts")
mediterranean_grilled_chicken.ingredients << Ingredient.find_or_create_by(name: "Olive oil")
mediterranean_grilled_chicken.ingredients << Ingredient.find_or_create_by(name: "Garlic")
mediterranean_grilled_chicken.ingredients << Ingredient.find_or_create_by(name: "Lemon juice")
mediterranean_grilled_chicken.ingredients << Ingredient.find_or_create_by(name: "Dried oregano")
mediterranean_grilled_chicken.ingredients << Ingredient.find_or_create_by(name: "Thyme")
mediterranean_grilled_chicken.ingredients << Ingredient.find_or_create_by(name: "Greek Tzatziki Sauce")
mediterranean_grilled_chicken.ingredients << Ingredient.find_or_create_by(name: "Roasted vegetables")

mediterranean_grilled_chicken.cuisines << Cuisine.find_by(name: "Mediterranean")
mediterranean_grilled_chicken.dietaries << Dietary.find_by(dietary_type: "High-protein")
mediterranean_grilled_chicken.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 30
japanese_teriyaki_tofu = Recipe.create!(
  name: 'Japanese Teriyaki Tofu',
  description: 'Crispy tofu glazed with sweet and savory teriyaki sauce.',
  time: 30,
  photo_url: 'seed/japanese_teriyaki_tofu.jpg',
  instruction: '1. Press tofu to remove excess moisture, then cut into cubes.
                2. Pan-fry tofu until golden brown.
                3. Coat with homemade teriyaki sauce made from soy sauce, sugar, and ginger.
                4. Garnish with sesame seeds and green onions.'
)

japanese_teriyaki_tofu.ingredients << Ingredient.find_or_create_by(name: "Tofu")
japanese_teriyaki_tofu.ingredients << Ingredient.find_or_create_by(name: "Soy sauce")
japanese_teriyaki_tofu.ingredients << Ingredient.find_or_create_by(name: "Sugar")
japanese_teriyaki_tofu.ingredients << Ingredient.find_or_create_by(name: "Ginger")
japanese_teriyaki_tofu.ingredients << Ingredient.find_or_create_by(name: "Sesame seeds")
japanese_teriyaki_tofu.ingredients << Ingredient.find_or_create_by(name: "Green onions")

japanese_teriyaki_tofu.cuisines << Cuisine.find_by(name: "Japanese")
japanese_teriyaki_tofu.dietaries << Dietary.find_by(dietary_type: "Vegetarian")
japanese_teriyaki_tofu.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 31
italian_salad = Recipe.create!(
  name: 'Italian Salad',
  description: 'A classic Italian salad with fresh vegetables and feta cheese.',
  time: 15,
  photo_url: 'seed/italian_salad.jpg',
  instruction: '1. Combine cucumbers, cherry tomatoes, red onion, Kalamata olives, and feta cheese.
                2. Drizzle with extra virgin olive oil, lemon juice, and sprinkle dried oregano.
                3. Season with salt and pepper.'
)

italian_salad.ingredients << Ingredient.find_or_create_by(name: "Cucumbers")
italian_salad.ingredients << Ingredient.find_or_create_by(name: "Cherry tomatoes")
italian_salad.ingredients << Ingredient.find_or_create_by(name: "Red onion")
italian_salad.ingredients << Ingredient.find_or_create_by(name: "Kalamata olives")
italian_salad.ingredients << Ingredient.find_or_create_by(name: "Feta cheese")
italian_salad.ingredients << Ingredient.find_or_create_by(name: "Extra virgin olive oil")
italian_salad.ingredients << Ingredient.find_or_create_by(name: "Lemon juice")
italian_salad.ingredients << Ingredient.find_or_create_by(name: "Dried oregano")
italian_salad.ingredients << Ingredient.find_or_create_by(name: "Salt")
italian_salad.ingredients << Ingredient.find_or_create_by(name: "Pepper")

italian_salad.cuisines << Cuisine.find_by(name: "Italian")
italian_salad.dietaries << Dietary.find_by(dietary_type: "Vegetarian")
italian_salad.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 32
thai_red_curry_shrimp = Recipe.create!(
  name: 'Thai Red Curry Shrimp',
  description: 'A spicy Thai dish with succulent shrimp and red curry paste.',
  time: 25,
  photo_url: 'seed/thai_red_curry_shrimp.jpg',
  instruction: '1. Cook shrimp in a pan, then set aside.
                2. Sauté bell peppers, garlic, and onions.
                3. Add red curry paste, coconut milk, and fish sauce.
                4. Simmer and return shrimp to the sauce.
                5. Serve over rice.'
)

thai_red_curry_shrimp.ingredients << Ingredient.find_or_create_by(name: "Shrimp")
thai_red_curry_shrimp.ingredients << Ingredient.find_or_create_by(name: "Bell peppers")
thai_red_curry_shrimp.ingredients << Ingredient.find_or_create_by(name: "Garlic")
thai_red_curry_shrimp.ingredients << Ingredient.find_or_create_by(name: "Onions")
thai_red_curry_shrimp.ingredients << Ingredient.find_or_create_by(name: "Red curry paste")
thai_red_curry_shrimp.ingredients << Ingredient.find_or_create_by(name: "Coconut milk")
thai_red_curry_shrimp.ingredients << Ingredient.find_or_create_by(name: "Fish sauce")
thai_red_curry_shrimp.ingredients << Ingredient.find_or_create_by(name: "Rice")

thai_red_curry_shrimp.cuisines << Cuisine.find_by(name: "Thai")
thai_red_curry_shrimp.dietaries << Dietary.find_by(dietary_type: "Pescatarian")
thai_red_curry_shrimp.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 33
barbecue_pulled_pork_sliders = Recipe.create!(
  name: 'Barbecue Pulled Pork Sliders',
  description: 'Slow-cooked pulled pork with barbecue sauce in a slider.',
  time: 60,
  photo_url: 'seed/barbecue_pulled_pork_sliders.jpg',
  instruction: '1. Rub pork shoulder with barbecue spice rub.
                2. Slow-cook the pork until tender.
                3. Shred the pork and mix with barbecue sauce.
                4. Serve in hamburger buns with coleslaw.'
)

barbecue_pulled_pork_sliders.ingredients << Ingredient.find_or_create_by(name: "Pork shoulder")
barbecue_pulled_pork_sliders.ingredients << Ingredient.find_or_create_by(name: "Barbecue spice rub")
barbecue_pulled_pork_sliders.ingredients << Ingredient.find_or_create_by(name: "Barbecue sauce")
barbecue_pulled_pork_sliders.ingredients << Ingredient.find_or_create_by(name: "Coleslaw dressing")
barbecue_pulled_pork_sliders.ingredients << Ingredient.find_or_create_by(name: "Hamburger buns")

barbecue_pulled_pork_sliders.cuisines << Cuisine.find_by(name: "American")
barbecue_pulled_pork_sliders.dietaries << Dietary.find_by(dietary_type: "High-protein")
barbecue_pulled_pork_sliders.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 34
sushi_rice_bowl_avocado = Recipe.create!(
  name: 'Sushi Rice Bowl with Avocado',
  description: 'A sushi rice bowl topped with creamy avocado and a soy-based sauce.',
  time: 20,
  photo_url: 'seed/sushi_rice_bowl_avocado.jpg',
  instruction: '1. Cook sushi rice according to package instructions and let it cool.
                2. Arrange sushi rice in a bowl.
                3. Top with sliced avocado and drizzle with soy sauce and sesame seeds.'
)

sushi_rice_bowl_avocado.ingredients << Ingredient.find_or_create_by(name: "Sushi rice")
sushi_rice_bowl_avocado.ingredients << Ingredient.find_or_create_by(name: "Avocado")
sushi_rice_bowl_avocado.ingredients << Ingredient.find_or_create_by(name: "Soy sauce")
sushi_rice_bowl_avocado.ingredients << Ingredient.find_or_create_by(name: "Sesame seeds")

sushi_rice_bowl_avocado.cuisines << Cuisine.find_by(name: "Japanese")
sushi_rice_bowl_avocado.dietaries << Dietary.find_by(dietary_type: "Vegetarian")
sushi_rice_bowl_avocado.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 35
minty_greek_tzatziki_sauce = Recipe.create!(
  name: 'Minty Greek Tzatziki Sauce',
  description: 'A refreshing Greek Tzatziki sauce with a hint of mint.',
  time: 10,
  photo_url: 'seed/minty_greek_tzatziki_sauce.jpg',
  instruction: '1. Grate cucumber and squeeze out excess moisture.
                2. Mix grated cucumber with Greek yogurt, garlic, mint, and lemon juice.
                3. Season with salt and pepper.'
)

minty_greek_tzatziki_sauce.ingredients << Ingredient.find_or_create_by(name: "Cucumber")
minty_greek_tzatziki_sauce.ingredients << Ingredient.find_or_create_by(name: "Greek yogurt")
minty_greek_tzatziki_sauce.ingredients << Ingredient.find_or_create_by(name: "Garlic")
minty_greek_tzatziki_sauce.ingredients << Ingredient.find_or_create_by(name: "Mint leaves")
minty_greek_tzatziki_sauce.ingredients << Ingredient.find_or_create_by(name: "Lemon juice")
minty_greek_tzatziki_sauce.ingredients << Ingredient.find_or_create_by(name: "Salt")
minty_greek_tzatziki_sauce.ingredients << Ingredient.find_or_create_by(name: "Pepper")

minty_greek_tzatziki_sauce.cuisines << Cuisine.find_by(name: "Greek")
minty_greek_tzatziki_sauce.dietaries << Dietary.find_by(dietary_type: "Vegetarian")
minty_greek_tzatziki_sauce.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 36
spicy_mediterranean_aubergine_dip = Recipe.create!(
  name: 'Spicy Mediterranean Aubergine Dip',
  description: 'A spicy and savory Mediterranean Aubergine dip.',
  time: 45,
  photo_url: 'seed/spicy_mediterranean_Aubergine_dip.jpg',
  instruction: '1. Roast Aubergine until tender and charred.
                2. Blend with tahini, lemon juice, garlic, cumin, and red pepper flakes.
                3. Drizzle with olive oil and serve with pita bread.'
)

spicy_mediterranean_aubergine_dip.ingredients << Ingredient.find_or_create_by(name: "Aubergine")
spicy_mediterranean_aubergine_dip.ingredients << Ingredient.find_or_create_by(name: "Tahini")
spicy_mediterranean_aubergine_dip.ingredients << Ingredient.find_or_create_by(name: "Lemon juice")
spicy_mediterranean_aubergine_dip.ingredients << Ingredient.find_or_create_by(name: "Garlic")
spicy_mediterranean_aubergine_dip.ingredients << Ingredient.find_or_create_by(name: "Cumin")
spicy_mediterranean_aubergine_dip.ingredients << Ingredient.find_or_create_by(name: "Red pepper flakes")
spicy_mediterranean_aubergine_dip.ingredients << Ingredient.find_or_create_by(name: "Olive oil")
spicy_mediterranean_aubergine_dip.ingredients << Ingredient.find_or_create_by(name: "Pita bread")

spicy_mediterranean_aubergine_dip.cuisines << Cuisine.find_by(name: "Mediterranean")
spicy_mediterranean_aubergine_dip.dietaries << Dietary.find_by(dietary_type: "Vegan")
spicy_mediterranean_aubergine_dip.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 37
garlic_herb_mashed_potatoes = Recipe.create!(
  name: 'Creamy Garlic and Herb Mashed Potatoes',
  description: 'Smooth and flavorful mashed potatoes with garlic and herbs.',
  time: 30,
  photo_url: 'seed/garlic_herb_mashed_potatoes.jpg',
  instruction: '1. Boil potatoes until tender, then mash with butter, garlic, and herbs.
                2. Add cream and season with salt and pepper.
                3. Serve hot as a side dish.'
)

garlic_herb_mashed_potatoes.ingredients << Ingredient.find_or_create_by(name: "Potatoes")
garlic_herb_mashed_potatoes.ingredients << Ingredient.find_or_create_by(name: "Butter")
garlic_herb_mashed_potatoes.ingredients << Ingredient.find_or_create_by(name: "Garlic")
garlic_herb_mashed_potatoes.ingredients << Ingredient.find_or_create_by(name: "Herbs")
garlic_herb_mashed_potatoes.ingredients << Ingredient.find_or_create_by(name: "Cream")
garlic_herb_mashed_potatoes.ingredients << Ingredient.find_or_create_by(name: "Salt")
garlic_herb_mashed_potatoes.ingredients << Ingredient.find_or_create_by(name: "Pepper")

garlic_herb_mashed_potatoes.cuisines << Cuisine.find_by(name: "American")
garlic_herb_mashed_potatoes.dietaries << Dietary.find_by(dietary_type: "Vegetarian")
garlic_herb_mashed_potatoes.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 38
sesame_crusted_tuna_steak = Recipe.create!(
  name: 'Sesame-Crusted Tuna Steak',
  description: 'Pan-seared tuna steak with a crispy sesame crust.',
  time: 20,
  photo_url: 'seed/sesame_crusted_tuna_steak.jpg',
  instruction: '1. Coat tuna steak with sesame seeds and sear in a hot pan.
                2. Serve with a soy-ginger dipping sauce and steamed broccoli.'
)

sesame_crusted_tuna_steak.ingredients << Ingredient.find_or_create_by(name: "Tuna steak")
sesame_crusted_tuna_steak.ingredients << Ingredient.find_or_create_by(name: "Sesame seeds")
sesame_crusted_tuna_steak.ingredients << Ingredient.find_or_create_by(name: "Soy sauce")
sesame_crusted_tuna_steak.ingredients << Ingredient.find_or_create_by(name: "Ginger")
sesame_crusted_tuna_steak.ingredients << Ingredient.find_or_create_by(name: "Steamed broccoli")

sesame_crusted_tuna_steak.cuisines << Cuisine.find_by(name: "Japanese")
sesame_crusted_tuna_steak.dietaries << Dietary.find_by(dietary_type: "Pescatarian")
sesame_crusted_tuna_steak.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 39
lamb_pistachio_patties = Recipe.create!(
  name: 'Lamb & Pistachio Patties with Sumac Yogurt Sauce',
  description: 'Delicious lamb and pistachio patties served with a tangy sumac yogurt sauce.',
  time: 15,
  photo_url: 'seed/lamb_pistachio_patties.jpg',
  instruction: '1. Mix together Greek-style yogurt, sumac, olive oil, and lemon juice. Keep in the fridge until needed.
                2. Put shelled pistachios in a food processor and blitz until roughly chopped. Transfer to a medium bowl.
                3. Add arugula to the processor and blitz until roughly chopped. Add to the bowl with pistachios.
                4. Process onion and garlic until a smooth paste forms, then add to the bowl.
                5. Add ground lamb, 1 tablespoon of olive oil, 3/4 teaspoon of salt, and a good grind of pepper to the bowl. Mix well.
                6. With wet hands, shape the mixture into about 20 patties, each about 2 inches wide, 3/4 inch thick, and weighing about 1 1/2 ounces.
                7. Heat 1 tablespoon of olive oil in a large nonstick frying pan over medium heat. Cook the patties for 7 minutes, turning about 3 1/2 minutes, until golden brown and cooked through. Keep warm while cooking the remaining patties. Add more oil if needed.
                8. Pile the cooked patties onto a large platter and serve with the sumac yogurt sauce.'
)

lamb_pistachio_patties.ingredients << Ingredient.find_or_create_by(name: 'Greek-style yogurt')
lamb_pistachio_patties.ingredients << Ingredient.find_or_create_by(name: 'Sumac')
lamb_pistachio_patties.ingredients << Ingredient.find_or_create_by(name: 'Olive oil')
lamb_pistachio_patties.ingredients << Ingredient.find_or_create_by(name: 'Lemon juice')
lamb_pistachio_patties.ingredients << Ingredient.find_or_create_by(name: 'Shelled pistachios')
lamb_pistachio_patties.ingredients << Ingredient.find_or_create_by(name: 'Arugula')
lamb_pistachio_patties.ingredients << Ingredient.find_or_create_by(name: 'Onion')
lamb_pistachio_patties.ingredients << Ingredient.find_or_create_by(name: 'Garlic')
lamb_pistachio_patties.ingredients << Ingredient.find_or_create_by(name: 'Ground lamb')
lamb_pistachio_patties.ingredients << Ingredient.find_or_create_by(name: 'Olive oil')
lamb_pistachio_patties.ingredients << Ingredient.find_or_create_by(name: 'Salt')
lamb_pistachio_patties.ingredients << Ingredient.find_or_create_by(name: 'Black pepper')

lamb_pistachio_patties.cuisines << Cuisine.find_by(name: "Middle Eastern")
lamb_pistachio_patties.dietaries << Dietary.find_by(dietary_type: "None")

# Recipe 40
curried_cauliflower_pie = Recipe.create!(
  name: "Curried Cauliflower Cheese Filo Pie",
  description: "A comfort food classic with a curried cauliflower and cheddar filling wrapped in crispy filo pastry. 20min prep and 1h45 cooking time.",
  time: 125,
  photo_url: 'seed/curried_cauliflower_pie.jpg',
  instruction: '1. Preheat the oven to 180°C fan. Line the bottom and sides of a 23cm springform cake tin with baking parchment.
                2. Toss cauliflower with 2 tsp mild curry powder, 3 tbsp olive oil, ½ teaspoon of salt, and a good grind of pepper. Roast for about 20 minutes, until cooked through and lightly colored. Set aside, and turn the oven temperature down to 170°C fan.
                3. Meanwhile, make the béchamel. Put the cubed butter (100g) into a medium saucepan on a medium-high heat and, once melted, whisk in the plain flour (75g) and cook for 1–2 minutes – it should start to smell nutty (like popcorn). Turn the heat down to medium and slowly add the whole milk (675ml) a little at a time, whisking continuously to prevent any lumps, until incorporated and the sauce is smooth. Cook, whisking often, for about 7 minutes, until thickened slightly. Off the heat, stir in the crushed garlic (2 cloves), English mustard (1½ tbsp), and mature cheddar (150g) until the cheese has melted.
                4. Keep your filo sheets under a damp tea towel to prevent them from drying out. In a bowl, combine the melted butter (50g) and the remaining 1½ tablespoons of olive oil and keep to one side.
                5. Working one sheet at a time, brush the exposed side of the filo with the butter mixture and drape it into your prepared tin (buttered side up), pushing it down gently to fit. Continue in this way with the next filo sheet, brushing it with butter and then laying it over the bottom sheet, rotating it slightly so the overhang drapes over the sides at a different angle. Do this with all six sheets.
                6. Spoon half the béchamel into the base and top with the roasted cauliflower florets. Spoon over the remaining béchamel, then crimp up the overhang so that it creates a messy ‘scrunched-up’ border around the edges, leaving the center of the pie exposed.
                7. Brush the top of the filo border with the remaining butter mixture, then transfer the tin to a baking tray and bake for 30 minutes.
                8. Using a tea towel to help you, carefully release the outer circle of the springform tin and return the pie to the oven for another 20–25 minutes, or until the sides are nicely colored and everything is golden and bubbling. Leave to settle for 15 minutes.
                9. Top the pie with roughly chopped parsley (1 tbsp) and lemon zest (1½ tsp) and serve warm.'
)

curried_cauliflower_pie.ingredients << Ingredient.find_or_create_by(name: 'Cauliflower')
curried_cauliflower_pie.ingredients << Ingredient.find_or_create_by(name: 'Curry Powder')
curried_cauliflower_pie.ingredients << Ingredient.find_or_create_by(name: 'Olive Oil')
curried_cauliflower_pie.ingredients << Ingredient.find_or_create_by(name: 'Unsalted Butter')
curried_cauliflower_pie.ingredients << Ingredient.find_or_create_by(name: 'Plain Flour')
curried_cauliflower_pie.ingredients << Ingredient.find_or_create_by(name: 'Whole Milk')
curried_cauliflower_pie.ingredients << Ingredient.find_or_create_by(name: 'Garlic Cloves')
curried_cauliflower_pie.ingredients << Ingredient.find_or_create_by(name: 'English Mustard')
curried_cauliflower_pie.ingredients << Ingredient.find_or_create_by(name: 'Mature Cheddar')
curried_cauliflower_pie.ingredients << Ingredient.find_or_create_by(name: 'Filo Pastry')
curried_cauliflower_pie.ingredients << Ingredient.find_or_create_by(name: 'Salt')
curried_cauliflower_pie.ingredients << Ingredient.find_or_create_by(name: 'Black Pepper')
curried_cauliflower_pie.ingredients << Ingredient.find_or_create_by(name: 'Parsley')
curried_cauliflower_pie.ingredients << Ingredient.find_or_create_by(name: 'Lemon Zest')

curried_cauliflower_pie.dietaries << Dietary.find_or_create_by(dietary_type: 'None')
curried_cauliflower_pie.dietaries << Dietary.find_or_create_by(dietary_type: 'Vegetarian')
curried_cauliflower_pie.cuisines << Cuisine.find_or_create_by(name: 'Middle Eastern')

# Recipe 41
aubergine_with_buttermilk_sauce = Recipe.create!(
  name: "Aubergine with Buttermilk Sauce",
  description: "Silky roasted aubergines piled with tangy buttermilk sauce, topped with pomegranate seeds and za'atar.",
  time: 125,
  photo_url: 'seed/aubergine_with_buttermilk_sauce.jpg',
  instruction: '1. Preheat the oven to 200°C/Gas Mark 6.
                2. Cut the aubergines in half lengthways, cutting straight through the green stalk (the stalk is for the look; don’t eat it).
                3. Use a small sharp knife to make three or four parallel incisions in the cut side of each aubergine half, without cutting through to the skin. Repeat at a 45-degree angle to get a diamond-shape pattern.
                4. Place the aubergine halves, cut-side up, on a baking sheet lined with baking parchment.
                5. Brush them with the olive oil – keep on brushing until all of the oil has been absorbed by the flesh.
                6. Sprinkle with the lemon thyme leaves and some salt and pepper.
                7. Roast for 35–40 minutes, at which point the flesh should be soft, flavorsome, and nicely browned.
                8. Remove from the oven and allow to cool down completely.
                9. While the aubergines are in the oven, prepare the pomegranate and sauce. Cut the pomegranate into two horizontally. Hold one half over a bowl, with the cut side against your palm, and use the back of a wooden spoon or a rolling pin to gently knock on the pomegranate skin. Continue beating with increasing power until the seeds start coming out naturally and falling through your fingers into the bowl. Once all are there, sift through the seeds to remove any bits of white skin or membrane.
                10. For the sauce, just whisk together all of the ingredients. Taste for seasoning, then keep cold until needed.
                11. To serve, spoon plenty of buttermilk sauce over the aubergine halves without covering the stalks. Sprinkle za’atar and plenty of pomegranate seeds on top and garnish with lemon thyme. Finish with a drizzle of olive oil.'
)

aubergine_with_buttermilk_sauce.ingredients << Ingredient.find_or_create_by(name: 'Large and long aubergines')
aubergine_with_buttermilk_sauce.ingredients << Ingredient.find_or_create_by(name: 'Olive oil')
aubergine_with_buttermilk_sauce.ingredients << Ingredient.find_or_create_by(name: 'Lemon thyme leaves')
aubergine_with_buttermilk_sauce.ingredients << Ingredient.find_or_create_by(name: 'Pomegranate')
aubergine_with_buttermilk_sauce.ingredients << Ingredient.find_or_create_by(name: "Za'atar")
aubergine_with_buttermilk_sauce.ingredients << Ingredient.find_or_create_by(name: 'Maldon sea salt')
aubergine_with_buttermilk_sauce.ingredients << Ingredient.find_or_create_by(name: 'Black pepper')
aubergine_with_buttermilk_sauce.ingredients << Ingredient.find_or_create_by(name: 'Buttermilk')
aubergine_with_buttermilk_sauce.ingredients << Ingredient.find_or_create_by(name: 'Greek yoghurt')
aubergine_with_buttermilk_sauce.ingredients << Ingredient.find_or_create_by(name: 'Olive oil')
aubergine_with_buttermilk_sauce.ingredients << Ingredient.find_or_create_by(name: 'Garlic clove')
aubergine_with_buttermilk_sauce.ingredients << Ingredient.find_or_create_by(name: 'Salt')

aubergine_with_buttermilk_sauce.dietaries << Dietary.find_or_create_by(dietary_type: 'None')
aubergine_with_buttermilk_sauce.dietaries << Dietary.find_or_create_by(dietary_type: 'Vegetarian')
aubergine_with_buttermilk_sauce.cuisines << Cuisine.find_or_create_by(name: 'Middle Eastern')

# Recipe 42
spicy_mushroom_lasagne = Recipe.create!(
  name: "Spicy Mushroom Lasagne",
  description: "A meat-free lasagne with four types of mushrooms for an intense umami-rich flavor.",
  time: 160,
  photo_url: 'seed/spicy_mushroom_lasagne.jpg',
  instruction: '1. Preheat the oven to 230°C fan.
                2. Put the chestnut and oyster mushrooms into the large bowl of a food processor in three or four batches and pulse each batch until finely chopped (or finely chop everything by hand). Toss the chopped mushrooms in a large bowl with 3 tablespoons of oil and 1 teaspoon of salt and spread out on a large, 40cm x 35cm parchment-lined, rimmed baking tray. Bake for 30 minutes near the top of the oven, stirring three times throughout, until the mushrooms are golden-brown; they will have reduced in volume significantly. Set aside. Reduce the oven temperature to 200°C fan.
                3. Meanwhile, combine the dried mushrooms, chillies, and hot stock in a large bowl and set aside to soak for half an hour. Strain the liquid into another bowl, squeezing as much liquid from the mushrooms as possible to get about 340ml: if you have any less, top up with water. Very roughly chop the rehydrated mushrooms (you want some chunks) and finely chop the chillies. Set the stock and mushrooms aside separately.
                4. Put the onion, garlic, and carrot into the food processor and pulse until finely chopped (or finely chop everything by hand). Heat 60ml of oil in a large sauté pan or pot on a medium-high heat. Once hot, add the onion mixture and fry for 8 minutes, stirring occasionally, until soft and golden. Pulse the tomatoes in the food processor until finely chopped (or finely chop by hand), then add to the pan along with the tomato paste, 1½ teaspoons of salt, and 1¾ teaspoons of freshly cracked black pepper. Cook for 7 minutes, stirring occasionally. Add the rehydrated mushrooms and chillies and the roasted mushrooms and cook for 9 minutes, resisting the urge to stir: you want the mushrooms to be slightly crisp and browned on the bottom. Stir in the reserved stock and 800ml of water and, once simmering, reduce the heat to medium and cook for about 25 minutes, stirring occasionally, until you get the consistency of a ragù. Stir in 100ml of the cream and simmer for another 2 minutes, then remove from the heat.
                5. Combine both cheeses and both herbs in a small bowl. To assemble the lasagne, spread one-fifth of the sauce in the bottom of a round 28cm baking dish (or a 30cm x 20cm rectangular dish), then top with a fifth of the cheese mixture, followed by a layer of lasagne sheets, broken to fit where necessary. Repeat these layers three more times in that order, and finish with a final layer of sauce and cheese: that’s five layers of sauce and cheese and four layers of pasta.
                6. Drizzle over 1 tablespoon of cream and 1 tablespoon of oil, then cover with foil and bake for 15 minutes. Remove the foil, increase the temperature to 220°C fan and bake for another 12 minutes, turning the dish round halfway. Turn the oven to the grill setting and grill for a final 2 minutes, until the edges are brown and crisp. Set aside to cool for 5 or so minutes, then drizzle over the remaining tablespoon of cream and oil. Sprinkle over the remaining parsley, finish with a good grind of pepper and serve.'
)

spicy_mushroom_lasagne.ingredients << Ingredient.find_or_create_by(name: 'Chestnut mushrooms')
spicy_mushroom_lasagne.ingredients << Ingredient.find_or_create_by(name: 'Oyster mushrooms')
spicy_mushroom_lasagne.ingredients << Ingredient.find_or_create_by(name: 'Olive oil')
spicy_mushroom_lasagne.ingredients << Ingredient.find_or_create_by(name: 'Dried porcini mushrooms')
spicy_mushroom_lasagne.ingredients << Ingredient.find_or_create_by(name: 'Dried wild mushrooms')
spicy_mushroom_lasagne.ingredients << Ingredient.find_or_create_by(name: 'Dried red chillies')
spicy_mushroom_lasagne.ingredients << Ingredient.find_or_create_by(name: 'Hot vegetable stock')
spicy_mushroom_lasagne.ingredients << Ingredient.find_or_create_by(name: 'Onion')
spicy_mushroom_lasagne.ingredients << Ingredient.find_or_create_by(name: 'Garlic cloves')
spicy_mushroom_lasagne.ingredients << Ingredient.find_or_create_by(name: 'Carrot')
spicy_mushroom_lasagne.ingredients << Ingredient.find_or_create_by(name: 'Plum tomatoes')
spicy_mushroom_lasagne.ingredients << Ingredient.find_or_create_by(name: 'Tomato paste')
spicy_mushroom_lasagne.ingredients << Ingredient.find_or_create_by(name: 'Double cream')
spicy_mushroom_lasagne.ingredients << Ingredient.find_or_create_by(name: 'Pecorino Romano')
spicy_mushroom_lasagne.ingredients << Ingredient.find_or_create_by(name: 'Parmesan')
spicy_mushroom_lasagne.ingredients << Ingredient.find_or_create_by(name: 'Basil leaves')
spicy_mushroom_lasagne.ingredients << Ingredient.find_or_create_by(name: 'Parsley leaves')

spicy_mushroom_lasagne.dietaries << Dietary.find_or_create_by(dietary_type: 'Vegetarian')
spicy_mushroom_lasagne.dietaries << Dietary.find_or_create_by(dietary_type: 'None')
spicy_mushroom_lasagne.cuisines << Cuisine.find_or_create_by(name: 'Middle Eastern')
spicy_mushroom_lasagne.cuisines << Cuisine.find_or_create_by(name: 'Italian')

# Recipe 43
puy_lentil_aubergine_stew = Recipe.create!(
  name: "Puy Lentil and Aubergine Stew",
  description: "A one-pot stew bursting with flavor, featuring aubergines, cherry tomatoes, and Puy lentils.",
  time: 60,
  photo_url: 'seed/puy_lentil_aubergine_stew.jpg',
  instruction: '1. Put 2 tablespoons of olive oil into a large, high-sided sauté pan and place on a medium-high heat. Add the finely sliced garlic, finely chopped red onion, picked thyme leaves, and ¼ teaspoon of salt. Fry for 8 minutes, stirring often, until soft and golden. Tip into a bowl, leaving the oil behind. Set aside.
                2. Place the aubergines and cherry tomatoes in a bowl and season with ¼ teaspoon of salt and plenty of pepper. Add the remaining oil to the same pan (don’t worry about wiping it clean) and, once very hot, add the aubergines and tomatoes. Fry for 10 minutes on medium-high, turning them often until the aubergine is soft and golden-brown and the tomatoes are beginning to blacken.
                3. Return the garlic and onion mixture to the pan, then add the Puy lentils, vegetable stock, dry white wine, 450ml of water, and ¾ teaspoon of salt. Bring to the boil. Lower the heat to medium and simmer gently for about 40 minutes, until the lentils are soft but still retain a bite.
                4. Serve warm or at room temperature with a dollop of crème fraîche, a drizzle of olive oil, and sprinkled with Urfa chilli flakes (or regular chilli flakes) and picked oregano leaves on top.',
)

puy_lentil_aubergine_stew.ingredients << Ingredient.find_or_create_by(name: 'Olive oil')
puy_lentil_aubergine_stew.ingredients << Ingredient.find_or_create_by(name: 'Garlic cloves')
puy_lentil_aubergine_stew.ingredients << Ingredient.find_or_create_by(name: 'Large red onion')
puy_lentil_aubergine_stew.ingredients << Ingredient.find_or_create_by(name: 'Picked thyme leaves')
puy_lentil_aubergine_stew.ingredients << Ingredient.find_or_create_by(name: 'Small aubergines')
puy_lentil_aubergine_stew.ingredients << Ingredient.find_or_create_by(name: 'Cherry tomatoes')
puy_lentil_aubergine_stew.ingredients << Ingredient.find_or_create_by(name: 'Puy lentils')
puy_lentil_aubergine_stew.ingredients << Ingredient.find_or_create_by(name: 'Vegetable stock')
puy_lentil_aubergine_stew.ingredients << Ingredient.find_or_create_by(name: 'Dry white wine')
puy_lentil_aubergine_stew.ingredients << Ingredient.find_or_create_by(name: 'Crème fraîche')
puy_lentil_aubergine_stew.ingredients << Ingredient.find_or_create_by(name: 'Urfa chilli flakes')
puy_lentil_aubergine_stew.ingredients << Ingredient.find_or_create_by(name: 'Picked oregano leaves')
puy_lentil_aubergine_stew.ingredients << Ingredient.find_or_create_by(name: 'Salt')
puy_lentil_aubergine_stew.ingredients << Ingredient.find_or_create_by(name: 'Black pepper')

puy_lentil_aubergine_stew.dietaries << Dietary.find_or_create_by(dietary_type: 'Vegetarian')
puy_lentil_aubergine_stew.dietaries << Dietary.find_or_create_by(dietary_type: 'None')
puy_lentil_aubergine_stew.cuisines << Cuisine.find_or_create_by(name: 'Mediterranean')
puy_lentil_aubergine_stew.cuisines << Cuisine.find_or_create_by(name: 'Middle Eastern')


User.create!(
  email: 'user@gmail.com',
  password: '123456'
)

puts "Recipes created!"
