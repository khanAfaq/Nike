import 'package:flutter/material.dart';
import 'package:nike/model/shoe.dart';

class Cart extends ChangeNotifier {
  // List of shoe for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: '\$ 236',
      imagePath: 'images/shoe2.png',
      discription:
          'Zoom FREAK complements his unstoppable athleticism with lockdown forefoot support, enhanced traction and impact-protecting Zoom Air cushioning.',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '\$ 250',
      imagePath: 'images/shoe1.png',
      discription:
          'Air Jordan is a line of basketball shoes produced by Nike, Inc. ',
    ),
    Shoe(
      name: 'KD Treys',
      price: '\$ 270',
      imagePath: 'images/shoe3.png',
      discription:
          'With its lightweight upper and plush support system, the KD Trey 5 X can help you float like KD, waiting for the perfect moment to drive to the hoop.',
    ),
  ];
  // List of items in user cart
  List<Shoe> userCart = [];
  // get the list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // add items to user cart
  void addItemTOCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from the cart
  void removeItemToCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
