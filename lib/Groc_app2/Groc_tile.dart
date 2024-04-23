import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Groc_tile extends StatelessWidget {
 Groc_tile({Key? key, required this.itemName,
    required this.itemPrice,
    required this.imgpath,
    required this.color,
  required this.onpressed}) : super(key: key);
final String itemName;
final String itemPrice;
final String imgpath;
final color;
void Function()?onpressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color[100],
        ),


          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(imgpath,height: 64,),
              Text(itemName,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),),
              MaterialButton(onPressed: onpressed,
                color:color,
                child: Text('\$ ${itemPrice}',style: TextStyle(fontWeight: FontWeight.bold),),

              ),
            ],
          )),
    );
  }
}
