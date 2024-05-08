import 'package:flutter/material.dart';
import 'package:food_delivery/components/cart_tile.dart';
import 'package:food_delivery/models/restaurant.dart';
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
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: userCart.length,
                    itemBuilder: (context, index) {
                      final cartItem = userCart[index];
                      return MyCartTile(cartItem: cartItem);
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    restaurant.clearCart();
                  },
                  child: const Text('Clear Cart'),
                ),
              ],
            ));
      },
    );
  }
}
