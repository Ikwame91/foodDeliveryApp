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
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
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
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "\$${widget.cartItem.food.price}",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
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
              ),
            ),
            SizedBox(
              height: widget.cartItem.selectedAddons.isEmpty ? 0 : 60,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding:
                      const EdgeInsets.only(left: 10, bottom: 10, right: 10),
                  children: widget.cartItem.selectedAddons
                      .map(
                        (addon) => Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: FilterChip(
                            label: Row(
                              children: [
                                Text(addon.name),
                                const SizedBox(width: 5),
                                Text(addon.price.toString()),
                              ],
                            ),
                            shape: StadiumBorder(
                                side: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.primary)),
                            onSelected: ((value) {}),
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                            labelStyle: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      )
                      .toList()),
            )
          ],
        ),
      ),
    );
  }
}
