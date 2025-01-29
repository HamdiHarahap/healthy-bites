class Resep {
  String name;
  String ingredients;
  String direction;
  String image;

  Resep({
    required this.name,
    required this.ingredients,
    required this.direction,
    required this.image,
  });
}

var ResepLists = [
  Resep(
    name: 'Grilled Chicken Salad',
    ingredients:
        'Use 100 grams of skinless chicken breast, two cups of chopped romaine lettuce, five cherry tomatoes cut in half, and half of a cucumber sliced thinly. For seasoning, prepare one tablespoon of olive oil, half a teaspoon of black pepper and salt, and one tablespoon of balsamic dressing.',
    direction:
        'Season the chicken breast with salt, black pepper, and olive oil, then grill it until fully cooked (about 6-7 minutes per side). Meanwhile, combine the lettuce, cherry tomatoes, and cucumber in a large bowl. Slice the grilled chicken and place it on top of the salad. Drizzle with balsamic dressing and serve fresh.',
    image: 'images/chicken-salad.jpg',
  ),
  Resep(
    name: 'Avocado Toast with Egg',
    ingredients:
        'Prepare one slice of toasted whole wheat bread, half of a mashed avocado, and one egg, either boiled or fried. Season with half a teaspoon of black pepper and salt, and optionally, sprinkle half a teaspoon of sesame seeds on top.',
    direction:
        'Toast the whole wheat bread until crispy, then spread the mashed avocado over it. Add the boiled or fried egg on top. Sprinkle with salt, black pepper, and sesame seeds. Serve immediately for a healthy and satisfying breakfast.',
    image: 'images/avocado-toast.jpg',
  ),
  Resep(
    name: 'Matcha Latte',
    ingredients:
        'To make this drink, you will need one teaspoon of matcha powder, 200 ml of almond milk or regular milk for a creamy base, one tablespoon of honey or maple syrup for sweetness, and a handful of ice cubes to keep it cool.',
    direction:
        'Start by dissolving the matcha powder in a little warm water, stirring until smooth. Then, add the milk and honey, and mix well until frothy. Serve over ice for a refreshing and energizing drink!',
    image: 'images/matcha.jpg',
  ),
  Resep(
    name: 'Creamy Pumkin Soup',
    ingredients:
        'This delicious creamy pumpkin soup is made with fresh pumpkin, onion, garlic, vegetable broth, and a touch of cream. Its seasoned with salt, pepper, and a hint of nutmeg for extra warmth.',
    direction:
        'Start by heating a pot over medium heat and sautéing the chopped onion and garlic until fragrant. Once softened, add the diced pumpkin and pour in the vegetable broth. Bring the mixture to a boil, then reduce the heat and let it simmer until the pumpkin becomes tender. Once fully cooked, use a blender to puree the soup until smooth. Stir in the cream, then season with salt, pepper, and a pinch of nutmeg for extra depth of flavor. Serve the soup warm, garnished with freshly chopped parsley and crispy croutons.',
    image: 'images/pumpkin-soup.jpg',
  ),
];
