-- recipe.sql

USE recipes;

-- Recipe 1: Spaghetti Bolognese
INSERT IGNORE INTO Recipes (Image, RecipeName, Description, Ingredients, Instructions, Flavor, UserAdded, UserID)
VALUES 
('/fyp/food/SpaghettiBolognese.jpeg',
 'Spaghetti Bolognese', 
 'Classic Spaghetti Bolognese with a rich meat sauce.', 
 'Ground beef (500g),<br> Onion (1),<br> Garlic cloves (2),<br> Canned tomatoes (400g),<br> Red wine (200ml),<br> Salt, <br> Pepper, <br> Spaghetti (400g)', 
 '1. In a large pan, brown 500g of ground beef.<br> 2. Add chopped onion and 2 cloves of garlic.<br> 3. Pour in 400g of canned tomatoes and 200ml of red wine.<br> 4. Season with salt and pepper.<br> 5. Simmer for 30 minutes.<br> 6. Cook 400g of spaghetti according to package instructions.<br> 7. Serve sauce over spaghetti.',
 'Spicy',
 FALSE, NULL);

-- Recipe 2: Chicken Alfredo
INSERT IGNORE INTO Recipes (Image, RecipeName, Description, Ingredients, Instructions, Flavor, UserAdded, UserID)
VALUES 
('/fyp/food/ChickenAlfredo.jpg',
 'Chicken Alfredo', 
 'Creamy Chicken Alfredo with Fettuccine.', 
 'Fettuccine (300g),<br> Chicken breasts (2),<br> Heavy cream (2 cups),<br> Grated Parmesan cheese (1 cup),<br> Salt, <br> Pepper, <br> Garlic powder', 
 '1. Cook 300g of fettuccine according to package instructions.<br> 2. Season 2 chicken breasts with salt, pepper, and garlic powder.<br> 3. Cook chicken until fully cooked.<br> 4. In a saucepan, heat 2 cups of heavy cream.<br> 5. Add 1 cup of grated Parmesan cheese and stir until melted.<br> 6. Combine cooked fettuccine, sliced chicken, and sauce.<br> 7. Serve hot.',
 'Creamy',
 FALSE, NULL);

-- Recipe 3: Classic Margherita Pizza
INSERT IGNORE INTO Recipes (Image, RecipeName, Description, Ingredients, Instructions, Flavor, UserAdded, UserID)
VALUES 
('/fyp/food/ClassicMargheritaPizza.jpeg', 
'Classic Margherita Pizza', 
 'Traditional Margherita Pizza with fresh ingredients.', 
 'Pizza dough (enough for one pizza),<br> Tomato sauce (1 cup),<br> Fresh mozzarella (200g),<br> Fresh basil leaves,<br> Olive oil', 
 '1. Preheat the oven to 475°F (245°C).<br> 2. Roll out the pizza dough.<br> 3. Spread 1 cup of tomato sauce over the dough.<br> 4. Add 200g of sliced fresh mozzarella.<br> 5. Bake in the oven for 10-12 minutes.<br> 6. Remove from the oven, top with fresh basil, and drizzle with olive oil.',
 'Sour',
 FALSE, NULL);

-- Recipe 4: Chicken Caesar Salad
INSERT IGNORE INTO Recipes (Image, RecipeName, Description, Ingredients, Instructions, Flavor, UserAdded, UserID)
VALUES 
('/fyp/food/ChickenCaesarSalad.jpg',
 'Chicken Caesar Salad', 
 'Classic Chicken Caesar Salad with homemade dressing.', 
 'Chicken breasts (2),<br>Romaine lettuce (1 head),<br>Caesar dressing (1/2 cup),<br>Croutons (1 cup),<br>Parmesan cheese (1/2 cup)', 
 '1. Grill or pan-cook 2 chicken breasts until fully cooked.<br> 2. Chop 1 head of romaine lettuce and place in a large bowl.<br> 3. Slice chicken and add to the salad.<br> 4. Toss with 1/2 cup of Caesar dressing.<br> 5. Top with 1 cup of croutons and 1/2 cup of shaved Parmesan cheese.',
 'Sour',
 FALSE, NULL);

-- Recipe 5: Vegetarian Stir-Fry
INSERT IGNORE INTO Recipes (Image, RecipeName, Description, Ingredients, Instructions, Flavor, UserAdded, UserID)
VALUES 
('/fyp/food/VegetarianStir-Fry.jpg',
 'Vegetarian Stir-Fry', 
 'Colorful and flavorful Vegetarian Stir-Fry.', 
 'Tofu (1 block),<br>Broccoli (1 head),<br>Bell peppers (2),<br>Carrots (2),<br>Soy sauce (1/4 cup),<br>Ginger (1 tablespoon, minced),<br>Garlic (2 cloves, minced),<br>Sesame oil (2 tablespoons)', 
 '1. Press tofu to remove excess water, then cut into cubes.<br>2. Stir-fry tofu in 2 tablespoons of sesame oil until golden.<br>3. Add chopped broccoli, bell peppers, carrots, ginger, and garlic.<br>4. Cook until vegetables are tender-crisp.<br>5. Stir in 1/4 cup of soy sauce.<br>6. Serve over rice.',
 'Spicy',
 FALSE, NULL);

-- Recipe 6: Penne alla Vodka
INSERT IGNORE INTO Recipes (Image, RecipeName, Description, Ingredients, Instructions, Flavor, UserAdded, UserID)
VALUES 
('/fyp/food/PenneAllaVodka.jpg', 
 'Penne alla Vodka', 
 'Penne pasta in a creamy Vodka sauce.', 
 'Penne pasta (enough for 4 servings),<br>Vodka (1/4 cup),<br>Tomato sauce (2 cups),<br>Heavy cream (1/2 cup),<br>Parmesan cheese (1/2 cup),<br>Red pepper flakes', 
 '1. Cook penne pasta according to package instructions.<br>2. In a saucepan, simmer vodka and tomato sauce.<br>3. Stir in heavy cream and Parmesan cheese.<br>4. Season with red pepper flakes.<br>5. Toss cooked pasta in the sauce.',
 'Creamy',
 FALSE, NULL);

-- Recipe 7: Grilled Salmon with Lemon-Dill Sauce
INSERT IGNORE INTO Recipes (Image, RecipeName, Description, Ingredients, Instructions, Flavor, UserAdded, UserID)
VALUES 
('/fyp/food/GrilledSalmonWithLemon-DillSauce.jpeg',
 'Grilled Salmon with Lemon-Dill Sauce', 
 'Grilled salmon fillets with a zesty lemon-dill sauce.', 
 'Salmon fillets (4),<br>Lemon (1),<br>Fresh dill (2 tablespoons),<br>Olive oil (2 tablespoons),<br>Salt (to taste),<br>Pepper (to taste)', 
 '1. Preheat the grill.<br>2. Brush salmon fillets with olive oil and season with salt and pepper.<br>3. Grill salmon for 4-5 minutes per side.<br>4. In a bowl, mix chopped dill and lemon juice.<br>5. Drizzle the lemon-dill sauce over grilled salmon before serving.',
 'Sour',
 FALSE, NULL);

-- Recipe 8: Shrimp Scampi
INSERT IGNORE INTO Recipes (Image, RecipeName, Description, Ingredients, Instructions, Flavor, UserAdded, UserID)
VALUES 
('/fyp/food/ShrimpScampi.jpeg',
 'Shrimp Scampi', 
 'Linguine pasta with succulent shrimp in a garlic butter sauce.', 
 'Shrimp (1 pound),<br>Linguine pasta (300g),<br>Garlic (4 cloves, minced),<br>White wine (1/2 cup),<br>Lemon juice (2 tablespoons),<br>Butter (4 tablespoons),<br>Parsley (2 tablespoons, chopped),<br>Salt (to taste),<br>Pepper (to taste)', 
 '1. Cook linguine pasta according to package instructions.<br>2. Sauté minced garlic in butter.<br>3. Add shrimp and cook until pink.<br>4. Pour in white wine and lemon juice.<br>5. Toss with cooked pasta.<br>6. Garnish with chopped parsley.<br>7. Season with salt and pepper.',
 'Buttery', FALSE, NULL);

-- -- Recipe 9: Caprese Salad
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Caprese Salad', 
--  'Refreshing Caprese Salad with tomatoes, mozzarella, and basil.', 
--  'Tomatoes (4),<br>Fresh mozzarella (200g),<br>Fresh basil leaves,<br>Balsamic glaze (2 tablespoons),<br>Olive oil (2 tablespoons),<br>Salt (to taste),<br>Pepper (to taste)', 
--  '1. Slice tomatoes and fresh mozzarella.<br>2. Arrange slices on a plate, alternating tomato and mozzarella.<br>3. Tuck fresh basil leaves between slices.<br>4. Drizzle with balsamic glaze and olive oil.<br>5. Season with salt and pepper.',
--  'Sweet');

-- -- Recipe 10: Vegetable Curry
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Vegetable Curry', 
--  'Hearty Vegetable Curry with coconut milk and aromatic spices.', 
--  'Mixed vegetables (e.g., potatoes, carrots, peas) (3 cups),<br>Coconut milk (1 can),<br>Curry paste (2 tablespoons),<br>Ginger (1 tablespoon, minced),<br>Garlic (2 cloves, minced),<br>Onion (1, chopped),<br>Rice (for serving),<br>Salt (to taste),<br>Pepper (to taste)', 
--  '1. Sauté chopped onion, ginger, and garlic.<br>2. Add mixed vegetables and cook until slightly tender.<br>3. Stir in curry paste and coconut milk.<br>4. Simmer until vegetables are cooked.<br>5. Season with salt and pepper.<br>6. Serve over rice.',
--  'Spicy');

-- -- Recipe 11: BBQ Chicken Sandwich
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('BBQ Chicken Sandwich', 
--  'Delicious BBQ Chicken Sandwich with coleslaw and pickles.', 
--  'Chicken breasts (2),<br> BBQ sauce (1/2 cup),<br> Buns (4),<br> Coleslaw (1 cup),<br> Pickles (4),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Grill or cook chicken until fully cooked.<br> 2. Shred the chicken and mix with BBQ sauce.<br> 3. Toast buns and assemble sandwiches with BBQ chicken, coleslaw, and pickles.<br> 4. Season with salt and pepper.',
--  'Sweet');

-- -- Recipe 12: Mushroom Risotto
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Mushroom Risotto', 
--  'Creamy Mushroom Risotto with Arborio rice and Parmesan cheese.', 
--  'Arborio rice (1 cup),<br> Mushrooms (8 oz),<br> Vegetable broth (4 cups),<br> White wine (1/2 cup),<br> Onion (1, chopped),<br> Parmesan cheese (1/2 cup, grated),<br> Butter (2 tablespoons),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Sauté chopped onion in butter.<br> 2. Add sliced mushrooms and cook until softened.<br> 3. Stir in Arborio rice and cook until lightly toasted.<br> 4. Pour in white wine and cook until absorbed.<br> 5. Gradually add vegetable broth, stirring until rice is creamy.<br> 6. Mix in Parmesan cheese.<br> 7. Season with salt and pepper.<br> 8. Serve hot.',
--  'Creamy');

-- -- Recipe 13: Eggplant Parmesan
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Eggplant Parmesan', 
--  'Baked Eggplant Parmesan with layers of marinara sauce and cheese.', 
--  'Eggplant slices (1 large),<br> Marinara sauce (2 cups),<br> Mozzarella cheese (1 cup, shredded),<br> Parmesan cheese (1/2 cup, grated),<br> Breadcrumbs (1 cup),<br> Eggs (2),<br> Olive oil (1/4 cup),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Preheat the oven to 375°F (190°C).<br> 2. Dip eggplant slices in beaten eggs, coat with breadcrumbs.<br> 3. In a pan, fry eggplant slices in olive oil until golden.<br> 4. In a baking dish, layer marinara sauce, eggplant, and cheeses.<br> 5. Repeat layers.<br> 6. Bake for 25-30 minutes until bubbly and golden.<br> 7. Season with salt and pepper.',
--  'Sour');

-- -- Recipe 14: Beef Tacos
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Beef Tacos', 
--  'Classic Beef Tacos with seasoned ground beef and fresh toppings.', 
--  'Ground beef (1 pound),<br> Taco seasoning (1 packet),<br> Taco shells (8),<br> Lettuce (1 head, shredded),<br> Tomato (1, diced),<br> Cheese (1 cup, shredded),<br> Salsa (1/2 cup),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Cook ground beef in a pan, add taco seasoning.<br> 2. Heat taco shells in the oven.<br> 3. Assemble tacos with seasoned beef, lettuce, tomato, cheese, and salsa.<br> 4. Season with salt and pepper.',
--  'Spicy');

-- -- Recipe 15: Lemon Garlic Butter Shrimp
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Lemon Garlic Butter Shrimp', 
--  'Buttery Lemon Garlic Shrimp with fresh parsley.', 
--  'Shrimp (1 pound),<br> Garlic (3 cloves, minced),<br> Lemon juice (2 tablespoons),<br> Butter (4 tablespoons),<br> Parsley (2 tablespoons, chopped),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Sauté minced garlic in butter.<br> 2. Add shrimp and cook until pink.<br> 3. Squeeze lemon juice over shrimp.<br> 4. Season with salt and pepper.<br> 5. Garnish with chopped parsley.',
--  'Buttery');

-- -- Recipe 16: Quinoa Salad with Roasted Vegetables
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Quinoa Salad with Roasted Vegetables', 
--  'Nutritious Quinoa Salad with colorful roasted vegetables and feta cheese.', 
--  'Quinoa (1 cup),<br> Bell peppers (2, chopped),<br> Zucchini (1, sliced),<br> Cherry tomatoes (1 cup),<br> Olive oil (2 tablespoons),<br> Balsamic vinegar (2 tablespoons),<br> Feta cheese (1/2 cup, crumbled),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Cook quinoa according to package instructions.<br> 2. Roast bell peppers, zucchini, and cherry tomatoes in olive oil.<br> 3. Mix cooked quinoa with roasted vegetables.<br> 4. Drizzle with balsamic vinegar.<br> 5. Top with crumbled feta cheese.<br> 6. Season with salt and pepper.',
--  'Sweet');

-- -- Recipe 17: Stuffed Bell Peppers
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Stuffed Bell Peppers', 
--  'Healthy Stuffed Bell Peppers with a flavorful beef and rice filling.', 
--  'Bell peppers (4),<br> Ground beef (1 pound),<br> Rice (1 cup, cooked),<br> Black beans (1 can),<br> Corn (1 cup),<br> Tomato sauce (1 cup),<br> Cumin (1 teaspoon),<br> Chili powder (1 teaspoon),<br> Shredded cheese (1 cup),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Preheat the oven to 375°F (190°C).<br> 2. Cook ground beef and rice.<br> 3. Mix with black beans, corn, tomato sauce, cumin, and chili powder.<br> 4. Cut bell peppers in half and remove seeds.<br> 5. Stuff with the beef and rice mixture.<br> 6. Top with shredded cheese.<br> 7. Bake for 25-30 minutes.<br> 8. Season with salt and pepper.',
--  'Spicy');

-- -- Recipe 18: Teriyaki Chicken Bowl
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Teriyaki Chicken Bowl', 
--  'Savory Teriyaki Chicken Bowl with steamed vegetables and rice.', 
--  'Chicken thighs (1 pound),<br> Teriyaki sauce (1/2 cup),<br> Broccoli (1 head, florets),<br> Carrots (2, sliced),<br> Rice (2 cups, cooked),<br> Sesame seeds (1 tablespoon),<br> Green onions (2, chopped),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Marinate chicken thighs in teriyaki sauce.<br> 2. Grill or pan-cook chicken until fully cooked.<br> 3. Steam broccoli and carrots.<br> 4. Cook rice.<br> 5. Assemble bowls with rice, teriyaki chicken, and steamed vegetables.<br> 6. Garnish with sesame seeds and chopped green onions.<br> 7. Season with salt and pepper.',
--  'Savory');

-- -- Recipe 19: Mango Avocado Salsa
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Mango Avocado Salsa', 
--  'Refreshing Mango Avocado Salsa with a hint of lime.', 
--  'Mango (1, diced),<br> Avocado (1, diced),<br> Red onion (1/2, finely chopped),<br> Cilantro (2 tablespoons, chopped),<br> Lime juice (2 tablespoons),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Dice mango, avocado, and red onion.<br> 2. Chop cilantro.<br> 3. Mix all ingredients in a bowl.<br> 4. Drizzle with lime juice.<br> 5. Season with salt and pepper.<br> 6. Serve as a refreshing salsa with tortilla chips or as a topping for grilled chicken or fish.',
--  'Sweet');

-- -- Recipe 20: Vegetarian Lentil Soup
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Vegetarian Lentil Soup', 
--  'Hearty Vegetarian Lentil Soup with aromatic spices.', 
--  'Lentils (1 cup),<br> Carrots (2, chopped),<br> Celery (2 stalks, chopped),<br> Onion (1, chopped),<br> Garlic (2 cloves, minced),<br> Vegetable broth (4 cups),<br> Cumin (1 teaspoon),<br> Coriander (1 teaspoon),<br> Bay leaves (2),<br> Olive oil (2 tablespoons),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Sauté chopped onion, garlic, carrots, and celery in olive oil.<br> 2. Add lentils, vegetable broth, cumin, coriander, and bay leaves.<br> 3. Simmer until lentils are tender.<br> 4. Remove bay leaves before serving.<br> 5. Season with salt and pepper.<br> 6. Serve hot.',
--  'Spicy');

-- -- Recipe 21: Baked Teriyaki Salmon
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Baked Teriyaki Salmon', 
--  'Delicious Baked Teriyaki Salmon with a flavorful marinade.', 
--  'Salmon fillets (4),<br> Teriyaki sauce (1/2 cup),<br> Soy sauce (2 tablespoons),<br> Garlic (2 cloves, minced),<br> Ginger (1 teaspoon, grated),<br> Green onions (2, sliced),<br> Sesame seeds (1 tablespoon),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Marinate salmon fillets in teriyaki sauce, soy sauce, minced garlic, and grated ginger.<br> 2. Preheat the oven to 400°F (200°C).<br> 3. Bake salmon for 15-20 minutes or until cooked through.<br> 4. Garnish with chopped green onions and sesame seeds.<br> 5. Season with salt and pepper.<br> 6. Serve.',
--  'Sweet');

-- -- Recipe 22: Mediterranean Chickpea Salad
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Mediterranean Chickpea Salad', 
--  'Refreshing Mediterranean Chickpea Salad with feta and olives.', 
--  'Chickpeas (1 can, rinsed and drained),<br> Cherry tomatoes (1 cup, halved),<br> Cucumber (1, diced),<br> Red onion (1/4, thinly sliced),<br> Feta cheese (1/2 cup, crumbled),<br> Kalamata olives (1/2 cup),<br> Olive oil (2 tablespoons),<br> Red wine vinegar (2 tablespoons),<br> Oregano (1 teaspoon),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Rinse and drain chickpeas.<br> 2. Chop cherry tomatoes, cucumber, red onion, and olives.<br> 3. Mix all ingredients in a bowl.<br> 4. Crumble feta cheese over the salad.<br> 5. Drizzle with olive oil and red wine vinegar.<br> 6. Sprinkle with dried oregano.<br> 7. Toss and serve chilled.',
--  'Sour');

-- -- Recipe 23: Homemade Chicken Noodle Soup
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Homemade Chicken Noodle Soup', 
--  'Classic Homemade Chicken Noodle Soup for a comforting meal.', 
--  'Chicken breasts (2),<br> Carrots (2, sliced),<br> Celery (2 stalks, sliced),<br> Onion (1, chopped),<br> Garlic (2 cloves, minced),<br> Egg noodles (1 cup),<br> Chicken broth (6 cups),<br> Thyme (1 teaspoon),<br> Bay leaves (2),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Cook chicken breasts in a pot of water until fully cooked.<br> 2. Shred the chicken.<br> 3. Sauté chopped onion, garlic, carrots, and celery.<br> 4. Add shredded chicken, egg noodles, chicken broth, thyme, and bay leaves.<br> 5. Simmer until noodles are tender.<br> 6. Season with salt and pepper.<br> 7. Serve hot.',
--  'Comforting');

-- -- Recipe 24: Grilled Vegetable Skewers
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Grilled Vegetable Skewers', 
--  'Colorful Grilled Vegetable Skewers with balsamic glaze.', 
--  'Bell peppers (2, cut into chunks),<br> Cherry tomatoes (1 cup),<br> Zucchini (1, sliced),<br> Red onion (1, cut into chunks),<br> Mushrooms (8-10),<br> Olive oil (3 tablespoons),<br> Balsamic glaze (2 tablespoons),<br> Garlic powder (1 teaspoon),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Preheat the grill.<br> 2. Cut vegetables into bite-sized pieces.<br> 3. Thread onto skewers.<br> 4. Mix olive oil, balsamic glaze, garlic powder, salt, and pepper.<br> 5. Brush the skewers with the mixture.<br> 6. Grill until vegetables are charred and tender.<br> 7. Serve as a side or over couscous.',
--  'Savory');

-- -- Recipe 25: Spinach and Feta Stuffed Chicken Breast
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Spinach and Feta Stuffed Chicken Breast', 
--  'Juicy Spinach and Feta Stuffed Chicken Breast.', 
--  'Chicken breasts (4),<br> Spinach (2 cups, chopped),<br> Feta cheese (1 cup, crumbled),<br> Garlic (3 cloves, minced),<br> Olive oil (2 tablespoons),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Preheat the oven to 375°F (190°C).<br> 2. Butterfly chicken breasts.<br> 3. Sauté spinach and garlic in olive oil until wilted.<br> 4. Mix spinach with crumbled feta.<br> 5. Stuff the chicken with the spinach and feta mixture.<br>5. Season with salt and pepper.<br> 6. Bake for 25-30 minutes or until chicken is cooked through.<br> 7. Serve hot.',
--  'Savory');

-- -- Recipe 26: Shrimp and Broccoli Stir-Fry
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Shrimp and Broccoli Stir-Fry', 
--  'Quick and tasty Shrimp and Broccoli Stir-Fry.', 
--  'Shrimp (1 pound, peeled and deveined),<br> Broccoli (1 head, cut into florets),<br> Soy sauce (1/4 cup),<br> Garlic (3 cloves, minced),<br> Ginger (1 tablespoon, grated),<br> Sesame oil (2 tablespoons),<br> Green onions (3, sliced),<br> Rice (2 cups, cooked),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Sauté shrimp in sesame oil until pink.<br> 2. Add minced garlic and grated ginger.<br> 3. Stir in broccoli florets.<br> 4. Add soy sauce and cook until broccoli is tender.<br> 5. Garnish with sliced green onions.<br> 6. Serve over rice.',
--  'Spicy');

-- -- Recipe 27: Homemade Margherita Flatbread
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Homemade Margherita Flatbread', 
--  'Classic Margherita Flatbread with fresh tomatoes and mozzarella.', 
--  'Flatbread (1),<br> Tomato sauce (1/2 cup),<br> Fresh mozzarella (4 ounces, sliced),<br> Fresh basil (1/2 cup),<br> Olive oil (2 tablespoons),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Preheat the oven to 400°F (200°C).<br> 2. Spread tomato sauce over the flatbread.<br> 3. Add slices of fresh mozzarella.<br> 4. Bake until the edges are golden.<br> 5. Remove from the oven, top with fresh basil, and drizzle with olive oil.<br> 6. Season with salt and pepper.<br> 7. Slice and serve.',
--  'Savory');

-- -- Recipe 28: Sushi Rolls
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Sushi Rolls', 
--  'Homemade Sushi Rolls with fresh fish and vegetables.', 
--  'Sushi rice (2 cups, cooked and seasoned),<br> Nori sheets (5),<br> Fresh fish (e.g., tuna, salmon, 1/2 pound, thinly sliced),<br> Avocado (1, sliced),<br> Cucumber (1/2, julienned),<br> Soy sauce (for dipping),<br> Wasabi (for serving),<br> Pickled ginger (for serving)', 
--  '1. Prepare sushi rice according to package instructions.<br> 2. Place a nori sheet on a bamboo sushi mat.<br> 3. Spread a layer of rice over the nori.<br> 4. Add slices of fish, avocado, and cucumber.<br> 5. Roll tightly using the sushi mat.<br> 6. Slice into bite-sized pieces.<br> 7. Serve with soy sauce, wasabi, and pickled ginger.',
--  'Savory');

-- -- Recipe 29: Roasted Garlic Hummus
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Roasted Garlic Hummus', 
--  'Creamy Roasted Garlic Hummus for a delightful snack.', 
--  'Chickpeas (1 can, drained),<br> Tahini (1/4 cup),<br> Garlic (2 cloves, roasted),<br> Lemon juice (2 tablespoons),<br> Olive oil (2 tablespoons),<br> Cumin (1/2 teaspoon),<br> Salt (1/2 teaspoon),<br> Paprika (for garnish)', 
--  '1. In a blender, combine chickpeas, tahini, roasted garlic, and lemon juice.<br> 2. Blend until smooth.<br> 3. Gradually add olive oil while blending.<br> 4. Season with cumin and salt.<br> 5. Blend until well combined.<br> 6. Serve with a sprinkle of paprika on top.<br> 7. Enjoy with pita bread or vegetable sticks.',
--  'Savory');

-- -- Recipe 30: Stuffed Bell Peppers with Quinoa
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Stuffed Bell Peppers with Quinoa', 
--  'Colorful Stuffed Bell Peppers with a flavorful quinoa filling.', 
--  'Bell peppers (4, halved and seeds removed),<br> Quinoa (1 cup, cooked),<br> Black beans (1 can, drained and rinsed),<br> Corn (1 cup, frozen or canned),<br> Diced tomatoes (1 can),<br> Chili powder (1 tablespoon),<br> Cumin (1 teaspoon),<br> Shredded cheese (1 cup),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Preheat the oven to 375°F (190°C).<br> 2. Cook quinoa according to package instructions.<br> 3. Mix cooked quinoa with black beans, corn, diced tomatoes, chili powder, and cumin.<br> 4. Cut bell peppers in half and remove seeds.<br> 5. Stuff with the quinoa mixture.<br> 6. Top with shredded cheese.<br> 7. Bake until peppers are tender and cheese is melted.<br> 8. Season with salt and pepper.<br> 9. Serve.',
--  'Savory');

-- -- Recipe 31: Chocolate Avocado Mousse
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Chocolate Avocado Mousse', 
--  'Creamy Chocolate Avocado Mousse with a hint of sweetness.', 
--  'Avocados (2, ripe),<br> Cocoa powder (1/2 cup),<br> Maple syrup (1/4 cup),<br> Vanilla extract (1 teaspoon),<br> Almond milk (1/4 cup),<br> Salt (a pinch)', 
--  '1. Scoop out the flesh of ripe avocados.<br> 2. In a blender, combine avocado flesh, cocoa powder, maple syrup, vanilla extract, almond milk, and a pinch of salt.<br> 3. Blend until smooth and creamy.<br> 4. Refrigerate for at least 2 hours before serving.<br> 5. Serve chilled, garnished with fresh berries if desired.',
--  'Sweet');

-- -- Recipe 32: Caprese Salad
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Caprese Salad', 
--  'Classic Caprese Salad with fresh tomatoes, mozzarella, and basil.', 
--  'Tomatoes (4, sliced),<br> Fresh mozzarella (1 ball, sliced),<br> Fresh basil (1/2 cup),<br> Balsamic glaze (2 tablespoons),<br> Olive oil (2 tablespoons),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Arrange alternating slices of tomatoes and mozzarella on a platter.<br> 2. Tuck fresh basil leaves between the slices.<br> 3. Drizzle with balsamic glaze and olive oil.<br> 4. Season with salt and pepper.<br> 5. Serve as a refreshing salad or appetizer.',
--  'Savory');

-- -- Recipe 33: Quinoa Salad with Lemon Vinaigrette
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Quinoa Salad with Lemon Vinaigrette', 
--  'Zesty Quinoa Salad with a refreshing lemon vinaigrette.', 
--  'Quinoa (1 cup, cooked),<br> Cucumber (1, diced),<br> Cherry tomatoes (1 cup, halved),<br> Red bell pepper (1, diced),<br> Red onion (1/4, finely chopped),<br> Feta cheese (1/2 cup, crumbled),<br> Kalamata olives (1/4 cup, sliced),<br> Fresh parsley (1/4 cup, chopped),<br> Olive oil (3 tablespoons),<br> Lemon juice (2 tablespoons),<br> Dijon mustard (1 teaspoon),<br> Honey (1 teaspoon),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. In a large bowl, combine cooked quinoa, cucumber, cherry tomatoes, red bell pepper, red onion, feta cheese, kalamata olives, and fresh parsley.<br> 2. In a small bowl, whisk together olive oil, lemon juice, Dijon mustard, honey, salt, and pepper.<br> 3. Pour the vinaigrette over the quinoa mixture.<br> 4. Toss to combine.<br> 5. Season with additional salt and pepper if needed.<br> 6. Serve chilled as a refreshing salad.',
--  'Sour');

-- -- Recipe 34: Chicken Caesar Salad
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Chicken Caesar Salad', 
--  'Classic Chicken Caesar Salad with grilled chicken and homemade dressing.', 
--  'Romaine lettuce (1 head, chopped),<br> Grilled chicken breast (2, sliced),<br> Croutons (1 cup),<br> Parmesan cheese (1/2 cup, grated),<br> Caesar dressing (1/2 cup),<br> Lemon juice (1 tablespoon),<br> Olive oil (2 tablespoons),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. In a large bowl, combine chopped romaine lettuce, sliced grilled chicken breast, croutons, and grated Parmesan cheese.<br> 2. In a small bowl, whisk together Caesar dressing, lemon juice, olive oil, salt, and pepper.<br> 3. Pour the dressing over the salad.<br> 4. Toss until the salad is well coated with the dressing.<br> 5. Season with additional salt and pepper if needed.<br> 6. Serve as a delicious and satisfying Caesar salad.',
--  'Savory');

-- -- Recipe 35: Beef and Vegetable Stir-Fry
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Beef and Vegetable Stir-Fry', 
--  'Quick and flavorful Beef and Vegetable Stir-Fry with a savory sauce.', 
--  'Beef sirloin or flank steak (1 pound, thinly sliced),<br> Broccoli (1 head, cut into florets),<br> Bell peppers (2, sliced),<br> Carrots (2, julienned),<br> Soy sauce (1/4 cup),<br> Oyster sauce (2 tablespoons),<br> Garlic (3 cloves, minced),<br> Ginger (1 tablespoon, grated),<br> Sesame oil (1 tablespoon),<br> Green onions (3, sliced),<br> Rice (2 cups, cooked),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. In a bowl, marinate thinly sliced beef in soy sauce, oyster sauce, minced garlic, and grated ginger.<br> 2. Heat sesame oil in a wok or large skillet.<br> 3. Stir-fry marinated beef until browned.<br> 4. Add broccoli, bell peppers, and julienned carrots.<br> 5. Stir-fry until vegetables are tender-crisp.<br> 6. Garnish with sliced green onions.<br> 7. Serve over cooked rice.',
--  'Savory');

-- -- Recipe 36: Margherita Pizza
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Margherita Pizza', 
--  'Homemade Margherita Pizza with fresh tomatoes, mozzarella, and basil.', 
--  'Pizza dough (1 ball),<br> Tomato sauce (1/2 cup),<br> Fresh mozzarella (4 ounces, sliced),<br> Fresh basil (1/2 cup),<br> Olive oil (2 tablespoons),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Preheat the oven to the highest temperature your oven allows.<br> 2. Roll out pizza dough on a floured surface.<br> 3. Spread tomato sauce over the dough.<br> 4. Add slices of fresh mozzarella.<br> 5. Bake until the crust is golden and the cheese is melted.<br> 6. Remove from the oven and top with fresh basil.<br> 7. Drizzle with olive oil.<br> 8. Season with salt and pepper.<br> 9. Slice and enjoy your homemade Margherita pizza!',
--  'Savory');

-- -- Recipe 37: Pesto Pasta with Cherry Tomatoes
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Pesto Pasta with Cherry Tomatoes', 
--  'Delicious Pesto Pasta with vibrant cherry tomatoes and Parmesan cheese.', 
--  'Pasta (8 ounces, cooked),<br> Basil pesto (1/2 cup),<br> Cherry tomatoes (1 cup, halved),<br> Parmesan cheese (1/2 cup, grated),<br> Garlic (2 cloves, minced),<br> Olive oil (2 tablespoons),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Cook pasta according to package instructions.<br> 2. In a large bowl, toss cooked pasta with basil pesto, halved cherry tomatoes, grated Parmesan cheese, minced garlic, and olive oil.<br> 3. Season with salt and pepper to taste.<br> 4. Mix until the pasta is well coated with the pesto sauce and the ingredients are evenly distributed.<br> 5. Serve as a delicious and flavorful pesto pasta dish.',
--  'Savory');

-- -- Recipe 38: Chicken Alfredo with Broccoli
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Chicken Alfredo with Broccoli', 
--  'Creamy Chicken Alfredo with tender broccoli florets.', 
--  'Fettuccine pasta (8 ounces, cooked),<br> Chicken breasts (2, cooked and sliced),<br> Broccoli florets (2 cups, steamed),<br> Heavy cream (1 cup),<br> Butter (1/2 cup),<br> Parmesan cheese (1 cup, grated),<br> Garlic (3 cloves, minced),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Cook fettuccine pasta according to package instructions.<br> 2. In a saucepan, melt butter over medium heat.<br> 3. Add minced garlic and sauté until fragrant.<br> 4. Pour in heavy cream and bring to a simmer.<br> 5. Stir in grated Parmesan cheese until the sauce is smooth and creamy.<br> 6. Season with salt and pepper to taste.<br> 7. In a serving dish, combine cooked fettuccine pasta, sliced chicken breasts, and steamed broccoli florets.<br> 8. Pour Alfredo sauce over the pasta mixture and toss until well coated.<br> 9. Serve hot and enjoy your homemade Chicken Alfredo with Broccoli!',
--  'Savory');

-- -- Recipe 39: Baked Ziti
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Baked Ziti', 
--  'Hearty Baked Ziti with layers of pasta, cheeses, and savory marinara sauce.', 
--  'Ziti pasta (1 pound, cooked),<br> Ricotta cheese (2 cups),<br> Mozzarella cheese (2 cups, shredded),<br> Parmesan cheese (1 cup, grated),<br> Marinara sauce (4 cups),<br> Italian sausage (1 pound, cooked and crumbled),<br> Garlic (3 cloves, minced),<br> Dried oregano (1 teaspoon),<br> Dried basil (1 teaspoon),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Cook ziti pasta according to package instructions.<br> 2. In a large bowl, mix cooked ziti pasta with ricotta cheese, shredded mozzarella cheese, grated Parmesan cheese, cooked and crumbled Italian sausage, minced garlic, dried oregano, and dried basil.<br> 3. Preheat the oven to 375°F (190°C).<br> 4. In a baking dish, layer half of the ziti mixture, followed by half of the marinara sauce.<br> 5. Repeat the layers.<br> 6. Bake for 25-30 minutes or until the cheese is melted and bubbly.<br> 7. Season with salt and pepper to taste.<br> 8. Serve hot.',
--  'Savory');

-- -- Recipe 40: Teriyaki Chicken Bowl
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Teriyaki Chicken Bowl', 
--  'Flavorful Teriyaki Chicken Bowl with savory chicken, steamed broccoli, and rice.', 
--  'Chicken thighs (4, boneless and skinless),<br> Teriyaki sauce (1 cup),<br> Soy sauce (2 tablespoons),<br> Brown sugar (2 tablespoons),<br> Garlic (3 cloves, minced),<br> Ginger (1 tablespoon, grated),<br> Vegetable oil (2 tablespoons),<br> White rice (2 cups, cooked),<br> Broccoli florets (2 cups, steamed),<br> Green onions (3, sliced),<br> Sesame seeds (1 tablespoon),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. In a bowl, mix teriyaki sauce, soy sauce, brown sugar, minced garlic, and grated ginger.<br> 2. Marinate chicken thighs in the teriyaki mixture for at least 30 minutes.<br> 3. In a skillet, heat vegetable oil over medium-high heat.<br> 4. Add marinated chicken thighs and cook until browned and cooked through.<br> 5. Slice cooked chicken into strips.<br> 6. In serving bowls, layer cooked white rice, steamed broccoli florets, and sliced teriyaki chicken.<br> 7. Garnish with sliced green onions and sesame seeds.<br> 8. Season with salt and pepper to taste.<br> 9. Serve and enjoy your Teriyaki Chicken Bowl!',
--  'Savory');

-- -- Recipe 41: BBQ Pulled Pork Sandwiches
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('BBQ Pulled Pork Sandwiches', 
--  'Delicious BBQ Pulled Pork Sandwiches with tender pork, tangy BBQ sauce, and coleslaw.', 
--  'Pork shoulder (3 pounds),<br> BBQ sauce (2 cups),<br> Brown sugar (1/4 cup),<br> Apple cider vinegar (1/4 cup),<br> Worcestershire sauce (2 tablespoons),<br> Garlic powder (1 teaspoon),<br> Onion powder (1 teaspoon),<br> Hamburger buns (8),<br> Coleslaw (for serving),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Season pork shoulder with salt and pepper.<br> 2. In a slow cooker, combine BBQ sauce, brown sugar, apple cider vinegar, Worcestershire sauce, garlic powder, and onion powder.<br> 3. Add seasoned pork shoulder to the slow cooker and coat with the sauce.<br> 4. Cook on low for 8 hours or until the pork is tender and easily shreds with a fork.<br> 5. Shred the cooked pork using two forks.<br> 6. Toast hamburger buns in the oven or on a grill.<br> 7. Assemble sandwiches with pulled pork and top with coleslaw.<br> 8. Serve hot and enjoy your BBQ Pulled Pork Sandwiches!',
--  'Savory');

-- -- Recipe 42: Chicken Parmesan
-- INSERT IGNORE INTO Recipes (RecipeName, Description, Ingredients, Instructions, Flavor)
-- VALUES 
-- ('Chicken Parmesan', 
--  'Classic Chicken Parmesan with breaded chicken, marinara sauce, and melted mozzarella.', 
--  'Chicken breasts (4),<br> Breadcrumbs (1 cup),<br> Parmesan cheese (1/2 cup, grated),<br> Eggs (2, beaten),<br> Marinara sauce (2 cups),<br> Mozzarella cheese (1 cup, shredded),<br> Olive oil (2 tablespoons),<br> Italian seasoning (1 teaspoon),<br> Salt (to taste),<br> Pepper (to taste)', 
--  '1. Preheat the oven to 375°F (190°C).<br> 2. Season chicken breasts with salt and pepper.<br> 3. In one bowl, combine breadcrumbs, grated Parmesan cheese, and Italian seasoning.<br> 4. Dip each chicken breast in beaten eggs and coat with the breadcrumb mixture.<br> 5. In a skillet, heat olive oil over medium-high heat.<br> 6. Brown chicken breasts on both sides.<br> 7. Transfer browned chicken to a baking dish.<br> 8. Top each chicken breast with marinara sauce and shredded mozzarella cheese.<br> 9. Bake for 25-30 minutes or until the chicken is cooked through and the cheese is melted and bubbly.<br> 10. Serve hot.',
--  'Savory');

-- Recipe 43: Chicken and Rice Casserole
INSERT IGNORE INTO Recipes (Image, RecipeName, Description, Ingredients, Instructions, Flavor, UserAdded, UserID)
VALUES 
('/fyp/food/ChickenandRiceCasserole.jpg',
 'Chicken and Rice Casserole', 
 'Comforting Chicken and Rice Casserole with a flavorful mix of chicken, rice, and vegetables.', 
 'Chicken thighs (6, bone-in, skin-on),<br> Rice (1 cup, uncooked),<br> Chicken broth (2 cups),<br> Cream of mushroom soup (1 can),<br> Onion (1, chopped),<br> Garlic (3 cloves, minced),<br> Frozen peas (1 cup),<br> Italian seasoning (1 teaspoon),<br> Salt (to taste),<br> Pepper (to taste)', 
 '1. Preheat the oven to 375°F (190°C).<br> 2. In a bowl, mix uncooked rice, chicken broth, cream of mushroom soup, chopped onion, minced garlic, frozen peas, Italian seasoning, salt, and pepper.<br> 3. Pour the rice mixture into a baking dish.<br> 4. Arrange chicken thighs on top of the rice mixture.<br> 5. Season chicken with additional salt and pepper.<br> 6. Cover the baking dish with foil.<br> 7. Bake for 45 minutes.<br> 8. Remove foil and bake for an additional 15-20 minutes or until the chicken is golden and the rice is cooked through.<br> 9. Serve hot.',
 'Savory', FALSE, NULL);

-- Recipe 44: Roasted Butternut Squash Soup
INSERT IGNORE INTO Recipes (Image, RecipeName, Description, Ingredients, Instructions, Flavor, UserAdded, UserID)
VALUES 
('/fyp/food/RoastedButternutSquashSoup.webp',
 'Roasted Butternut Squash Soup', 
 'Butternut squash (1, peeled, seeded, and cubed),<br> Onion (1, chopped),<br> Carrots (2, chopped),<br> Garlic (3 cloves, minced),<br> Vegetable broth (4 cups),<br> Coconut milk (1 cup),<br> Curry powder (1 teaspoon),<br> Cinnamon (1/2 teaspoon),<br> Nutmeg (1/4 teaspoon),<br> Olive oil (2 tablespoons),<br> Salt (to taste),<br> Pepper (to taste)', 
 '11. Preheat the oven to 400°F (200°C).<br> 2. Toss cubed butternut squash, chopped onion, chopped carrots, and minced garlic with olive oil.<br> 3. Spread the vegetables on a baking sheet.<br> 4. Roast in the oven until vegetables are tender and caramelized.<br> 5. In a blender, combine roasted vegetables, vegetable broth, coconut milk, curry powder, cinnamon, and nutmeg.<br> 6. Blend until smooth.<br> 7. Pour the mixture into a pot and heat over medium heat until warmed through.<br> 8. Season with salt and pepper to taste.<br> 9. Serve hot.',
 'Savory',
 FALSE, NULL);

-- Recipe 45: Thai  Basil Chicken (Pad Krapow Gai)
INSERT IGNORE INTO Recipes (Image, RecipeName, Description, Ingredients, Instructions, Flavor, UserAdded, UserID)
VALUES 
('/fyp/food/ThaiBasilChicken.jpeg',
 'Thai  Basil Chicken (Pad Krapow Gai)', 
 'Spicy and flavorful Thai Basil Chicken (Pad Krapow Gai) served over jasmine rice.', 
 'Chicken thighs (1 pound, ground),<br> Thai basil leaves (2 cups),<br> Garlic (5 cloves, minced),<br> Thai chilies (3, chopped),<br> Soy sauce (2 tablespoons),<br> Oyster sauce (1 tablespoon),<br> Fish sauce (1 tablespoon),<br> Sugar (1 teaspoon),<br> Vegetable oil (2 tablespoons),<br> Jasmine rice (2 cups, cooked),<br> Fried egg (1, optional),<br> Salt (to taste),<br> Pepper (to taste)', 
 '1. In a wok or large skillet, heat vegetable oil over medium-high heat.<br> 2. Add minced garlic and chopped Thai chilies. Sauté until fragrant.<br> 3. Add ground chicken and cook until browned.<br> 4. In a bowl, mix soy sauce, oyster sauce, fish sauce, and sugar.<br> 5. Pour the sauce over the cooked chicken.<br> 6. Stir in Thai basil leaves and cook until wilted.<br> 7. Season with salt and pepper to taste.<br> 8. Serve over jasmine rice.<br> 9. Top with a fried egg if desired.<br> 10. Enjoy your flavorful Thai Basil Chicken!',
 'Spicy',
 FALSE, NULL);

 -- Recipe 46: Vegetarian Enchiladas
INSERT IGNORE INTO Recipes (Image, RecipeName, Description, Ingredients, Instructions, Flavor, UserAdded, UserID)
VALUES 
('/fyp/food/VegetarianEnchiladas.jpeg',
 'Vegetarian Enchiladas', 
 'Flavorful Vegetarian Enchiladas with black beans, corn, bell peppers, and melted cheese.', 
 'Tortillas (8),<br> Black beans (1 can, drained and rinsed),<br> Corn kernels (1 cup, frozen or canned),<br> Bell peppers (2, diced),<br> Red onion (1, diced),<br> Enchilada sauce (2 cups),<br> Shredded cheese (2 cups),<br> Cilantro (1/2 cup, chopped),<br> Avocado (1, sliced),<br> Salt (to taste),<br> Pepper (to taste)', 
 '1. Preheat the oven to 375°F (190°C).<br> 2. In a bowl, mix black beans, corn kernels, diced bell peppers, and diced red onion.<br> 3. Warm tortillas in the microwave or on a skillet.<br> 4. Spoon the black bean mixture onto each tortilla.<br> 5. Roll up the tortillas and place them seam-side down in a baking dish.<br> 6. Pour enchilada sauce over the rolled tortillas.<br> 7. Sprinkle shredded cheese on top.<br> 8. Bake for 20-25 minutes or until the cheese is melted and bubbly.<br> 9. Garnish with chopped cilantro and sliced avocado.<br> 10. Season with salt and pepper to taste.<br> 11. Serve and enjoy your Vegetarian Enchiladas!',
 'Savory',
 FALSE, NULL);