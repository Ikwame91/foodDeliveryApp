import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classico CheeseBurgers",
      description:
          "A Tasty cheese burger made from the remotada of a mixtuer of cow and chicken leaving its audience woith an unforgettable taste",
      imagePath: "assets/images/burger.png",
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
      imagePath: "assets/images/kfc.png",
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
      imagePath: "assets/images/burger.png",
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
      imagePath: "assets/images/burger.png",
      price: 9.09,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: 'fried Wings', price: 568),
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