import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom Freak',
      price: '239',
      description: 'The best when in comes to class and comfort',
      imgPath: 'lib/images/image-2.png',
    ),
    Shoe(
      name: 'Air Force 1',
      price: '196',
      description: 'When in doubt always go with classics',
      imgPath: 'lib/images/image-2.png',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '269',
      description: 'The legacy of Michael Jordan imbued in those sole',
      imgPath: 'lib/images/image-3.png',
    ),
    Shoe(
      name: 'Air Max',
      price: '209',
      description: 'Make you workout extra comforting with these air maxes',
      imgPath: 'lib/images/image-4.png',
    ),
  ];

  // list of items in cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
