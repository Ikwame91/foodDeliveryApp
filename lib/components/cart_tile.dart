import 'package:flutter/material.dart';
import 'package:food_delivery/components/quantity_select.dart';
import 'package:food_delivery/models/cart.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatefulWidget {
  const MyCartTile({super.key, required this.cartItem});
  final CartItem cartItem;

  @override
  State<MyCartTile> createState() => _MyCartTileState();
}

class _MyCartTileState extends State<MyCartTile> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      widget.cartItem.food.imagePath,
                      height: 120,
                      width: 100,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),

                  //name and price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                        },
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxWidth: 120,
                          ),
                          child: Text(
                            widget.cartItem.food.name,
                            overflow: isExpanded ? null : TextOverflow.ellipsis,
                            maxLines: isExpanded ? null : 2,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Text("\$${widget.cartItem.food.price}"),
                    ],
                  ),

                  //decrement or increment quantity
                  QuantitySelector(
                    quantity: widget.cartItem.quantity,
                    food: widget.cartItem.food,
                    onIncrement: () {
                      restaurant.addToCart(
                          widget.cartItem.food, widget.cartItem.selectedAddons);
                    },
                    onDecrement: () {
                      restaurant.removeFromCart(widget.cartItem);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
