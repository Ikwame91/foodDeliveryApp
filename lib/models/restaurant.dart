import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> menu = [
    Food(
      name: "Classico CheeseBurgers",
      description:
          "A Tasty cheese burger made from the remotada of a mixtuer of cow and chicken leaving its audience woith an unforgettable taste",
      imagePath: "lib/images/nurger.pmg",
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
      imagePath: "lib/images/nurger.pmg",
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
      imagePath: "lib/images/nurger.pmg",
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
      imagePath: "lib/images/nurger.pmg",
      price: 9.09,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: 'fried Wings', price: 568),
      ],
    ),
  ];

  /*
Getters

  */

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

  //Gnerate a Receipt

  //format double value into money

  //format list of addons into a string summary
}
