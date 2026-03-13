module RecipeDB where
import Dish

recipes :: [Dish]

recipes =
  [
  -- ============================================================
  -- ITALIAN CUISINE
  -- ============================================================
    Dish "Pasta Alfredo" "Italian"
      "Classic creamy Italian fettuccine tossed in a rich Parmesan and butter sauce, a beloved staple of Roman cuisine."
      "Medium" "30 minutes" 4
      "Reserve a cup of pasta water before draining - it is the secret to achieving a silky smooth sauce."
      [ Ingredient "Fettuccine Pasta" "400g"
      , Ingredient "Unsalted Butter" "3 tbsp"
      , Ingredient "Garlic" "4 cloves"
      , Ingredient "Heavy Cream" "1.5 cups"
      , Ingredient "Parmesan Cheese" "100g"
      , Ingredient "Salt" "1 tsp"
      , Ingredient "Black Pepper" "0.5 tsp"
      , Ingredient "Fresh Parsley" "2 tbsp"
      ]
      [ Step 1 "Boil Salted Water" "Fill a large pot with 4 liters of water and add salt. Bring to a vigorous rolling boil over high heat." "Salt" "1 tsp"
      , Step 2 "Cook Pasta Al Dente" "Add fettuccine to boiling water and cook for 10-12 minutes, stirring occasionally. It should be tender but slightly firm in the center." "Fettuccine Pasta" "400g"
      , Step 3 "Melt Butter" "In a large skillet, melt butter over medium heat until it foams and turns slightly golden for a nutty flavor." "Unsalted Butter" "3 tbsp"
      , Step 4 "Saute Garlic" "Add finely minced garlic and cook for 60 seconds, stirring constantly. It should be fragrant and pale gold, never browned." "Garlic" "4 cloves"
      , Step 5 "Create Cream Sauce" "Pour heavy cream into the skillet and bring to a gentle simmer. Cook 3-4 minutes until it coats the back of a spoon." "Heavy Cream" "1.5 cups"
      , Step 6 "Add Parmesan" "Remove from heat and gradually stir in freshly grated Parmesan until melted into a smooth, velvety sauce." "Parmesan Cheese" "100g"
      , Step 7 "Toss Pasta in Sauce" "Drain pasta, add to sauce, and toss vigorously with tongs. Add reserved pasta water if sauce is too thick." "Fettuccine Pasta" "400g"
      , Step 8 "Season and Garnish" "Season with freshly cracked black pepper and garnish with chopped parsley. Serve immediately on warmed plates." "Black Pepper" "0.5 tsp"
      ]

  , Dish "Margherita Pizza" "Italian"
      "Authentic Neapolitan-style pizza with fresh mozzarella, San Marzano tomatoes, and fragrant basil on a thin crispy crust."
      "Medium" "45 minutes" 2
      "Preheat your oven to the highest temperature possible - a blazing hot oven is the key to a perfect crispy crust."
      [ Ingredient "Pizza Dough" "500g"
      , Ingredient "San Marzano Tomatoes" "200g"
      , Ingredient "Fresh Mozzarella" "200g"
      , Ingredient "Fresh Basil" "10 leaves"
      , Ingredient "Olive Oil" "2 tbsp"
      , Ingredient "Salt" "1 tsp"
      ]
      [ Step 1 "Prepare Dough" "Take pizza dough out of the fridge 30 minutes before use. On a floured surface, stretch it into a 12-inch circle using your hands." "Pizza Dough" "500g"
      , Step 2 "Make Tomato Base" "Crush San Marzano tomatoes by hand into a bowl. Add a pinch of salt. Do not cook - raw sauce keeps its fresh vibrant flavor." "San Marzano Tomatoes" "200g"
      , Step 3 "Preheat Oven" "Preheat oven to 250 degrees Celsius with a pizza stone or inverted baking sheet inside for at least 30 minutes." "" ""
      , Step 4 "Spread Sauce" "Using a ladle, spread a thin layer of crushed tomatoes over the dough leaving a 1-inch border for the crust." "San Marzano Tomatoes" "200g"
      , Step 5 "Add Mozzarella" "Tear fresh mozzarella into irregular pieces and distribute evenly over the sauce for beautiful melted pools." "Fresh Mozzarella" "200g"
      , Step 6 "Drizzle Olive Oil" "Drizzle extra virgin olive oil in a spiral pattern over the pizza for richness and beautiful browning." "Olive Oil" "2 tbsp"
      , Step 7 "Bake Pizza" "Slide pizza onto the preheated stone and bake for 8-10 minutes until crust is golden and cheese is bubbling." "" ""
      , Step 8 "Add Fresh Basil" "Remove from oven and immediately scatter fresh basil leaves on top. Residual heat will gently wilt the basil." "Fresh Basil" "10 leaves"
      ]

  , Dish "Spaghetti Bolognese" "Italian"
      "Rich and hearty slow-simmered Italian meat sauce with ground beef, tomatoes, and red wine served over perfectly cooked spaghetti."
      "Medium" "50 minutes" 4
      "Let the sauce simmer low and slow - the longer it cooks, the deeper and more complex the flavors become."
      [ Ingredient "Spaghetti" "400g"
      , Ingredient "Ground Beef" "500g"
      , Ingredient "Onion" "1 large"
      , Ingredient "Garlic" "3 cloves"
      , Ingredient "Tomato Passata" "400ml"
      , Ingredient "Olive Oil" "2 tbsp"
      , Ingredient "Red Wine" "100ml"
      , Ingredient "Parmesan Cheese" "50g"
      ]
      [ Step 1 "Heat Oil and Saute Aromatics" "Heat olive oil in a heavy-bottomed pot. Add finely diced onion and cook for 5 minutes until soft and translucent." "Olive Oil" "2 tbsp"
      , Step 2 "Add Garlic" "Add minced garlic and cook for 1 minute until fragrant. Stir constantly to prevent burning." "Garlic" "3 cloves"
      , Step 3 "Brown the Meat" "Add ground beef, breaking it into small pieces with a wooden spoon. Cook on high heat for 5-7 minutes until well browned." "Ground Beef" "500g"
      , Step 4 "Deglaze with Wine" "Pour in red wine and scrape up the browned bits from the bottom. Let it simmer until the wine reduces by half." "Red Wine" "100ml"
      , Step 5 "Add Tomato Sauce" "Stir in the tomato passata, season with salt and pepper. Bring to a boil then reduce heat to a gentle simmer." "Tomato Passata" "400ml"
      , Step 6 "Slow Simmer" "Cover partially and let the sauce simmer for 25-30 minutes, stirring occasionally until thickened and flavors meld together." "" ""
      , Step 7 "Cook Spaghetti" "Boil spaghetti in salted water until al dente according to package instructions. Drain and reserve some pasta water." "Spaghetti" "400g"
      , Step 8 "Combine and Serve" "Toss spaghetti with the Bolognese sauce. Top with freshly grated Parmesan cheese and serve in warmed bowls." "Parmesan Cheese" "50g"
      ]

  , Dish "Mushroom Risotto" "Italian"
      "Luxuriously creamy Arborio rice dish cooked slowly with wild mushrooms, white wine, and finished with Parmesan and butter."
      "Hard" "45 minutes" 4
      "Never stop stirring the risotto and add stock one ladle at a time - patience creates the signature creamy texture."
      [ Ingredient "Arborio Rice" "300g"
      , Ingredient "Mixed Mushrooms" "300g"
      , Ingredient "Onion" "1 medium"
      , Ingredient "White Wine" "150ml"
      , Ingredient "Parmesan Cheese" "80g"
      , Ingredient "Vegetable Stock" "1 liter"
      , Ingredient "Butter" "2 tbsp"
      , Ingredient "Olive Oil" "1 tbsp"
      ]
      [ Step 1 "Prepare Stock" "Heat vegetable stock in a saucepan and keep it at a gentle simmer. Hot stock is essential for proper risotto." "Vegetable Stock" "1 liter"
      , Step 2 "Saute Mushrooms" "In a large pan, heat olive oil and cook sliced mushrooms on high heat for 5 minutes until golden brown. Set aside." "Mixed Mushrooms" "300g"
      , Step 3 "Cook Onion" "In the same pan, add butter and cook finely diced onion on medium heat for 3 minutes until soft and translucent." "Onion" "1 medium"
      , Step 4 "Toast the Rice" "Add Arborio rice and stir for 2 minutes until the grains are coated in butter and slightly translucent at the edges." "Arborio Rice" "300g"
      , Step 5 "Add White Wine" "Pour in white wine and stir until completely absorbed. This adds acidity and depth to the risotto." "White Wine" "150ml"
      , Step 6 "Add Stock Gradually" "Add hot stock one ladle at a time, stirring constantly. Wait until each addition is absorbed before adding the next for 18-20 minutes." "Vegetable Stock" "1 liter"
      , Step 7 "Add Mushrooms Back" "Fold in the sauteed mushrooms and cook for 2 more minutes until heated through and well incorporated." "Mixed Mushrooms" "300g"
      , Step 8 "Finish with Parmesan" "Remove from heat, stir in grated Parmesan and a knob of butter. The risotto should be creamy and flow like lava when plated." "Parmesan Cheese" "80g"
      ]

  , Dish "Tiramisu" "Italian"
      "Classic Italian no-bake dessert with layers of espresso-soaked ladyfingers and rich mascarpone cream dusted with cocoa."
      "Medium" "30 minutes" 6
      "Use strong freshly brewed espresso and let it cool completely before dipping the ladyfingers for the best flavor."
      [ Ingredient "Mascarpone Cheese" "500g"
      , Ingredient "Espresso Coffee" "300ml"
      , Ingredient "Ladyfinger Biscuits" "24 pieces"
      , Ingredient "Egg Yolks" "4"
      , Ingredient "Sugar" "100g"
      , Ingredient "Cocoa Powder" "3 tbsp"
      , Ingredient "Dark Rum" "2 tbsp"
      ]
      [ Step 1 "Brew Espresso" "Brew strong espresso and let it cool to room temperature. Mix in dark rum for an authentic Italian flavor." "Espresso Coffee" "300ml"
      , Step 2 "Whisk Egg Yolks" "Whisk egg yolks with sugar in a bowl for 5 minutes until pale, fluffy, and tripled in volume." "Egg Yolks" "4"
      , Step 3 "Add Sugar" "Continue whisking the egg yolks and sugar until it forms thick ribbons when the whisk is lifted." "Sugar" "100g"
      , Step 4 "Fold in Mascarpone" "Gently fold mascarpone cheese into the egg mixture using a spatula. Do not overmix or the cream will deflate." "Mascarpone Cheese" "500g"
      , Step 5 "Dip Ladyfingers" "Quickly dip each ladyfinger in espresso for 1-2 seconds per side. They should be moist but not soggy." "Ladyfinger Biscuits" "24 pieces"
      , Step 6 "Layer the Dish" "Arrange dipped ladyfingers in a single layer in a dish. Spread half the mascarpone cream on top evenly." "Ladyfinger Biscuits" "24 pieces"
      , Step 7 "Repeat Layers" "Add another layer of dipped ladyfingers and top with the remaining mascarpone cream. Smooth the top with a spatula." "Mascarpone Cheese" "500g"
      , Step 8 "Dust with Cocoa" "Sift cocoa powder generously over the top. Refrigerate for at least 4 hours or overnight for best results." "Cocoa Powder" "3 tbsp"
      ]

  -- ============================================================
  -- INDIAN CUISINE
  -- ============================================================
  , Dish "Chicken Curry" "Indian"
      "Traditional aromatic Indian chicken curry slow-cooked with onions, tomatoes, and a blend of warm spices."
      "Medium" "45 minutes" 4
      "Cook the onions until deep golden brown - this caramelization is the foundation of all great Indian curries."
      [ Ingredient "Chicken" "500g"
      , Ingredient "Onion" "2 large"
      , Ingredient "Tomato" "3 medium"
      , Ingredient "Ginger-Garlic Paste" "2 tbsp"
      , Ingredient "Turmeric Powder" "1 tsp"
      , Ingredient "Garam Masala" "1.5 tbsp"
      , Ingredient "Oil" "3 tbsp"
      , Ingredient "Fresh Coriander" "2 tbsp"
      ]
      [ Step 1 "Heat Oil" "Heat oil in a heavy-bottomed pan over medium-high heat until it shimmers for proper searing." "Oil" "3 tbsp"
      , Step 2 "Caramelize Onions" "Add thinly sliced onions and cook for 10-12 minutes, stirring often, until deep golden brown and sweet." "Onion" "2 large"
      , Step 3 "Add Ginger-Garlic Paste" "Add ginger-garlic paste and cook for 2 minutes until the raw smell disappears and the paste turns fragrant." "Ginger-Garlic Paste" "2 tbsp"
      , Step 4 "Add Spices" "Add turmeric powder and half the garam masala. Stir for 30 seconds to bloom the spices in the hot oil." "Turmeric Powder" "1 tsp"
      , Step 5 "Cook Tomatoes" "Add chopped tomatoes and cook for 8-10 minutes, mashing them until they break down into a thick paste." "Tomato" "3 medium"
      , Step 6 "Add Chicken" "Add chicken pieces and sear on high heat for 3 minutes per side until golden crust develops." "Chicken" "500g"
      , Step 7 "Simmer the Curry" "Add half cup water, cover, and simmer on low heat for 20 minutes until chicken is tender and cooked through." "Garam Masala" "1.5 tbsp"
      , Step 8 "Garnish and Serve" "Sprinkle remaining garam masala and fresh coriander. Serve hot with steamed basmati rice or naan bread." "Fresh Coriander" "2 tbsp"
      ]

  , Dish "Chicken Biryani" "Indian"
      "Fragrant Indian layered rice dish with marinated chicken, saffron-infused basmati rice, and aromatic whole spices."
      "Hard" "75 minutes" 6
      "The dum cooking method with sealed lid traps steam inside, allowing the flavors to meld perfectly."
      [ Ingredient "Basmati Rice" "2 cups"
      , Ingredient "Chicken" "500g"
      , Ingredient "Yogurt" "1 cup"
      , Ingredient "Onion" "3 large"
      , Ingredient "Biryani Masala" "2 tbsp"
      , Ingredient "Saffron" "0.5 tsp"
      , Ingredient "Ghee" "3 tbsp"
      , Ingredient "Mint Leaves" "2 tbsp"
      ]
      [ Step 1 "Marinate Chicken" "Mix chicken with yogurt and biryani masala. Marinate for at least 30 minutes for the spices to penetrate the meat." "Yogurt" "1 cup"
      , Step 2 "Soak and Cook Rice" "Wash basmati rice 3 times and soak for 20 minutes. Boil in salted water until 70 percent cooked, then drain." "Basmati Rice" "2 cups"
      , Step 3 "Fry Onions" "Slice onions thinly and deep fry in ghee until crispy and dark golden brown. These add sweetness and crunch." "Onion" "3 large"
      , Step 4 "Cook Chicken" "In the same pot, cook the marinated chicken on medium heat for 10 minutes until partially cooked and masala thickens." "Chicken" "500g"
      , Step 5 "Prepare Saffron Milk" "Dissolve saffron strands in 3 tablespoons of warm milk for the signature golden color and floral aroma." "Saffron" "0.5 tsp"
      , Step 6 "Layer the Biryani" "Spread partially cooked rice over the chicken. Drizzle saffron milk, scatter fried onions and fresh mint leaves on top." "Mint Leaves" "2 tbsp"
      , Step 7 "Dum Cooking" "Seal the pot with aluminum foil and a tight lid. Cook on lowest heat for 25 minutes to let steam do the cooking." "Ghee" "3 tbsp"
      , Step 8 "Rest and Serve" "Turn off heat and let it rest for 5 minutes without opening. Gently mix layers while serving to show the golden rice." "Biryani Masala" "2 tbsp"
      ]

  , Dish "Masala Dosa" "South Indian"
      "Crispy fermented rice and lentil crepe filled with spiced potato masala, a beloved South Indian breakfast delicacy."
      "Medium" "35 minutes" 4
      "The pan must be very hot first, then reduce heat before spreading batter for the perfect crispy golden texture."
      [ Ingredient "Dosa Batter" "3 cups"
      , Ingredient "Potato" "4 medium"
      , Ingredient "Onion" "1 large"
      , Ingredient "Mustard Seeds" "1 tsp"
      , Ingredient "Curry Leaves" "10 leaves"
      , Ingredient "Turmeric Powder" "0.5 tsp"
      , Ingredient "Oil" "4 tbsp"
      , Ingredient "Green Chilies" "2"
      ]
      [ Step 1 "Boil Potatoes" "Boil potatoes until tender, about 15 minutes. Peel and mash them coarsely, keeping some chunks for texture." "Potato" "4 medium"
      , Step 2 "Prepare Tempering" "Heat oil in a pan, add mustard seeds and wait for them to pop. This releases their nutty pungent flavor." "Mustard Seeds" "1 tsp"
      , Step 3 "Add Aromatics" "Add curry leaves, chopped green chilies, and diced onion. Saute until onions turn translucent, about 3 minutes." "Curry Leaves" "10 leaves"
      , Step 4 "Make Potato Masala" "Add turmeric powder and mashed potatoes. Mix well, add salt and a splash of water. Cook for 5 minutes." "Turmeric Powder" "0.5 tsp"
      , Step 5 "Heat Dosa Pan" "Heat a flat iron griddle on high heat. Sprinkle water to test - it should sizzle and evaporate instantly." "" ""
      , Step 6 "Spread Dosa Batter" "Pour a ladleful of batter in the center, then spread in circular motion from inside out to make a thin crepe." "Dosa Batter" "3 cups"
      , Step 7 "Cook and Fill" "Drizzle oil around the edges, cook until golden and crispy. Place potato masala in the center." "Oil" "4 tbsp"
      , Step 8 "Fold and Serve" "Fold the dosa over the filling into a half-moon or roll shape. Serve immediately with coconut chutney and sambar." "Onion" "1 large"
      ]

  , Dish "Butter Chicken" "North Indian"
      "Creamy and mildly spiced North Indian chicken in a rich tomato-butter gravy, one of the world's most popular curries."
      "Medium" "50 minutes" 4
      "Finish with a tablespoon of honey and a squeeze of lemon to perfectly balance the richness of the butter and cream."
      [ Ingredient "Chicken" "500g"
      , Ingredient "Butter" "4 tbsp"
      , Ingredient "Tomato Puree" "2 cups"
      , Ingredient "Heavy Cream" "0.5 cup"
      , Ingredient "Ginger-Garlic Paste" "2 tbsp"
      , Ingredient "Garam Masala" "1 tbsp"
      , Ingredient "Kashmiri Chili" "1 tsp"
      , Ingredient "Fenugreek Leaves" "1 tsp"
      ]
      [ Step 1 "Marinate Chicken" "Cut chicken into pieces and marinate with ginger-garlic paste, Kashmiri chili, and salt for 20 minutes." "Kashmiri Chili" "1 tsp"
      , Step 2 "Grill Chicken" "Cook marinated chicken in a hot pan or oven at 220C for 15 minutes until charred edges appear. Set aside." "Chicken" "500g"
      , Step 3 "Make Tomato Base" "In a heavy pot, melt half the butter and add tomato puree. Cook on medium heat for 15 minutes until oil separates." "Tomato Puree" "2 cups"
      , Step 4 "Add Ginger-Garlic" "Add ginger-garlic paste to the tomato base and cook for 3 minutes until the raw smell is fully cooked out." "Ginger-Garlic Paste" "2 tbsp"
      , Step 5 "Blend the Sauce" "Let the sauce cool slightly, then blend until silky smooth. Strain through a sieve for the signature velvety texture." "" ""
      , Step 6 "Simmer with Butter" "Return sauce to pot, add remaining butter and garam masala. Simmer gently for 10 minutes, stirring occasionally." "Butter" "4 tbsp"
      , Step 7 "Add Cream and Chicken" "Pour in heavy cream and add the grilled chicken pieces. Simmer for 10 minutes, letting chicken absorb the flavors." "Heavy Cream" "0.5 cup"
      , Step 8 "Finish with Fenugreek" "Crush dried fenugreek leaves between your palms and sprinkle over the curry for the signature earthy aroma." "Fenugreek Leaves" "1 tsp"
      ]

  , Dish "Paneer Tikka" "Indian"
      "Smoky and succulent Indian cottage cheese cubes marinated in spiced yogurt and grilled to charred perfection."
      "Easy" "30 minutes" 4
      "Do not skip the marination time - the yogurt tenderizes the paneer while the spices deeply flavor every cube."
      [ Ingredient "Paneer" "400g"
      , Ingredient "Yogurt" "1 cup"
      , Ingredient "Bell Peppers" "2"
      , Ingredient "Onion" "1 large"
      , Ingredient "Tikka Masala" "2 tbsp"
      , Ingredient "Lemon Juice" "2 tbsp"
      , Ingredient "Oil" "2 tbsp"
      , Ingredient "Chaat Masala" "1 tsp"
      ]
      [ Step 1 "Prepare Marinade" "Mix yogurt with tikka masala, lemon juice, and a pinch of salt in a large bowl until smooth and well combined." "Tikka Masala" "2 tbsp"
      , Step 2 "Cut Paneer" "Cut paneer into 1.5-inch cubes. Uniform size ensures even cooking and consistent char marks on every piece." "Paneer" "400g"
      , Step 3 "Cut Vegetables" "Cut bell peppers and onion into similar sized chunks as the paneer for uniform cooking on the skewers." "Bell Peppers" "2"
      , Step 4 "Marinate Everything" "Add paneer cubes, pepper chunks, and onion pieces to the yogurt marinade. Coat evenly and refrigerate for 30 minutes." "Yogurt" "1 cup"
      , Step 5 "Thread Skewers" "Thread marinated paneer and vegetables alternately onto metal or soaked wooden skewers for a colorful presentation." "Onion" "1 large"
      , Step 6 "Grill or Broil" "Brush with oil and grill on high heat or broil for 4-5 minutes per side until charred spots appear on the edges." "Oil" "2 tbsp"
      , Step 7 "Squeeze Lemon" "Remove from heat and immediately squeeze fresh lemon juice over the hot tikka to brighten all the smoky flavors." "Lemon Juice" "2 tbsp"
      , Step 8 "Garnish and Serve" "Sprinkle chaat masala generously and serve on a sizzling plate with mint chutney and sliced onion rings." "Chaat Masala" "1 tsp"
      ]

  -- ============================================================
  -- ASIAN CUISINE
  -- ============================================================
  , Dish "Vegetable Fried Rice" "Chinese"
      "Popular Asian wok-tossed rice with colorful vegetables, aromatic garlic, and the smoky char of high-heat cooking."
      "Easy" "20 minutes" 4
      "Use day-old cold rice for the best fried rice - freshly cooked rice is too moist and will turn mushy."
      [ Ingredient "Cooked Rice" "3 cups"
      , Ingredient "Carrot" "1 cup diced"
      , Ingredient "Green Beans" "1 cup"
      , Ingredient "Soy Sauce" "3 tbsp"
      , Ingredient "Garlic" "3 cloves"
      , Ingredient "Eggs" "2"
      , Ingredient "Sesame Oil" "1 tbsp"
      , Ingredient "Spring Onion" "3 stalks"
      ]
      [ Step 1 "Heat Wok" "Heat a wok over the highest heat until smoking. Add sesame oil and swirl to coat the entire surface." "Sesame Oil" "1 tbsp"
      , Step 2 "Scramble Eggs" "Crack eggs into the hot wok and scramble quickly for 30 seconds until just set. Break into small pieces." "Eggs" "2"
      , Step 3 "Cook Garlic" "Add minced garlic to the center of the wok and stir-fry for 15 seconds until fragrant. Work quickly." "Garlic" "3 cloves"
      , Step 4 "Stir-Fry Vegetables" "Add diced carrot and green beans. Toss vigorously over high heat for 2-3 minutes until crisp-tender." "Carrot" "1 cup diced"
      , Step 5 "Add Cold Rice" "Add day-old rice, breaking up clumps. Press rice flat against the hot wok to get smoky charred bits." "Cooked Rice" "3 cups"
      , Step 6 "Season with Soy Sauce" "Pour soy sauce along the edges of the wok so it sizzles and caramelizes before mixing in for depth and color." "Soy Sauce" "3 tbsp"
      , Step 7 "Combine Everything" "Mix eggs back in with the rice and vegetables. Toss everything together vigorously for 2 minutes over maximum heat." "Green Beans" "1 cup"
      , Step 8 "Add Spring Onions" "Turn off heat and fold in chopped spring onions. Residual heat will soften them while keeping their fresh crunch." "Spring Onion" "3 stalks"
      ]

  , Dish "Pad Thai" "Thai"
      "Thailand's beloved stir-fried rice noodle dish with shrimp, tangy tamarind sauce, crunchy peanuts, and fresh lime."
      "Medium" "25 minutes" 2
      "Soak rice noodles in room temperature water, not hot - this prevents them from becoming mushy when stir-fried."
      [ Ingredient "Rice Noodles" "250g"
      , Ingredient "Shrimp" "200g"
      , Ingredient "Eggs" "2"
      , Ingredient "Bean Sprouts" "1 cup"
      , Ingredient "Tamarind Paste" "3 tbsp"
      , Ingredient "Fish Sauce" "2 tbsp"
      , Ingredient "Crushed Peanuts" "3 tbsp"
      , Ingredient "Lime" "1"
      ]
      [ Step 1 "Soak Rice Noodles" "Soak rice noodles in room temperature water for 30 minutes until pliable but still firm. Drain thoroughly." "Rice Noodles" "250g"
      , Step 2 "Make Pad Thai Sauce" "Mix tamarind paste with fish sauce and a tablespoon of sugar until smooth - this is the soul of Pad Thai." "Tamarind Paste" "3 tbsp"
      , Step 3 "Cook Shrimp" "Heat oil in a wok over high heat. Sear shrimp for 90 seconds per side until pink and slightly charred. Remove." "Shrimp" "200g"
      , Step 4 "Scramble Eggs" "In the same wok, crack eggs and scramble quickly for 30 seconds. Keep them in large soft curds." "Eggs" "2"
      , Step 5 "Stir-Fry Noodles" "Add drained noodles and the Pad Thai sauce. Toss for 2-3 minutes until noodles absorb the sauce." "Fish Sauce" "2 tbsp"
      , Step 6 "Add Bean Sprouts" "Toss in bean sprouts and cook for just 30 seconds. They should stay crunchy and fresh with a slight wilt." "Bean Sprouts" "1 cup"
      , Step 7 "Return Shrimp" "Add the cooked shrimp back and toss everything together for 1 minute until heated through and well mixed." "Shrimp" "200g"
      , Step 8 "Garnish and Serve" "Plate the Pad Thai, top with crushed peanuts and a lime wedge on the side. Squeeze lime before eating." "Crushed Peanuts" "3 tbsp"
      ]

  , Dish "Tom Yum Soup" "Thai"
      "Spicy and sour Thai hot soup with shrimp, mushrooms, lemongrass, and galangal in a fragrant aromatic broth."
      "Medium" "30 minutes" 4
      "Add the lime juice at the very end off the heat - cooking it destroys the bright sour flavor that defines Tom Yum."
      [ Ingredient "Shrimp" "300g"
      , Ingredient "Lemongrass" "3 stalks"
      , Ingredient "Galangal" "5 slices"
      , Ingredient "Kaffir Lime Leaves" "4 leaves"
      , Ingredient "Fish Sauce" "2 tbsp"
      , Ingredient "Lime Juice" "3 tbsp"
      , Ingredient "Chili Paste" "2 tbsp"
      , Ingredient "Mushrooms" "1 cup"
      ]
      [ Step 1 "Prepare Aromatics" "Smash lemongrass stalks with the back of a knife and cut into 2-inch pieces to release the essential citrus oils." "Lemongrass" "3 stalks"
      , Step 2 "Boil Broth Base" "Bring 4 cups of water to a boil. Add lemongrass, galangal slices, and torn kaffir lime leaves. Simmer for 10 minutes." "Galangal" "5 slices"
      , Step 3 "Add Kaffir Lime Leaves" "Tear the kaffir lime leaves to release their aromatic oils and add to the simmering broth for fragrance." "Kaffir Lime Leaves" "4 leaves"
      , Step 4 "Add Chili Paste" "Stir in the chili paste for the characteristic spicy kick and reddish color. Adjust to your heat preference." "Chili Paste" "2 tbsp"
      , Step 5 "Cook Mushrooms" "Add sliced mushrooms and cook for 3 minutes until they soften and absorb the flavors of the aromatic broth." "Mushrooms" "1 cup"
      , Step 6 "Add Shrimp" "Add the shrimp and cook for 3-4 minutes until they turn pink and curl into a C shape, indicating they are done." "Shrimp" "300g"
      , Step 7 "Season with Fish Sauce" "Add fish sauce and stir gently. This provides the salty umami backbone that balances the spice and sour elements." "Fish Sauce" "2 tbsp"
      , Step 8 "Finish with Lime Juice" "Remove from heat and stir in fresh lime juice. Taste and adjust the balance of sour, salty, and spicy." "Lime Juice" "3 tbsp"
      ]

  , Dish "Sushi Roll" "Japanese"
      "Traditional Japanese maki roll with fresh salmon, creamy avocado, and crisp cucumber wrapped in seasoned rice and nori."
      "Hard" "50 minutes" 4
      "Keep your hands wet with vinegar water when handling sushi rice to prevent sticking and maintain clean rolls."
      [ Ingredient "Sushi Rice" "2 cups"
      , Ingredient "Nori Sheets" "4 sheets"
      , Ingredient "Fresh Salmon" "200g"
      , Ingredient "Cucumber" "1"
      , Ingredient "Avocado" "1"
      , Ingredient "Rice Vinegar" "3 tbsp"
      , Ingredient "Soy Sauce" "2 tbsp"
      , Ingredient "Wasabi" "1 tsp"
      ]
      [ Step 1 "Cook Sushi Rice" "Wash rice until water runs clear. Cook with equal parts water. Rice should be slightly sticky with each grain distinct." "Sushi Rice" "2 cups"
      , Step 2 "Season the Rice" "Transfer hot rice to a wide bowl. Drizzle rice vinegar while fanning and folding gently. Cool to room temperature." "Rice Vinegar" "3 tbsp"
      , Step 3 "Prepare Fillings" "Slice salmon into long thin strips. Cut cucumber and avocado into thin matchstick-sized pieces for even distribution." "Fresh Salmon" "200g"
      , Step 4 "Place Nori on Mat" "Lay a nori sheet shiny side down on a bamboo rolling mat. Rough side facing up helps the rice grip better." "Nori Sheets" "4 sheets"
      , Step 5 "Spread Rice" "With wet hands, spread a thin even layer of seasoned rice over the nori, leaving a 1-inch strip at the top edge." "Sushi Rice" "2 cups"
      , Step 6 "Add Fillings" "Lay salmon strips, cucumber, and avocado in a line across the center of the rice. Do not overfill." "Avocado" "1"
      , Step 7 "Roll Tightly" "Using the bamboo mat, roll from the bottom edge up with gentle even pressure. Moisten the bare nori strip to seal." "Cucumber" "1"
      , Step 8 "Slice and Serve" "With a sharp wet knife, cut the roll into 8 even pieces. Serve with soy sauce, pickled ginger, and wasabi." "Wasabi" "1 tsp"
      ]

  , Dish "Ramen" "Japanese"
      "Rich and savory Japanese noodle soup with slow-simmered pork broth, tender chashu pork, and a perfectly soft-boiled egg."
      "Hard" "60 minutes" 2
      "Warm your ramen bowls with boiling water before serving - cold bowls cool the broth too quickly."
      [ Ingredient "Ramen Noodles" "400g"
      , Ingredient "Pork Broth" "1.5 liters"
      , Ingredient "Chashu Pork" "200g"
      , Ingredient "Soy Sauce" "3 tbsp"
      , Ingredient "Soft Boiled Eggs" "2"
      , Ingredient "Nori Sheets" "4 sheets"
      , Ingredient "Green Onion" "2 stalks"
      , Ingredient "Sesame Oil" "1 tbsp"
      ]
      [ Step 1 "Prepare Broth" "Bring pork broth to a gentle simmer. Season with soy sauce and a drizzle of sesame oil for depth and aroma." "Pork Broth" "1.5 liters"
      , Step 2 "Season the Broth" "Add soy sauce to the simmering broth and taste. The broth should be rich, savory, and deeply satisfying." "Soy Sauce" "3 tbsp"
      , Step 3 "Prepare Soft Boiled Eggs" "Boil eggs for exactly 6.5 minutes, then plunge into ice water. Peel carefully for a jammy golden yolk." "Soft Boiled Eggs" "2"
      , Step 4 "Slice Chashu Pork" "Slice braised chashu pork into thin rounds about 0.5 cm thick. Sear briefly in a hot pan for caramelized edges." "Chashu Pork" "200g"
      , Step 5 "Cook Ramen Noodles" "Cook ramen noodles in a separate pot of boiling water for 2-3 minutes until al dente. They continue cooking in hot broth." "Ramen Noodles" "400g"
      , Step 6 "Assemble the Bowl" "Place drained noodles in a warmed bowl. Ladle the hot broth over the noodles until they are generously covered." "Pork Broth" "1.5 liters"
      , Step 7 "Add Toppings" "Arrange chashu pork slices, halved soft-boiled egg, and nori sheets on top of the noodles in an organized pattern." "Nori Sheets" "4 sheets"
      , Step 8 "Garnish and Serve" "Top with sliced green onions and a final drizzle of sesame oil. Serve immediately while piping hot." "Green Onion" "2 stalks"
      ]

  -- ============================================================
  -- AMERICAN CUISINE
  -- ============================================================
  , Dish "Classic Burger" "American"
      "Juicy hand-formed beef patty with melted cheddar, crisp lettuce, and fresh tomato on a toasted brioche bun."
      "Easy" "25 minutes" 4
      "Handle the ground beef as little as possible - overworking makes the patty tough instead of juicy."
      [ Ingredient "Ground Beef" "500g"
      , Ingredient "Burger Buns" "4"
      , Ingredient "Cheddar Cheese" "4 slices"
      , Ingredient "Lettuce" "4 leaves"
      , Ingredient "Tomato" "1 large"
      , Ingredient "Onion" "1 medium"
      , Ingredient "Pickles" "8 slices"
      , Ingredient "Salt" "1 tsp"
      ]
      [ Step 1 "Form Patties" "Divide ground beef into 4 portions. Gently form into patties slightly wider than the buns with a thumbprint in the center." "Ground Beef" "500g"
      , Step 2 "Season Generously" "Season both sides of each patty with salt and pepper just before cooking. Do not mix seasoning into the meat." "Salt" "1 tsp"
      , Step 3 "Heat the Grill" "Preheat a cast iron skillet or grill to high heat. A screaming hot surface is essential for a flavorful crust." "" ""
      , Step 4 "Cook Patties" "Place patties on the hot surface and cook for 4 minutes on the first side without pressing down. Flip once only." "Ground Beef" "500g"
      , Step 5 "Add Cheese" "Place a slice of cheddar on each patty during the last minute of cooking. Cover briefly to melt perfectly." "Cheddar Cheese" "4 slices"
      , Step 6 "Toast the Buns" "Split burger buns and toast them cut-side down for 1-2 minutes until golden brown and slightly crispy." "Burger Buns" "4"
      , Step 7 "Slice Fresh Toppings" "Slice tomato into thick rounds and onion into thin rings. Prepare lettuce leaves and pickle slices for assembly." "Tomato" "1 large"
      , Step 8 "Assemble Burger" "Place lettuce on bottom bun, then patty with cheese, tomato, onion, and pickles. Crown with top bun and serve." "Pickles" "8 slices"
      ]

  , Dish "Fluffy Pancakes" "American"
      "Light and airy American-style buttermilk pancakes stacked high with butter pats and drizzled with warm maple syrup."
      "Easy" "20 minutes" 4
      "Do not overmix the batter - lumps are perfectly fine. Overmixing develops gluten and makes pancakes tough and flat."
      [ Ingredient "All-Purpose Flour" "1.5 cups"
      , Ingredient "Milk" "1.25 cups"
      , Ingredient "Egg" "1"
      , Ingredient "Sugar" "3 tbsp"
      , Ingredient "Baking Powder" "2 tsp"
      , Ingredient "Butter" "2 tbsp"
      , Ingredient "Vanilla Extract" "1 tsp"
      , Ingredient "Maple Syrup" "4 tbsp"
      ]
      [ Step 1 "Mix Dry Ingredients" "In a large bowl, whisk together flour, sugar, and baking powder until evenly combined. Create a well in the center." "All-Purpose Flour" "1.5 cups"
      , Step 2 "Combine Wet Ingredients" "In a separate bowl, whisk milk, egg, melted butter, and vanilla extract until smooth and well blended." "Milk" "1.25 cups"
      , Step 3 "Make the Batter" "Pour wet ingredients into the dry ingredients well. Stir gently - stop when just combined with some lumps remaining." "Egg" "1"
      , Step 4 "Rest the Batter" "Let the batter rest for 5 minutes to allow baking powder to activate and create air bubbles for extra fluffiness." "Baking Powder" "2 tsp"
      , Step 5 "Heat the Griddle" "Heat a non-stick pan over medium-low heat. Add a small amount of butter and swirl to coat the surface." "Butter" "2 tbsp"
      , Step 6 "Pour and Cook" "Pour one-quarter cup batter per pancake. Cook until bubbles appear on the surface and edges look set, about 2-3 minutes." "Sugar" "3 tbsp"
      , Step 7 "Flip Once" "Flip the pancake with a quick confident motion. Cook for 1-2 more minutes until golden brown on both sides." "Vanilla Extract" "1 tsp"
      , Step 8 "Stack and Serve" "Stack pancakes high on warmed plates, top with a pat of butter, and drizzle generously with warm maple syrup." "Maple Syrup" "4 tbsp"
      ]

  , Dish "Caesar Salad" "American"
      "Crisp romaine lettuce tossed in a creamy homemade Caesar dressing with crunchy croutons and shaved Parmesan."
      "Easy" "15 minutes" 4
      "Make the dressing from scratch - the raw egg yolk emulsifies everything into a rich creamy coating that clings to every leaf."
      [ Ingredient "Romaine Lettuce" "1 head"
      , Ingredient "Parmesan Cheese" "50g"
      , Ingredient "Croutons" "1 cup"
      , Ingredient "Anchovy Paste" "1 tsp"
      , Ingredient "Lemon Juice" "2 tbsp"
      , Ingredient "Olive Oil" "3 tbsp"
      , Ingredient "Garlic" "2 cloves"
      , Ingredient "Egg Yolk" "1"
      ]
      [ Step 1 "Prepare Lettuce" "Wash and dry romaine lettuce thoroughly. Tear into bite-sized pieces and chill in the fridge for crispness." "Romaine Lettuce" "1 head"
      , Step 2 "Make Dressing Base" "In a bowl, mash garlic into anchovy paste with a fork to form a smooth fragrant base for the dressing." "Anchovy Paste" "1 tsp"
      , Step 3 "Add Egg Yolk" "Add egg yolk and whisk vigorously. It acts as an emulsifier that holds the dressing together in a creamy consistency." "Egg Yolk" "1"
      , Step 4 "Drizzle in Olive Oil" "While whisking constantly, add olive oil in a thin steady stream. The dressing should emulsify into a thick texture." "Olive Oil" "3 tbsp"
      , Step 5 "Add Lemon Juice" "Squeeze in fresh lemon juice and whisk to combine. The acid brightens the rich dressing with a tangy counterpoint." "Lemon Juice" "2 tbsp"
      , Step 6 "Toast Croutons" "Toss bread cubes in olive oil and toast in a 200C oven for 8 minutes until golden and crunchy." "Croutons" "1 cup"
      , Step 7 "Toss the Salad" "Place chilled lettuce in a large bowl, pour dressing over it, and toss until every leaf is evenly coated." "Garlic" "2 cloves"
      , Step 8 "Top with Parmesan" "Add croutons, shave Parmesan over the top with a vegetable peeler. Grind fresh black pepper and serve immediately." "Parmesan Cheese" "50g"
      ]

  , Dish "BBQ Ribs" "American"
      "Fall-off-the-bone tender pork ribs rubbed with a smoky spice blend, slow-cooked, and glazed with tangy BBQ sauce."
      "Hard" "180 minutes" 4
      "Low and slow is the mantra for ribs - rush the cooking and you get tough chewy meat instead of tender perfection."
      [ Ingredient "Pork Ribs" "1.5 kg"
      , Ingredient "BBQ Sauce" "1 cup"
      , Ingredient "Brown Sugar" "3 tbsp"
      , Ingredient "Paprika" "2 tbsp"
      , Ingredient "Garlic Powder" "1 tbsp"
      , Ingredient "Onion Powder" "1 tbsp"
      , Ingredient "Black Pepper" "1 tsp"
      , Ingredient "Apple Cider Vinegar" "2 tbsp"
      ]
      [ Step 1 "Prepare Dry Rub" "Combine brown sugar, paprika, garlic powder, onion powder, black pepper, and salt. Mix thoroughly for even flavor." "Brown Sugar" "3 tbsp"
      , Step 2 "Remove Membrane" "Flip ribs bone-side up and peel off the thin membrane. This allows the rub and smoke to penetrate the meat." "Pork Ribs" "1.5 kg"
      , Step 3 "Apply Dry Rub" "Pat ribs dry and coat generously with the spice rub on both sides. Press the rub firmly into the meat." "Paprika" "2 tbsp"
      , Step 4 "Wrap in Foil" "Sprinkle apple cider vinegar over the ribs and wrap tightly in aluminum foil for a steaming environment." "Apple Cider Vinegar" "2 tbsp"
      , Step 5 "Slow Cook" "Place wrapped ribs in the oven at 135C and cook for 2.5 hours. Low temperature slowly breaks down tough connective tissue." "Garlic Powder" "1 tbsp"
      , Step 6 "Unwrap and Glaze" "Remove foil and brush a generous layer of BBQ sauce over the ribs. The sauce needs direct heat to caramelize." "BBQ Sauce" "1 cup"
      , Step 7 "Broil for Char" "Place under broiler for 3-5 minutes, watching carefully, until BBQ sauce caramelizes and develops sticky charred spots." "Onion Powder" "1 tbsp"
      , Step 8 "Rest and Slice" "Let ribs rest for 10 minutes. Slice between the bones and brush with extra sauce. Serve with coleslaw." "Black Pepper" "1 tsp"
      ]

  , Dish "Mac and Cheese" "American"
      "Ultimate comfort food with elbow macaroni in a rich, creamy triple-cheese sauce topped with golden breadcrumbs."
      "Easy" "30 minutes" 6
      "Make a proper roux with butter and flour first - this is the foundation that gives the cheese sauce its smooth creamy body."
      [ Ingredient "Macaroni Pasta" "400g"
      , Ingredient "Cheddar Cheese" "200g"
      , Ingredient "Milk" "2 cups"
      , Ingredient "Butter" "3 tbsp"
      , Ingredient "All-Purpose Flour" "2 tbsp"
      , Ingredient "Salt" "1 tsp"
      , Ingredient "Mustard Powder" "0.5 tsp"
      , Ingredient "Breadcrumbs" "0.5 cup"
      ]
      [ Step 1 "Cook Macaroni" "Boil macaroni in salted water until al dente, about 1 minute less than package directions. Drain and set aside." "Macaroni Pasta" "400g"
      , Step 2 "Make Roux" "Melt butter in a saucepan over medium heat. Add flour and whisk constantly for 2 minutes to cook out raw flour taste." "Butter" "3 tbsp"
      , Step 3 "Add Milk Gradually" "Pour milk slowly into the roux while whisking vigorously. Continue whisking to prevent lumps from forming." "Milk" "2 cups"
      , Step 4 "Cook Until Thick" "Simmer the sauce for 5 minutes, stirring constantly, until it thickens enough to coat the back of a spoon." "Mustard Powder" "0.5 tsp"
      , Step 5 "Melt in Cheese" "Remove from heat and stir in grated cheddar until completely melted and smooth. Residual heat melts it perfectly." "Cheddar Cheese" "200g"
      , Step 6 "Combine Pasta and Sauce" "Add cooked macaroni to the cheese sauce and fold gently until every piece is evenly coated in cheesy goodness." "All-Purpose Flour" "2 tbsp"
      , Step 7 "Top with Breadcrumbs" "Transfer to a baking dish, scatter breadcrumbs evenly, and dot with small butter pieces for golden browning." "Breadcrumbs" "0.5 cup"
      , Step 8 "Bake Until Golden" "Bake at 190C for 15 minutes until the top is golden and crunchy and the sauce is bubbling around the edges." "Salt" "1 tsp"
      ]

  -- ============================================================
  -- EUROPEAN CUISINE
  -- ============================================================
  , Dish "French Omelette" "French"
      "Silky-smooth classic French omelette with a creamy custardy center, finished with fresh chives and melted Gruyere."
      "Medium" "10 minutes" 1
      "Use low heat and constant stirring - a French omelette should have zero browning and a perfectly pale golden exterior."
      [ Ingredient "Eggs" "3"
      , Ingredient "Unsalted Butter" "2 tbsp"
      , Ingredient "Fresh Chives" "1 tbsp"
      , Ingredient "Gruyere Cheese" "30g"
      , Ingredient "Salt" "0.5 tsp"
      , Ingredient "White Pepper" "0.25 tsp"
      ]
      [ Step 1 "Crack and Beat Eggs" "Crack eggs into a bowl and beat vigorously with a fork for 30 seconds until whites and yolks are completely blended." "Eggs" "3"
      , Step 2 "Season the Eggs" "Add salt and white pepper to the beaten eggs. White pepper is traditional as it does not leave visible specks." "Salt" "0.5 tsp"
      , Step 3 "Heat Butter" "Melt butter in an 8-inch non-stick pan over medium-low heat. Swirl to coat the entire surface evenly." "Unsalted Butter" "2 tbsp"
      , Step 4 "Pour Eggs" "When the butter foams but before it browns, pour in the beaten eggs. They should gently sizzle upon contact." "White Pepper" "0.25 tsp"
      , Step 5 "Stir Continuously" "Using a fork, stir the eggs constantly in small circular motions while shaking the pan. Small soft curds should form." "" ""
      , Step 6 "Add Cheese" "When eggs are mostly set but still creamy on top, sprinkle grated Gruyere cheese over one half of the omelette." "Gruyere Cheese" "30g"
      , Step 7 "Fold Omelette" "Tilt the pan and use a spatula to fold one half over the cheese. Gently slide onto a warmed plate." "Eggs" "3"
      , Step 8 "Garnish with Chives" "Snip fresh chives over the top and rub a small piece of cold butter over the surface for a beautiful glossy finish." "Fresh Chives" "1 tbsp"
      ]

  , Dish "Fish and Chips" "British"
      "Classic British pub fare with crispy beer-battered cod fillets and golden chunky chips served with malt vinegar."
      "Medium" "40 minutes" 4
      "The batter must be ice-cold when it hits hot oil - this temperature contrast creates an incredibly crispy light coating."
      [ Ingredient "Cod Fillets" "4 pieces"
      , Ingredient "All-Purpose Flour" "1.5 cups"
      , Ingredient "Beer" "200ml"
      , Ingredient "Potatoes" "4 large"
      , Ingredient "Baking Powder" "1 tsp"
      , Ingredient "Salt" "1 tsp"
      , Ingredient "Vegetable Oil" "1 liter"
      , Ingredient "Malt Vinegar" "2 tbsp"
      ]
      [ Step 1 "Prepare Chips" "Peel potatoes and cut into thick 1cm chips. Soak in cold water for 30 minutes to remove excess starch for crispier results." "Potatoes" "4 large"
      , Step 2 "Par-Cook Chips" "Drain and pat dry chips. Fry in oil at 130C for 6-8 minutes until cooked through but pale. Remove and drain." "Vegetable Oil" "1 liter"
      , Step 3 "Make Beer Batter" "Whisk flour, baking powder, a pinch of salt, and ice-cold beer until smooth with the consistency of heavy cream." "Beer" "200ml"
      , Step 4 "Season Fish" "Pat cod fillets completely dry. Season with salt and dust lightly with flour to help the batter stick." "Cod Fillets" "4 pieces"
      , Step 5 "Batter the Fish" "Dip each fillet into the cold beer batter, letting excess drip off before carefully lowering into hot oil." "All-Purpose Flour" "1.5 cups"
      , Step 6 "Fry Fish" "Deep fry battered fish at 180C for 6-7 minutes, turning once, until the batter is deep golden and crispy all over." "Baking Powder" "1 tsp"
      , Step 7 "Double-Fry Chips" "Increase oil temperature to 190C and fry the par-cooked chips a second time for 3-4 minutes until golden and crunchy." "Salt" "1 tsp"
      , Step 8 "Serve with Vinegar" "Drain everything on paper towels, season with salt. Serve on newspaper-lined plates with malt vinegar on the side." "Malt Vinegar" "2 tbsp"
      ]

  , Dish "Beef Stew" "European"
      "Hearty slow-cooked beef stew with tender chunks of meat, root vegetables, and a rich red wine gravy."
      "Medium" "120 minutes" 6
      "Sear the beef in small batches on very high heat - overcrowding the pan causes steaming instead of proper browning."
      [ Ingredient "Beef Chuck" "700g"
      , Ingredient "Potatoes" "3 medium"
      , Ingredient "Carrots" "2 large"
      , Ingredient "Onion" "1 large"
      , Ingredient "Beef Broth" "3 cups"
      , Ingredient "Tomato Paste" "2 tbsp"
      , Ingredient "Red Wine" "1 cup"
      , Ingredient "Fresh Thyme" "2 sprigs"
      ]
      [ Step 1 "Cut and Dry Beef" "Cut beef chuck into 2-inch cubes. Pat completely dry - wet meat steams instead of developing a flavorful crust." "Beef Chuck" "700g"
      , Step 2 "Sear the Beef" "Heat oil in a Dutch oven over high heat. Sear beef in batches for 3 minutes per side until deep brown. Remove." "Beef Chuck" "700g"
      , Step 3 "Cook Aromatics" "Reduce heat, add diced onion. Cook for 5 minutes until softened and starting to caramelize in the beef fond." "Onion" "1 large"
      , Step 4 "Add Tomato Paste" "Stir in tomato paste and cook for 2 minutes, stirring constantly to concentrate the tomato flavor and add richness." "Tomato Paste" "2 tbsp"
      , Step 5 "Deglaze with Wine" "Pour in red wine and scrape up all the browned bits from the bottom. These fond bits are concentrated flavor." "Red Wine" "1 cup"
      , Step 6 "Add Broth and Simmer" "Return beef to pot, add beef broth and thyme sprigs. Bring to a boil, then cover and simmer low for 1.5 hours." "Beef Broth" "3 cups"
      , Step 7 "Add Root Vegetables" "Add cubed potatoes and thick carrot rounds. Continue simmering for 30 more minutes until vegetables are fork-tender." "Carrots" "2 large"
      , Step 8 "Season and Serve" "Remove thyme sprigs, taste and adjust seasoning. The gravy should be thick and rich. Serve in deep bowls with crusty bread." "Potatoes" "3 medium"
      ]

  , Dish "Creme Brulee" "French"
      "Elegant French custard dessert with a rich vanilla bean custard base and a perfectly caramelized sugar crust on top."
      "Hard" "60 minutes" 4
      "The custard cups must sit in a hot water bath during baking - this gentle indirect heat prevents curdling."
      [ Ingredient "Heavy Cream" "2 cups"
      , Ingredient "Egg Yolks" "5"
      , Ingredient "Sugar" "0.5 cup"
      , Ingredient "Vanilla Bean" "1 pod"
      , Ingredient "Salt" "1 pinch"
      ]
      [ Step 1 "Infuse Cream" "Split vanilla bean lengthwise and scrape out seeds. Heat cream with vanilla seeds and pod until it just steams. Do not boil." "Heavy Cream" "2 cups"
      , Step 2 "Whisk Egg Yolks" "In a bowl, whisk egg yolks with half the sugar and a pinch of salt until pale and slightly thickened, about 2 minutes." "Egg Yolks" "5"
      , Step 3 "Temper the Eggs" "Slowly pour the hot cream into the egg mixture in a thin stream while whisking constantly to prevent scrambling." "Vanilla Bean" "1 pod"
      , Step 4 "Strain the Custard" "Strain the custard through a fine-mesh sieve into a clean jug for a silky texture free of any bits." "" ""
      , Step 5 "Fill Ramekins" "Divide the custard evenly among 4 ramekins. Place in a deep baking dish and skim off any surface bubbles." "Salt" "1 pinch"
      , Step 6 "Bake in Water Bath" "Pour hot water into the baking dish until halfway up the ramekins. Bake at 150C for 40-45 minutes until just set but jiggly." "Heavy Cream" "2 cups"
      , Step 7 "Chill Thoroughly" "Remove ramekins from water bath and cool to room temperature. Refrigerate for at least 4 hours until firmly set." "" ""
      , Step 8 "Caramelize Sugar" "Sprinkle remaining sugar evenly over each custard. Use a kitchen torch to melt and caramelize into a crisp golden shell." "Sugar" "0.5 cup"
      ]

  , Dish "Grilled Salmon" "Mediterranean"
      "Perfectly seared salmon fillet with crispy skin, served with a bright lemon-dill butter sauce and fresh herbs."
      "Medium" "20 minutes" 4
      "Start skin-side down on a cold pan that you heat up gradually for the crispiest skin possible."
      [ Ingredient "Salmon Fillets" "4 pieces"
      , Ingredient "Olive Oil" "3 tbsp"
      , Ingredient "Lemon" "1"
      , Ingredient "Garlic" "3 cloves"
      , Ingredient "Fresh Dill" "2 tbsp"
      , Ingredient "Salt" "1 tsp"
      , Ingredient "Black Pepper" "0.5 tsp"
      , Ingredient "Butter" "2 tbsp"
      ]
      [ Step 1 "Prepare Salmon" "Pat salmon fillets completely dry. Score the skin lightly with a sharp knife to prevent curling during cooking." "Salmon Fillets" "4 pieces"
      , Step 2 "Season the Fish" "Rub salmon with olive oil, then season both sides with salt and black pepper. Let it rest for 10 minutes." "Salt" "1 tsp"
      , Step 3 "Heat the Pan" "Place a stainless steel or cast iron pan on medium-high heat. Add olive oil and heat until it begins to shimmer." "Olive Oil" "3 tbsp"
      , Step 4 "Sear Skin Side" "Place salmon skin-side down and press gently for 10 seconds for full contact. Cook for 4 minutes without moving." "Salmon Fillets" "4 pieces"
      , Step 5 "Flip and Finish" "Flip the salmon and cook for 2-3 more minutes for medium. Flesh should flake easily but still be slightly translucent in center." "Black Pepper" "0.5 tsp"
      , Step 6 "Add Garlic Butter" "Push salmon aside, add butter and sliced garlic. Once butter foams, tilt pan and baste salmon with garlic butter." "Butter" "2 tbsp"
      , Step 7 "Baste with Garlic" "Continue basting with garlic-infused butter for 1 minute. Garlic should be golden and fragrant, infusing the butter." "Garlic" "3 cloves"
      , Step 8 "Finish with Lemon and Dill" "Squeeze fresh lemon juice over the salmon and scatter fresh dill on top. Serve with pan juices spooned over." "Fresh Dill" "2 tbsp"
      ]

  -- ============================================================
  -- MEXICAN AND MIDDLE EASTERN CUISINE
  -- ============================================================
  , Dish "Tacos" "Mexican"
      "Authentic Mexican tacos with seasoned ground beef, fresh salsa, shredded cheese, and cool sour cream on warm corn tortillas."
      "Easy" "25 minutes" 4
      "Warm your tortillas directly over a gas flame or hot dry skillet for 30 seconds per side for the best pliable texture."
      [ Ingredient "Corn Tortillas" "8"
      , Ingredient "Ground Beef" "400g"
      , Ingredient "Onion" "1"
      , Ingredient "Tomato" "2"
      , Ingredient "Lettuce" "1 cup"
      , Ingredient "Cheddar Cheese" "100g"
      , Ingredient "Sour Cream" "0.5 cup"
      , Ingredient "Taco Seasoning" "2 tbsp"
      ]
      [ Step 1 "Cook the Onion" "Heat oil in a skillet over medium heat. Add finely diced onion and cook for 3 minutes until soft and translucent." "Onion" "1"
      , Step 2 "Brown the Beef" "Add ground beef and break into small crumbles. Cook on high heat for 5-7 minutes until well browned with no pink remaining." "Ground Beef" "400g"
      , Step 3 "Season the Meat" "Sprinkle taco seasoning over the beef, add a splash of water, and stir. Simmer 5 minutes until sauce thickens." "Taco Seasoning" "2 tbsp"
      , Step 4 "Prepare Fresh Salsa" "Dice tomatoes finely, removing the seeds. Fresh raw tomato adds a juicy bright contrast to the rich spiced beef." "Tomato" "2"
      , Step 5 "Shred Toppings" "Shred lettuce into thin ribbons and grate the cheddar cheese. Fresh crispy toppings are essential for texture contrast." "Lettuce" "1 cup"
      , Step 6 "Warm Tortillas" "Heat corn tortillas in a dry hot skillet for 30 seconds each side until pliable with slight char marks." "Corn Tortillas" "8"
      , Step 7 "Assemble Tacos" "Spoon seasoned beef into each warm tortilla, top with diced tomato, shredded lettuce, and grated cheese." "Cheddar Cheese" "100g"
      , Step 8 "Add Sour Cream and Serve" "Dollop sour cream on each taco. Serve with lime wedges and hot sauce on the side for extra kick." "Sour Cream" "0.5 cup"
      ]

  , Dish "Falafel Wrap" "Middle Eastern"
      "Crispy golden chickpea fritters wrapped in warm pita bread with fresh vegetables, pickles, and creamy tahini sauce."
      "Medium" "40 minutes" 4
      "Use dried chickpeas soaked overnight, never canned - canned chickpeas have too much moisture and the falafel will fall apart."
      [ Ingredient "Chickpeas" "2 cups"
      , Ingredient "Fresh Parsley" "1 cup"
      , Ingredient "Onion" "1"
      , Ingredient "Garlic" "4 cloves"
      , Ingredient "Ground Cumin" "1 tsp"
      , Ingredient "Pita Bread" "4"
      , Ingredient "Tahini Sauce" "0.5 cup"
      , Ingredient "Vegetable Oil" "2 cups"
      ]
      [ Step 1 "Process Chickpeas" "Drain soaked chickpeas and pulse in a food processor until coarsely ground like coarse sand. Do not puree." "Chickpeas" "2 cups"
      , Step 2 "Add Herbs and Aromatics" "Add parsley, onion, and garlic to the processor. Pulse until mixed but still textured with visible green flecks." "Fresh Parsley" "1 cup"
      , Step 3 "Season and Rest" "Add ground cumin, salt, and pepper. Let the mixture rest in the fridge for 30 minutes to firm up for easier shaping." "Ground Cumin" "1 tsp"
      , Step 4 "Shape Falafel Balls" "Scoop tablespoons of mixture and form into small patties or balls. They should hold shape when gently squeezed. Make about 16." "Garlic" "4 cloves"
      , Step 5 "Heat Frying Oil" "Heat vegetable oil in a deep pan to 180C. Test with a small piece - it should sizzle immediately and rise to surface." "Vegetable Oil" "2 cups"
      , Step 6 "Fry Until Golden" "Carefully lower falafel into hot oil and fry for 3-4 minutes, turning once, until deep golden brown and crispy." "Onion" "1"
      , Step 7 "Warm Pita Bread" "Warm pita bread in a dry pan or oven for 1 minute until soft and pliable. Cut open to create a pocket." "Pita Bread" "4"
      , Step 8 "Assemble the Wrap" "Fill pita with 3-4 falafel, add sliced vegetables, and drizzle generously with tahini sauce. Wrap tightly and serve." "Tahini Sauce" "0.5 cup"
      ]

  , Dish "Chicken Shawarma" "Middle Eastern"
      "Tender marinated chicken thighs with warm Middle Eastern spices, grilled and served in warm pita with garlic sauce."
      "Medium" "40 minutes" 4
      "Chicken thighs are essential - they stay juicy and tender even at high heat, unlike breast meat which dries out."
      [ Ingredient "Chicken Thighs" "600g"
      , Ingredient "Yogurt" "0.5 cup"
      , Ingredient "Shawarma Spice Mix" "2 tbsp"
      , Ingredient "Garlic" "4 cloves"
      , Ingredient "Lemon Juice" "3 tbsp"
      , Ingredient "Olive Oil" "2 tbsp"
      , Ingredient "Pita Bread" "4"
      , Ingredient "Garlic Sauce" "0.5 cup"
      ]
      [ Step 1 "Make Marinade" "Mix yogurt, shawarma spice mix, minced garlic, lemon juice, and olive oil into a smooth fragrant paste." "Yogurt" "0.5 cup"
      , Step 2 "Marinate Chicken" "Coat chicken thighs thoroughly in the marinade. Refrigerate for at least 2 hours, or overnight for maximum flavor." "Chicken Thighs" "600g"
      , Step 3 "Add Spice Mix" "Ensure the shawarma spice mix is evenly distributed. The blend of cumin, coriander, and paprika is essential." "Shawarma Spice Mix" "2 tbsp"
      , Step 4 "Heat Grill or Pan" "Preheat a grill pan or outdoor grill to high heat. Brush with olive oil to prevent sticking." "Olive Oil" "2 tbsp"
      , Step 5 "Grill the Chicken" "Place marinated chicken on the hot grill. Cook for 6-7 minutes per side until charred and cooked through." "Garlic" "4 cloves"
      , Step 6 "Rest and Slice" "Let chicken rest for 5 minutes for juices to redistribute. Slice against the grain into thin strips for tender bites." "Lemon Juice" "3 tbsp"
      , Step 7 "Warm Pita Bread" "Heat pita bread on the grill for 30 seconds per side until warm, soft, and pliable with slight grill marks." "Pita Bread" "4"
      , Step 8 "Assemble and Serve" "Fill warm pita with sliced shawarma chicken, drizzle with garlic sauce, and add pickled vegetables and fresh herbs." "Garlic Sauce" "0.5 cup"
      ]

  , Dish "Guacamole" "Mexican"
      "Fresh and vibrant Mexican avocado dip with lime, cilantro, and just the right amount of heat from jalapeno peppers."
      "Easy" "10 minutes" 4
      "Use perfectly ripe avocados that yield to gentle pressure - too firm and it lacks creaminess, too soft and it tastes off."
      [ Ingredient "Avocado" "3"
      , Ingredient "Lime" "2"
      , Ingredient "Red Onion" "0.5"
      , Ingredient "Tomato" "1"
      , Ingredient "Jalapeno" "1"
      , Ingredient "Fresh Cilantro" "3 tbsp"
      , Ingredient "Salt" "0.5 tsp"
      , Ingredient "Garlic" "1 clove"
      ]
      [ Step 1 "Cut Avocados" "Halve avocados and remove pits. Score the flesh in a crosshatch pattern while still in the skin, then scoop into a bowl." "Avocado" "3"
      , Step 2 "Mash to Desired Texture" "Using a fork, mash the avocado to your preferred consistency. Leave chunky for texture or mash smooth for creamier dip." "Avocado" "3"
      , Step 3 "Add Lime Juice" "Squeeze fresh lime juice immediately over the mashed avocado. This adds bright flavor and helps prevent browning." "Lime" "2"
      , Step 4 "Dice Onion and Tomato" "Finely dice the red onion and tomato, removing tomato seeds to prevent the guacamole from becoming watery." "Red Onion" "0.5"
      , Step 5 "Prepare Jalapeno" "Remove seeds and membrane for mild heat, or keep some seeds for extra spice. Mince finely." "Jalapeno" "1"
      , Step 6 "Mince Garlic" "Mince the garlic clove very finely or use a microplane. Raw garlic adds a pleasant sharp bite to the dip." "Garlic" "1 clove"
      , Step 7 "Combine Everything" "Fold diced onion, tomato, jalapeno, garlic, and chopped cilantro into the avocado. Season with salt and mix gently." "Fresh Cilantro" "3 tbsp"
      , Step 8 "Taste and Adjust" "Taste and adjust salt, lime juice, and heat to your preference. Serve immediately with tortilla chips." "Salt" "0.5 tsp"
      ]

  , Dish "Chocolate Lava Cake" "French"
      "Decadent individual chocolate cakes with a rich molten center that flows out when you cut into the warm cake."
      "Hard" "25 minutes" 4
      "The timing is everything - overbake by even one minute and you lose the magical molten center."
      [ Ingredient "Dark Chocolate" "200g"
      , Ingredient "Unsalted Butter" "100g"
      , Ingredient "Eggs" "2"
      , Ingredient "Egg Yolks" "2"
      , Ingredient "Sugar" "50g"
      , Ingredient "All-Purpose Flour" "2 tbsp"
      , Ingredient "Cocoa Powder" "1 tbsp"
      , Ingredient "Vanilla Extract" "1 tsp"
      ]
      [ Step 1 "Melt Chocolate and Butter" "Chop dark chocolate finely. Melt with butter in a heatproof bowl over simmering water, stirring until smooth and glossy." "Dark Chocolate" "200g"
      , Step 2 "Whisk Eggs and Sugar" "Whisk together eggs, egg yolks, and sugar vigorously for 3 minutes until pale, thick, and doubled in volume." "Eggs" "2"
      , Step 3 "Add Vanilla" "Stir vanilla extract into the egg mixture. Good quality vanilla adds warm aromatic depth to the chocolate." "Vanilla Extract" "1 tsp"
      , Step 4 "Fold Chocolate into Eggs" "Gently fold the melted chocolate mixture into the beaten eggs using a spatula. Maintain the airy volume carefully." "Unsalted Butter" "100g"
      , Step 5 "Add Flour and Cocoa" "Sift flour and cocoa powder over batter and fold in gently until just combined. Do not overmix or cakes will be dense." "All-Purpose Flour" "2 tbsp"
      , Step 6 "Prepare Ramekins" "Brush 4 ramekins with melted butter and dust with cocoa powder. This ensures the cakes release cleanly after baking." "Cocoa Powder" "1 tbsp"
      , Step 7 "Fill and Bake" "Divide batter among ramekins. Bake at 220C for exactly 12 minutes - edges should be set but center still jiggles." "Sugar" "50g"
      , Step 8 "Unmold and Serve" "Let rest 1 minute, run a knife around the edge, invert onto plates. The molten center should flow when cut open." "Egg Yolks" "2"
      ]
  ]