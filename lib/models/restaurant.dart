import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classico CheeseBurgers",
      description:
          "A Tasty cheese burger made from the remotada of a mixtuer of cow and chicken leaving its audience woith an unforgettable taste",
      imagePath: "assets/images/burger1.jpeg",
      price: 9.09,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: 'fried Wings', price: 568),
      ],
    ),
    Food(
      name: "Classico CheeseBurgers",
      description:
          "A Tasty cheese burger made from the remotada of a mixtuer of cow and chicken leaving its audience woith an unforgettable taste",
      imagePath: "assets/images/burger2.jpeg",
      price: 9.09,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: 'fried Wings', price: 568),
      ],
    ),
    Food(
      name: "Classico CheeseBurgers",
      description:
          "A Tasty cheese burger made from the remotada of a mixtuer of cow and chicken leaving its audience woith an unforgettable taste",
      imagePath: "assets/images/burger3.jpeg",
      price: 9.09,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: 'fried Wings', price: 568),
      ],
    ),
    Food(
      name: "Classico CheeseBurgers",
      description:
          "A Tasty cheese burger made from the remotada of a mixtuer of cow and chicken leaving its audience woith an unforgettable taste",
      imagePath: "assets/images/burger4.jpeg",
      price: 9.09,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: 'fried Wings', price: 568),
      ],
    ),

    //salads
    Food(
      name: "Caesar Salad",
      description:
          "Classic Caesar salad with romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "assets/images/caesar_salad.jpeg",
      price: 6.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addons(name: 'Grilled Chicken', price: 2.50),
        Addons(name: 'Shrimp', price: 3.00),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "Fresh Greek salad with lettuce, tomatoes, cucumbers, red onions, feta cheese, olives, and Greek dressing.",
      imagePath: "assets/images/greek_salad.jpeg",
      price: 7.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addons(name: 'Shrimp', price: 3.00),
      ],
    ),
    Food(
      name: "Cobb Salad",
      description:
          "Traditional Cobb salad with mixed greens, grilled chicken, bacon, hard-boiled eggs, tomatoes, avocado, and blue cheese dressing.",
      imagePath: "assets/images/cobb_salad.jpeg",
      price: 8.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addons(name: 'Shrimp', price: 3.00),
      ],
    ),
    Food(
      name: "Caprese Salad",
      description:
          "Classic Caprese salad with fresh mozzarella, tomatoes, basil, olive oil, balsamic glaze, and a sprinkle of salt.",
      imagePath: "assets/images/caprese_salad.jpeg",
      price: 6.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addons(name: 'Prosciutto', price: 2.00),
      ],
    ),

//sides
    Food(
      name: "French Fries",
      description: "Crispy golden French fries served with ketchup.",
      imagePath: "assets/images/french_fries.jpeg",
      price: 3.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addons(name: 'Shrimp', price: 3.00),
      ],
    ),
    Food(
      name: "Onion Rings",
      description:
          "Crunchy onion rings coated in seasoned batter, served with dipping sauce.",
      imagePath: "assets/images/onion_rings.jpeg",
      price: 4.29,
      category: FoodCategory.sides,
      availableAddons: [],
    ),
    Food(
      name: "Garlic Bread",
      description:
          "Toasted slices of bread brushed with garlic butter and sprinkled with parsley.",
      imagePath: "assets/images/garlic_bread.jpeg",
      price: 2.99,
      category: FoodCategory.sides,
      availableAddons: [],
    ),
    Food(
      name: "Coleslaw",
      description:
          "Creamy coleslaw made with shredded cabbage, carrots, and a tangy dressing.",
      imagePath: "assets/images/coleslaw.jpeg",
      price: 2.49,
      category: FoodCategory.sides,
      availableAddons: [],
    ),
    Food(
      name: "New York Cheesecake",
      description:
          "Creamy and rich New York-style cheesecake with a graham cracker crust.",
      imagePath: "assets/images/cheesecake.jpeg",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [],
    ),

//desserts
    Food(
      name: "Tiramisu",
      description:
          "Classic Italian dessert made with layers of coffee-soaked ladyfingers, mascarpone cheese, and cocoa powder.",
      imagePath: "assets/images/tiramisu.jpeg",
      price: 6.49,
      category: FoodCategory.desserts,
      availableAddons: [],
    ),
    Food(
      name: "Chocolate Brownie",
      description:
          "Decadent chocolate brownie served warm with a scoop of vanilla ice cream and chocolate sauce.",
      imagePath: "assets/images/chocolate_brownie.jpeg",
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [],
    ),
    Food(
      name: "Apple Pie",
      description:
          "Homemade apple pie with tender spiced apples baked in a flaky pastry crust.",
      imagePath: "assets/images/apple_pie.jpeg",
      price: 6.99,
      category: FoodCategory.desserts,
      availableAddons: [],
    ),
    Food(
      name: "Classic Mojito",
      description:
          "Refreshing cocktail made with rum, fresh mint, lime juice, sugar, and soda water.",
      imagePath: "assets/images/mojito.jpeg",
      price: 7.99,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
    Food(
      name: "Iced Tea",
      description:
          "Chilled black tea served over ice, sweetened to perfection.",
      imagePath: "assets/images/iced_tea.jpeg",
      price: 2.49,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
    Food(
      name: "Strawberry Lemonade",
      description:
          "Refreshing lemonade infused with ripe strawberries and served over ice.",
      imagePath: "assets/images/strawberry_lemonade.jpeg",
      price: 3.99,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
    Food(
      name: "Espresso",
      description:
          "Intense and aromatic shot of espresso, perfect for a quick pick-me-up.",
      imagePath: "assets/images/espresso.jpeg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),

    //salads

    //sides

    //deserts

    //drinks
  ];

  /*
Getters
  
  */
  List<Food> get menu => _menu;

  /*
  Operations
  */
  //add to cart

  //remove from cart

  //get total price of cart

  //get total number of items in cart

  //clear cart

  /*

  HELPERS


  */

  //Generate a Receipt

  //format double value into money

  //format list of addons into a string summary
}
