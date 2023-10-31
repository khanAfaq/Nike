import 'package:flutter/material.dart';
import 'package:nike/model/cart.dart';
import 'package:nike/model/shoe.dart';
import 'package:provider/provider.dart';

import '../components/cart_item.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            const Text(
              'My Cart',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.getShoeList().length,
                itemBuilder: (context, index) {
                  // get indiviual shoe
                  Shoe indiviualShoe = value.getShoeList()[index];
                  // return the cart items
                  return CartItem(
                    shoe: indiviualShoe,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
