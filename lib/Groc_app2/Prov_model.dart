import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class prov_groc extends ChangeNotifier{
  final List _shopItems=[
    ["Avocado","85.00","assests/images/avocado.png",Colors.green],
    ["Banana","44.00","assests/images/banana.png",Colors.yellow],
    ["Water","2.00","assests/images/plastic-bottle.png",Colors.lightBlueAccent],
    ["strawberry","17.00","assests/images/strawberry.png",Colors.redAccent],
  ];
get shopItems =>_shopItems;
List _cartItems=[];
get cartItems=>_cartItems;
void addItemCart(int index){
  _cartItems.add(_shopItems[index]);
  notifyListeners();
}
  void RemoveItem(int index){
    _cartItems.remove(_shopItems[index]);
    notifyListeners();
  }
  String Calc_items(){
      double totalPrice=0;
      for(int i=0;i<_cartItems.length;i++){
        totalPrice+=double.parse(_cartItems[i][1]);

      }
      return totalPrice.toStringAsFixed(2);
  }
}