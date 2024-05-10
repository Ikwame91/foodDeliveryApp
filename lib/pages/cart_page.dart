import 'package:flutter/material.dart';
import 'package:food_delivery/components/cart_tile.dart';
import 'package:food_delivery/components/custom_container.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({
    super.key,
  });
  // final Food food;

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        final userCart = restaurant.cart;
        return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('Cart'),
              backgroundColor: Colors.transparent,
              foregroundColor: Theme.of(context).colorScheme.inversePrimary,
              actions: [
                //clear cart button
                IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text(
                              "Are you sure you want to clear the cart"),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text("Cancel"),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  restaurant.clearCart();
                                },
                                child: const Text("yes"))
                          ],
                        ),
                      );
                    },
                    icon: const Icon(Icons.delete))
              ],
            ),
            body: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      userCart.isEmpty
                          ? const Center(
                              child: Text('Cart is empty',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            )
                          : Expanded(
                              child: ListView.builder(
                                itemCount: userCart.length,
                                itemBuilder: (context, index) {
                                  final cartItem = userCart[index];
                                  return MyCartTile(cartItem: cartItem);
                                },
                              ),
                            ),
                    ],
                  ),
                ),

                //button to pay
                CustomContainer(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Payment(),
                        ));
                  },
                  text: " Go to checkout",
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ));
      },
    );
  }
}
