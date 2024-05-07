import 'package:flutter/material.dart';
import 'package:food_delivery/components/custom_container.dart';
import 'package:food_delivery/models/food.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addons, bool> selectedAddons = {};
  FoodPage({
    super.key,
    required this.food,
  }) {
    for (Addons addons in food.availableAddons) {
      selectedAddons[addons] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(
          widget.food.name,
          style: GoogleFonts.leagueGothic(
            fontSize: 40,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //food image
            Image.asset(widget.food.imagePath),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //food name
                  Text(
                    widget.food.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  //food price
                  Text(
                    "\$${widget.food.price}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  //food description
                  Text(
                    widget.food.description,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                  Text(
                    "Add-ons",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  //addons
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                        borderRadius: BorderRadius.circular(12)),
                    child: ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: widget.food.availableAddons.length,
                        itemBuilder: (context, index) {
                          //get individual addon
                          Addons addons = widget.food.availableAddons[index];

                          //return checkbox ui
                          return CheckboxListTile(
                            title: Text(addons.name),
                            subtitle: Text("\$${addons.price.toString()}"),
                            value: widget.selectedAddons[addons],
                            onChanged: (bool? value) {
                              setState(() {
                                widget.selectedAddons[addons] = value!;
                              });
                            },
                          );
                        }),
                  )
                ],
              ),
            ),

            //button=>add to cart
            CustomContainer(
              color: Theme.of(context).colorScheme.inversePrimary,
              onTap: () {},
              text: "Add to cart",
            ),

            const SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
