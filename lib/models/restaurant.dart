import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/cart.dart';
import 'package:food_delivery/models/food.dart';

class Restaurant with ChangeNotifier {
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Beef Burger",
      description:
          "Juicy beef patty topped with fresh lettuce, tomatoes, onions, pickles, and ketchup, served on a toasted sesame seed bun.",
      imagePath: "assets/images/burger1.jpeg",
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: 'Fried Wings', price: 568),
        Addons(name: 'Extra Cheese', price: 200),
        Addons(name: 'Bacon Strips', price: 300),
      ],
    ),
    Food(
      name: "Spicy Chicken Burger",
      description:
          "Crispy chicken fillet seasoned with spicy marinade, topped with lettuce, tomato, jalapenos, and chipotle mayo, served on a brioche bun.",
      imagePath: "assets/images/burger2.jpeg",
      price: 7.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: 'Onion Rings', price: 3.00),
        Addons(name: 'Extra Spicy Sauce', price: 1.50),
        Addons(name: 'Avocado', price: 2.00),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description:
          "Delicious vegetarian burger made with a blend of black beans, quinoa, and spices, topped with lettuce, tomato, onion, and tangy BBQ sauce, served on a whole grain bun.",
      imagePath: "assets/images/burger3.jpeg",
      price: 6.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: 'Sweet Potato Fries', price: 3.00),
        Addons(name: 'Guacamole', price: 2.00),
        Addons(name: 'Grilled Mushrooms', price: 1.50),
      ],
    ),
    Food(
      name: "Double Bacon Cheeseburger",
      description:
          "Double beef patties topped with crispy bacon strips, melted cheddar cheese, lettuce, tomato, and smoky BBQ sauce, served on a toasted brioche bun.",
      imagePath: "assets/images/burger4.jpeg",
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: 'Onion Rings', price: 3.00),
        Addons(name: 'Extra Bacon', price: 2.00),
        Addons(name: 'Garlic Aioli', price: 1.50),
      ],
    ),

    //salads
    Food(
      name: "Caesar Salad",
      description:
          "Classic Caesar salad with romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "assets/images/salad1.jpeg",
      price: 6.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addons(name: 'Grilled Chicken', price: 2.50),
        Addons(name: 'Shrimp', price: 3.00),
        Addons(name: 'Avocado', price: 1.50),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "Fresh Greek salad with lettuce, tomatoes, cucumbers, red onions, feta cheese, olives, and Greek dressing.",
      imagePath: "assets/images/salad2.jpeg",
      price: 7.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addons(name: 'Grilled Chicken', price: 2.50),
        Addons(name: 'Shrimp', price: 3.00),
        Addons(name: 'Avocado', price: 1.50),
      ],
    ),
    Food(
      name: "Cobb Salad",
      description:
          "Traditional Cobb salad with mixed greens, grilled chicken, bacon, hard-boiled eggs, tomatoes, avocado, and blue cheese dressing.",
      imagePath: "assets/images/salad3.jpeg",
      price: 8.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addons(name: 'Grilled Chicken', price: 2.50),
        Addons(name: 'Shrimp', price: 3.00),
        Addons(name: 'Avocado', price: 1.50),
      ],
    ),
    Food(
      name: "Caprese Salad",
      description:
          "Classic Caprese salad with fresh mozzarella, tomatoes, basil, olive oil, balsamic glaze, and a sprinkle of salt.",
      imagePath: "assets/images/salad4.jpeg",
      price: 6.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addons(name: 'Prosciutto', price: 2.00),
        Addons(name: 'Extra Mozzarella', price: 1.00),
        Addons(name: 'Olives', price: 1.50),
      ],
    ),

    // Sides
    Food(
      name: "French Fries",
      description: "Crispy golden French fries served with ketchup.",
      imagePath: "assets/images/side3.jpeg",
      price: 3.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addons(name: 'Shrimp', price: 3.00),
        Addons(name: 'Extra Salt', price: 0.50),
        Addons(name: 'Garlic Mayo', price: 1.00),
      ],
    ),

    Food(
      name: "Onion Rings",
      description:
          "Crunchy onion rings coated in seasoned batter, served with dipping sauce.",
      imagePath: "assets/images/side1.jpeg",
      price: 4.29,
      category: FoodCategory.sides,
      availableAddons: [
        Addons(name: 'Shrimp', price: 3.00),
        Addons(name: 'BBQ Sauce', price: 1.00),
        Addons(name: 'Ranch Dressing', price: 1.00),
      ],
    ),
    Food(
      name: "Garlic Bread",
      description:
          "Toasted slices of bread brushed with garlic butter and sprinkled with parsley.",
      imagePath: "assets/images/side2.jpeg",
      price: 2.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addons(name: 'Shrimp', price: 3.00),
        Addons(name: 'Parmesan Cheese', price: 0.50),
        Addons(name: 'Extra Garlic Butter', price: 0.50),
      ],
    ),
    Food(
      name: "Coleslaw",
      description:
          "Creamy coleslaw made with shredded cabbage, carrots, and a tangy dressing.",
      imagePath: "assets/images/side4.jpeg",
      price: 2.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addons(name: 'Shrimp', price: 3.00),
        Addons(name: 'Extra Dressing', price: 0.50),
        Addons(name: 'Red Cabbage', price: 1.00),
      ],
    ),
    //drinks
    Food(
      name: "Classic Mojito",
      description:
          "Refreshing cocktail made with rum, fresh mint, lime juice, sugar, and soda water.",
      imagePath: "assets/images/drink1.jpeg",
      price: 7.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addons(name: 'Lemon Wedge', price: 0.50),
        Addons(name: 'Mint Sprig', price: 0.50),
        Addons(name: 'Simple Syrup', price: 0.50),
      ],
    ),
    Food(
      name: "Iced Tea",
      description:
          "Chilled black tea served over ice, sweetened to perfection.",
      imagePath: "assets/images/drink2.jpeg",
      price: 2.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addons(name: 'Lemon Slice', price: 0.50),
        Addons(name: 'Sugar Syrup', price: 0.50),
        Addons(name: 'Mint Leaves', price: 0.50),
      ],
    ),
    Food(
      name: "Strawberry Lemonade",
      description:
          "Refreshing lemonade infused with ripe strawberries and served over ice.",
      imagePath: "assets/images/drink3.jpeg",
      price: 3.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addons(name: 'Strawberry Slice', price: 0.50),
        Addons(name: 'Lemon Zest', price: 0.50),
        Addons(name: 'Sparkling Water', price: 0.50),
      ],
    ),
    Food(
      name: "Espresso",
      description:
          "Intense and aromatic shot of espresso, perfect for a quick pick-me-up.",
      imagePath: "assets/images/drink1.jpeg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addons(name: 'Chocolate Powder', price: 0.50),
        Addons(name: 'Cinnamon Dust', price: 0.50),
        Addons(name: 'Vanilla Extract', price: 0.50),
      ],
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
  List<CartItem> get cart => _cart;

  /*
  Operations
  */

  //user cart
  List<CartItem> _cart = [];
  //add to cart
  void addToCart(Food food, List<Addons> selectedAddon) {
    //find if thers a cart with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the food is the same
      bool isSameFood = item.food == food;

      //check if the selected addons are the same
      bool sameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddon);

      return isSameFood && sameAddons;
    });

    //if cartItem is not null, increment the quantity
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      //if cartItem is null, add a new cartItem
      _cart.add(CartItem(food: food, selectedAddons: selectedAddon));
    }

    //   CartItem? cartItem = _cart.firstWhere(
    //       (item) =>
    //           item.food == food &&
    //           item.selectedAddons.length == selectedAddon.length &&
    //           item.selectedAddons.every((addon) => selectedAddon.contains(addon)),
    //       orElse: () => CartItem(food: food, selectedAddons: selectedAddon));

    //   if (cartItem.food == food) {
    //     cartItem.quantity++;
    //   } else {
    //     _cart.add(cartItem);
    //   }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
      notifyListeners();
    }
  }

  //get total price of cart
  double totalCartPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addons addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal + cartItem.quantity;
    }
    return total;
  }

  //get total number of items in cart
  int totalCartItems() {
    int totalItems = 0;
    for (CartItem cartItem in _cart) {
      totalItems += cartItem.quantity;
    }
    return totalItems;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*

  HELPERS


  */

  //Generate a Receipt

  //format double value into money

  //format list of addons into a string summary
}
